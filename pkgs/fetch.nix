{
  waybar-mpris = {
    "src.git" = "https://github.com/b10n/waybar-mpris";
    "fetch.github" = "b10n/waybar-mpris";
  };

  wob = {
    "src.github" = "francma/wob";
    "fetch.github" = "francma/wob";
  };

  rescrobbled = {
    "src.github_tag" = "InputUsername/rescrobbled";
    "fetch.github" = "InputUsername/rescrobbled";
    "cargo_locks" = ["Cargo.lock"];
  };

  airtame = {
    "src.aur" = "airtame-application";
    "fetch.url" = "https://downloads.airtame.com/app/latest/linux/Airtame-$ver.deb";
  };

  polybar = {
    "src.git" = "https://github.com/polybar/polybar";
    "fetch.github" = "polybar/polybar";
    "git.fetchSubmodules" = true;
  };

  get-appname = {
    "src.git" = "https://github.com/water-sucks/get-appname";
    "fetch.github" = "water-sucks/get-appname";
  };

  nsmb-mvl = {
    "src.github" = "ipodtouch0218/NSMB-MarioVsLuigi";
    "fetch.url" = "https://github.com/ipodtouch0218/NSMB-MarioVsLuigi/releases/download/$ver/MarioVsLuigi-Linux-$ver.zip";
  };
}
