{inputs, ...}: {
  perSystem = {
    pkgs,
    system,
    ...
  }: let
    inherit (inputs) nixago;

    nvfetcherConfigs = import ./nixago/nvfetcher.nix {inherit pkgs;};
  in {
    apps.update-nvfetcher-sources = let
      nvfetcher = "${pkgs.nvfetcher}/bin/nvfetcher";
      alejandra = "${pkgs.alejandra}/bin/alejandra";
      prettier = "${pkgs.nodePackages.prettier}/bin/prettier";

      program = pkgs.writeShellScript "update-nvfetcher-sources" ''
        shopt -s globstar

        ${(nixago.lib.${system}.makeAll nvfetcherConfigs).shellHook}

        cd "$(git rev-parse --show-toplevel)"

        while getopts ":k:" opt; do
          case $opt in
            k) keyfile="$OPTARG" ;;
          esac
        done

        for file in **/nvfetcher.toml; do
          cmd="${nvfetcher} -c '$file' -o '$(dirname "$file")/_sources' ''${keyfile+"-k $keyfile"}"

          if ! eval "$cmd"; then
            printf "error: unable to run nvfetcher in %s\n" "$file" >&2
            exit 1
          fi
        done

        echo "Formatting generated files..."

        ${alejandra} -q ./**/_sources/generated.nix
        ${prettier} --loglevel=silent -w ./**/_sources/generated.json
      '';
    in {
      program = "${program}";
    };
  };
}
