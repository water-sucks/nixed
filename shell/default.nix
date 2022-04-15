{ self, inputs, ... }:

let
  budDevShellModule = bud: { pkgs, self, ... }:
    let
      reboundBud = bud self;
    in
    {
      _file = toString inputs.bud;
      commands = [
        {
          category = "nixed";
          package = reboundBud { inherit pkgs; };
        }
      ];
    };
in
{
  modules = with inputs; [
    # bud.devshellModules.bud
    (budDevShellModule inputs.bud)
  ];

  exportedModules = [
    ./nixed.nix
  ];
}

