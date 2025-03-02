_: {
  homebrew.casks = [
    {
      name = "librewolf";
      args = {
        no_quarantine = true;
      };
    }
    "brave-browser"
    "kitty"
  ];

  homebrew.brews = [
    "fileicon"
  ];
}
