{lib, ...}: let
  inherit (lib) mkDefault;
in {
  services = {
    nix-daemon.enable = mkDefault true;
    activate-system.enable = mkDefault true;
  };

  nix.configureBuildUsers = mkDefault true;

  documentation = {
    enable = false;
  };

  system.defaults = {
    alf = {
      allowdownloadsignedenabled = 0;
      allowsignedenabled = 1;
      globalstate = 0;
      loggingenabled = 0;
      stealthenabled = 0;
    };

    dock = {
      autohide = false;
      dashboard-in-overlay = false;
      enable-spring-load-actions-on-all-items = true;
      expose-animation-duration = 0.1;
      expose-group-by-app = false;
      launchanim = true;
      mineffect = "genie";
      minimize-to-application = true;
      mouse-over-hilite-stack = true;
      mru-spaces = false;
      orientation = "bottom";
      show-process-indicators = true;
      show-recents = false;
      showhidden = true;
      static-only = false;
      tilesize = 33;
    };

    finder = {
      AppleShowAllExtensions = true;
      CreateDesktop = false;
      FXEnableExtensionChangeWarning = false;
      _FXShowPosixPathInTitle = true;
    };

    LaunchServices.LSQuarantine = false;

    NSGlobalDomain = {
      AppleInterfaceStyleSwitchesAutomatically = false;
      AppleFontSmoothing = 1;
      AppleKeyboardUIMode = 3;
      AppleShowAllExtensions = true;
      AppleShowAllFiles = true;

      InitialKeyRepeat = 13;
      KeyRepeat = 3;

      NSAutomaticCapitalizationEnabled = false;
      NSAutomaticDashSubstitutionEnabled = false;
      NSAutomaticPeriodSubstitutionEnabled = false;
      NSAutomaticQuoteSubstitutionEnabled = true;
      NSAutomaticSpellingCorrectionEnabled = false;

      NSDisableAutomaticTermination = true;
      NSDocumentSaveNewDocumentsToCloud = false;
      NSNavPanelExpandedStateForSaveMode = true;
      NSNavPanelExpandedStateForSaveMode2 = true;
      NSScrollAnimationEnabled = true;
      NSTableViewDefaultSizeMode = 1;
      NSTextShowsControlCharacters = true;

      NSWindowResizeTime = 0.001;
      PMPrintingExpandedStateForPrint = true;
      PMPrintingExpandedStateForPrint2 = true;

      _HIHideMenuBar = mkDefault false;

      "com.apple.keyboard.fnState" = false;
      "com.apple.sound.beep.feedback" = 0;
      "com.apple.springing.delay" = 0.1;
      "com.apple.springing.enabled" = true;
      "com.apple.swipescrolldirection" = false;
      "com.apple.trackpad.enableSecondaryClick" = true;
      "com.apple.trackpad.scaling" = 1.5;
      "com.apple.trackpad.trackpadCornerClickBehavior" = null;
    };

    SoftwareUpdate.AutomaticallyInstallMacOSUpdates = mkDefault true;
  };
}
