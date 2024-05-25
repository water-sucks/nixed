let
  statixConfig = {
    disabled = ["repeated_keys"];
  };
in {
  data = statixConfig;
  output = "statix.toml";
  format = "toml";
}
