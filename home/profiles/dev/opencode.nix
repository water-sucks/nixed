{lib, ...}: {
  options = {
    # This option will only be enabled on home-manager systems that have
    # access to a local AI engine for now.
    profiles.opencode.enable = lib.mkEnableOption "opencode config profile";
  };

  config = {
    programs.opencode = {
      enable = true;
      tui = {
        theme = "darkrose";
      };
      themes = {
        darkrose = {
          "$schema" = "https://opencode.ai/theme.json";
          defs = {
            bg = "#000000";
            bg_float = "#101010";
            bg_float_bright = "#121212";
            dark_pink = "#B76E79";
            dark_purple = "#281C2B";
            dark_red = "#6D0011";
            fg = "#C9C1C9";
            fg_dark = "#4D5566";
            fg_gutter = "#8A95A2";
            gray = "#8B8B8B";
            light_orange = "#F0883E";
            light_pink = "#F6ACA7";
            light_red = "#F85149";
            magenta = "#8B2950";
            orange = "#A26B35";
            pink = "#FF7979";
            red = "#9E4244";
          };
          theme = {
            accent = "dark_pink";
            background = "bg";
            backgroundElement = "bg_float_bright";
            backgroundPanel = "bg_float";
            border = "fg_dark";
            borderActive = "gray";
            borderSubtle = "dark_purple";
            diffAdded = "pink";
            diffAddedBg = "dark_purple";
            diffAddedLineNumberBg = "dark_purple";
            diffContext = "fg_dark";
            diffContextBg = "bg";
            diffHighlightAdded = "pink";
            diffHighlightRemoved = "dark_red";
            diffHunkHeader = "magenta";
            diffLineNumber = "fg_dark";
            diffRemoved = "dark_red";
            diffRemovedBg = "bg_float";
            diffRemovedLineNumberBg = "bg_float";
            error = "light_red";
            info = "orange";
            markdownBlockQuote = "orange";
            markdownCode = "gray";
            markdownCodeBlock = "gray";
            markdownEmph = "light_pink";
            markdownHeading = "red";
            markdownHorizontalRule = "fg_dark";
            markdownImage = "pink";
            markdownImageText = "fg_gutter";
            markdownLink = "pink";
            markdownLinkText = "fg_gutter";
            markdownListEnumeration = "dark_pink";
            markdownListItem = "dark_pink";
            markdownStrong = "pink";
            markdownText = "fg";
            primary = "pink";
            secondary = "magenta";
            success = "dark_pink";
            syntaxComment = "gray";
            syntaxFunction = "dark_pink";
            syntaxKeyword = "pink";
            syntaxNumber = "orange";
            syntaxOperator = "dark_pink";
            syntaxPunctuation = "fg";
            syntaxString = "red";
            syntaxType = "magenta";
            syntaxVariable = "fg_gutter";
            text = "fg";
            textMuted = "gray";
            warning = "light_orange";
          };
        };
      };
    };
  };
}
