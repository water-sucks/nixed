{
  home-manager.sharedModules = [
    {
      programs.home-manager.enable = true;
      manual.json.enable = true;
      news.display = "show";
      home.stateVersion = "21.11";
    }
  ];
}
