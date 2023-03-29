{
  config,
  self,
  pkgs,
  lib,
  ...
}: let
  toINI = lib.generators.toINI {};
  toINI' = lib.generators.toINIWithGlobalSection {};

  c = config.colorscheme.colors;
in {
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

  xdg.dataFile = {
    "fcitx5/themes/darkrose/arrow.png".source = "${self}/assets/arrow.png";
    "fcitx5/themes/darkrose/radio.png".source = "${self}/assets/radio.png";
    "fcitx5/themes/darkrose/theme.conf".text = toINI {
      "Metadata" = {
        Name = "darkrose";
        Version = 1;
        Author = "water-sucks";
        Description = "Low-contrast colorscheme that takes inspiration from rose colors";
        ScaleWithDPI = true;
      };

      InputPanel = {
        Font = "Sans 13";
        NormalColor = "#${c.dark-pink}";
        HighlightCandidateColor = "#${c.red}";
        HighlightColor = "#${c.red}";
        HighlightBackgroundColor = "#${c.dark-purple}";
        Spacing = 3;
      };

      "InputPanel/TextMargin" = {
        Left = 10;
        Right = 10;
        Top = 7;
        Bottom = 7;
      };

      "InputPanel/Background" = {
        Color = "#${c.dark-purple}";
        BorderColor = "#${c.dark-purple}";
        BorderWidth = 1;
      };

      "InputPanel/Background/Margin" = {
        Left = 2;
        Right = 2;
        Top = 2;
        Bottom = 2;
      };

      "InputPanel/Highlight" = {
        Color = "#${c.bg-bright}";
      };

      "InputPanel/Highlight/Margin" = {
        Left = 10;
        Right = 10;
        Top = 7;
        Bottom = 7;
      };

      Menu = {
        Font = "Sans 10";
        NormalColor = "#${c.fg}";
        HighlightColor = "#${c.fg-dark}";
        Spacing = 3;
      };

      "Menu/Background" = {
        Color = "#${c.dark-purple}";
      };

      "Menu/Background/Margin" = {
        Left = 2;
        Right = 2;
        Top = 2;
        Bottom = 2;
      };

      "Menu/ContentMargin" = {
        Left = 2;
        Right = 2;
        Top = 2;
        Bottom = 2;
      };

      "Menu/Highlight" = {
        Color = "#${c.pink}";
      };

      "Menu/HighlightMargin" = {
        Left = 10;
        Right = 10;
        Top = 5;
        Bottom = 5;
      };

      "Menu/Separator" = {
        Color = "#${c.bg-secondary}";
      };

      "Menu/CheckBox" = {
        Color = "radio.png";
      };

      "Menu/SubMenu" = {
        Image = "arrow.png";
      };

      "Menu/TextMargin" = {
        Left = 5;
        Right = 5;
        Top = 5;
        Bottom = 5;
      };
    };
  };

  # Configuring input engines here directly.
  # Kinda cumbersome to use but it is what it is
  xdg.configFile = {
    "fcitx5/conf/xcb.conf".text = "Allow Overriding System XKB Settings=False";
    "fcitx5/config".text = toINI {
      Hotkey = {
        TriggerKeys = "";
        EnumerateWithTriggerKeys = true;
        AltTriggerKeys = "";
        EnumerateForwardKeys = "";
        EnumerateBackwardKeys = "";
        EnumerateSkipFirst = false;
        EnumerateGroupForwardKeys = "";
        EnumerateGroupBackwardKeys = "";
      };
      "Hotkey/ActivateKeys" = {
        "0" = "Control+Alt+space";
      };
      "Hotkey/DeactivateKeys" = {
        "0" = "Control+Alt+space";
      };
    };
    "fcitx5/conf/classicui.conf".text = toINI' {
      globalSection = {
        Font = "IBM Plex Sans JP Text 10";
        MenuFont = "IBM Plex Sans JP Text 10";
        TrayFont = "IBM Plex Sans JP SmBld Demi-Bold 10";
        Theme = "darkrose";
      };
      sections = {};
    };
    "fcitx5/profile".text = toINI {
      "Groups/0" = {
        # Group Name
        "Name" = "Default";
        # Layout
        "Default Layout" = "us";
        # Default Input Method
        DefaultIM = "mozc";
      };

      "Groups/0/Items/0" = {
        # Name
        Name = "keyboard-us";
        # Layout
        Layout = "";
      };

      "Groups/0/Items/1" = {
        # Name
        Name = "mozc";
        # Layout
        Layout = "";
      };

      GroupOrder = {
        "0" = "Default";
      };
    };
  };

  # This is dangerous! It's a lazy workaround to delete files
  # after auto-writes to them from fcitx5's exit routines.
  # Scripts are explicitly not supposed to be called like this
  # according to the Home Manager manual, but I'm doing it it
  # anyway because it's more convenient. Also I'm lazy.
  home.activation = {
    delete-existing-fcitx5-files = lib.hm.dag.entryBefore ["checkLinkTargets"] ''
      rm $VERBOSE_ARG -rf $HOME/.config/fcitx5/* ~/.local/share/fcitx5/*
    '';
  };
}
