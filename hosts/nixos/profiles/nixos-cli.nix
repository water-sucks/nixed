_: {
  services.nixos-cli = {
    enable = true;
    config = {
      aliases = [
        {
          alias = "genlist";
          resolve = ["generation" "list"];
        }
        {
          alias = "switch";
          resolve = ["generation" "switch"];
        }
      ];
    };
  };
}
