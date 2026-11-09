{
  config,
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv.hostPlatform) isLinux;

  piCfg = config.programs.pi-coding-agent;

  c = config.colorscheme.palette;

  jsonFormat = pkgs.formats.json {};

  darkrose = {
    "$schema" = "https://pi.dev/schemas/theme.schema.json";
    name = "darkrose";
    appearance = "dark";
    vars = lib.mapAttrs (_: color: "#${color}") c;
    colors = {
      accent = "dark-pink";
      border = "fg-dark";
      borderAccent = "pink";
      borderMuted = "dark-purple";
      success = "dark-pink";
      error = "light-red";
      warning = "light-orange";
      muted = "gray";
      dim = "fg-dark";
      text = "fg";
      thinkingText = "gray";

      selectedBg = "dark-purple";
      scrollbarTrack = "bg-bright";
      scrollbarThumb = "fg-dark";
      searchMatchBg = "magenta";
      searchMatchText = "fg";

      userMessageBg = "dark-purple";
      userMessageText = "fg";
      customMessageBg = "bg-bright";
      customMessageText = "gray";
      customMessageLabel = "magenta";

      toolPendingBg = "bg-secondary";
      toolSuccessBg = "bg-bright";
      toolErrorBg = "dark-red";
      toolTitle = "fg";
      toolOutput = "gray";

      mdHeading = "red";
      mdLink = "pink";
      mdLinkUrl = "fg-secondary";
      mdCode = "light-pink";
      mdCodeBlock = "gray";
      mdCodeBlockBorder = "fg-dark";
      mdQuote = "orange";
      mdQuoteBorder = "fg-dark";
      mdHr = "fg-dark";
      mdListBullet = "dark-pink";

      toolDiffAdded = "dark-pink";
      toolDiffRemoved = "red";
      toolDiffContext = "fg-dark";

      syntaxComment = "gray";
      syntaxKeyword = "pink";
      syntaxFunction = "dark-pink";
      syntaxVariable = "fg-secondary";
      syntaxString = "red";
      syntaxNumber = "orange";
      syntaxType = "magenta";
      syntaxOperator = "dark-pink";
      syntaxPunctuation = "fg";

      thinkingOff = "fg-dark";
      thinkingMinimal = "gray";
      thinkingLow = "magenta";
      thinkingMedium = "dark-pink";
      thinkingHigh = "pink";
      thinkingXhigh = "light-pink";
      thinkingMax = "light-red";

      bashMode = "orange";
    };
    export = {
      pageBg = "bg";
      cardBg = "bg-secondary";
      infoBg = "dark-purple";
    };
  };
in {
  config = lib.mkMerge [
    {
      programs.pi-coding-agent = {
        enable = true;
        package = pkgs.pi-coding-agent;
        mutableSettings = true;
        extraPackages = [pkgs.nodejs];
        settings = {
          theme = "darkrose";
          packages = [
            "npm:pi-mcp-adapter@7.0.1"
          ];
          extensions = ["-builtin:mcp"];
          defaultTools = ["+codemode"];
        };
      };

      home.file = {
        "${piCfg.configDir}/themes/darkrose.json".source = jsonFormat.generate "pi-darkrose.json" darkrose;
      };
    }
    (lib.mkIf isLinux {
      persistence = {
        directories = [
          ".pi"
        ];
      };
    })
  ];
}
