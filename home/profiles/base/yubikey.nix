{pkgs, ...}: {
  home.packages = [
    pkgs.yubikey-personalization
    pkgs.yubikey-manager
  ];

  programs.gpg = {
    scdaemonSettings = {
      disable-ccid = true;
      reader-port = "Yubico Yubi";
    };
  };
}
