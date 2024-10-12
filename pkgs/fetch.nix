{
  rescrobbled = {
    "src.github_tag" = "InputUsername/rescrobbled";
    "fetch.github" = "InputUsername/rescrobbled";
    "cargo_locks" = ["Cargo.lock"];
  };

  airtame = {
    "src.aur" = "airtame-application";
    "fetch.url" = "https://downloads.airtame.com/app/latest/linux/Airtame-$ver.deb";
  };

  get-appname = {
    "src.git" = "https://github.com/water-sucks/get-appname";
    "fetch.github" = "water-sucks/get-appname";
  };

  nsmb-mvl = {
    "src.github" = "ipodtouch0218/NSMB-MarioVsLuigi";
    "fetch.url" = "https://github.com/ipodtouch0218/NSMB-MarioVsLuigi/releases/download/$ver/MarioVsLuigi-Linux-$ver.zip";
  };

  java-debug = {
    "src.github" = "microsoft/java-debug";
    "fetch.github" = "microsoft/java-debug";
  };
}
