{
  self,
  config,
  ...
}: {
  programs.bat = {
    enable = true;
    config = {
      theme = "GitHub";
    };
  };
}
