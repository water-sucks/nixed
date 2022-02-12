{ self, config, pkgs, ... }:

{
  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-mozc
      fcitx5-gtk
    ];
  };

  home.sessionVariables = {
    GTK_IM_MODULE = "fcitx";
    QT_IM_MODULE = "fcitx";
    XMODIFIERS = "@im=fcitx";
    SDL_IM_MODULE = "fcitx";
    GLFW_IM_MODULE = "ibus"; # Fcitx5 has an IBus emulation mode, this is for IME in kitty to work.
  };

  xdg.dataFile."fcitx5/themes".source = pkgs.fetchFromGitHub {
    owner = "icy-thought";
    repo = "fcitx5-catppuccin";
    rev = "3b699870fb2806404e305fe34a3d2541d8ed5ef5";
    sha256 = "hOAcjgj6jDWtCGMs4Gd49sAAOsovGXm++TKU3NhZt8w=";
  };

  # Configuring input engines here directly.
  # Kinda cumbersome to use but it is what it is
  xdg.configFile = {
    "fcitx5/conf/xcb.conf".text = "Allow Overriding System XKB Settings=False";
    "fcitx5/config".text = ''
      [Hotkey]
      TriggerKeys=
      EnumerateWithTriggerKeys=True
      AltTriggerKeys=
      EnumerateForwardKeys=
      EnumerateBackwardKeys=
      EnumerateSkipFirst=False
      EnumerateGroupForwardKeys=
      EnumerateGroupBackwardKeys=
      [Hotkey/ActivateKeys]
      0=Control+space
      [Hotkey/DeactivateKeys]
      0=Control+space
    '';
    "fcitx5/conf/classicui.conf".text = ''
      Font="IBM Plex Sans JP Text 10"
      MenuFont="IBM Plex Sans JP Text 10"
      TrayFont="IBM Plex Sans JP SmBld Demi-Bold 10"
      Theme=Catppuccin
    '';
    "fcitx5/profile".text = ''
      [Groups/0]
      # Group Name
      Name=Default
      # Layout
      Default Layout=us
      # Default Input Method
      DefaultIM=mozc

      [Groups/0/Items/0]
      # Name
      Name=keyboard-us
      # Layout
      Layout=

      [Groups/0/Items/1]
      # Name
      Name=mozc
      # Layout
      Layout=

      [GroupOrder]
      0=Default
    '';
  };
}
