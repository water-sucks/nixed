{
  config,
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.persistence."/persist/home/${config.home.username}" = {
    directories = [
      ".android"
    ];
  };

  home.packages = with pkgs; [
    android-studio
  ];

  android-sdk = {
    enable = true;
    packages = sdk:
      with sdk; [
        cmdline-tools-latest
        platform-tools
        emulator
        tools
        ndk-23-1-7779620

        build-tools-30-0-3
        build-tools-33-0-0
        platforms-android-33
        cmake-3-22-1

        build-tools-34-0-0
        platforms-android-34
        system-images-android-34-google-apis-x86-64
        system-images-android-34-google-apis-playstore-x86-64
      ];
  };
}
