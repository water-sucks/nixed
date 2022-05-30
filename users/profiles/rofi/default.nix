{ self, config, pkgs, ... }:

let
  inherit (config.lib.formats.rasi) mkLiteral;
in
{
  programs.rofi = {
    enable = true;
    font = "IBM Plex Mono 11";
    location = "center";
    plugins = with pkgs; [
      rofi-calc
    ];

    terminal = "${pkgs.kitty}/bin/kitty";
    theme = {
      configuration = {
        font = "BlexMono Nerd Font 11";
        fixed-num-lines = true;
        show-icons = false;
        sidebar-mode = false;
        scroll-method = 0;
        window-format = "[{w}] ··· {c} ···   {t}";
        click-to-exit = true;
        combi-hide-mode-prefix = true;
        display-window = "";
        display-windowcd = "";
        display-run = "";
        display-ssh = "";
        display-drun = "";
        display-calc = "";
        display-combi = "";
      };

      "*" = {
        background-color = mkLiteral "@bg";
        al = mkLiteral "#00000000";
        bg = mkLiteral "#101010ff";
        se = mkLiteral "#151515ff";
        fg = mkLiteral "#f5f5f5ff";
        ac = mkLiteral "#42A5F5ff";
        red = mkLiteral "#EC7875ff";
        green = mkLiteral "#61C766ff";
        yellow = mkLiteral "#FDD835ff";
        blue = mkLiteral "#42A5F5ff";
        purple = mkLiteral "#BA68C8ff";
        cyan = mkLiteral "#4DD0E1ff";
      };

      window = {
        border = mkLiteral "0px";
        border-color = mkLiteral "@ac";
        border-radius = mkLiteral "0px";
        padding = mkLiteral "69px";
        width = mkLiteral "33%";
        height = mkLiteral "55%";
      };

      prompt = {
        spacing = 0;
        border = 0;
        text-color = mkLiteral "@fg";
      };

      textbox-prompt-colon = {
        expand = false;
        str = "  ";
        margin = mkLiteral "0px 4px 0px 0px";
        text-color = mkLiteral "inherit";
      };

      entry = {
        spacing = 0;
        text-color = mkLiteral "@fg";
      };

      case-indicator = {
        spacing = 0;
        text-color = mkLiteral "@fg";
      };

      inputbar = {
        spacing = mkLiteral "0px";
        text-color = mkLiteral "@fg";
        padding = mkLiteral "1px";
        children = map mkLiteral [ "prompt" "textbox-prompt-colon" "entry" "case-indicator" ];
      };

      mainbox = {
        border = mkLiteral "0px";
        border-color = mkLiteral "@ac";
        padding = 6;
      };

      listview = {
        lines = 5;
        columns = 1;
        fixed-height = 0;
        border = mkLiteral "0px";
        border-color = mkLiteral "@ac";
        spacing = mkLiteral "5px";
        scrollbar = false;
        padding = mkLiteral "25px 5px -20px 5px";
      };

      element-text = {
        background-color = mkLiteral "#00000000";
        text-color = mkLiteral "inherit";
      };

      element-icon = {
        background-color = mkLiteral "#00000000";
        text-color = mkLiteral "inherit";
      };

      element = {
        border = mkLiteral "4px";
        border-radius = mkLiteral "4px";
        padding = mkLiteral "15px";
      };

      "element normal.normal" = {
        background-color = mkLiteral "@bg";
        text-color = mkLiteral "@fg";
      };

      "element normal.urgent" = {
        background-color = mkLiteral "@bg";
        text-color = mkLiteral "@red";
      };

      "element normal.active" = {
        background-color = mkLiteral "@bg";
        text-color = mkLiteral "@fg";
        border-color = mkLiteral "@green";
      };

      "element selected.normal" = {
        background-color = mkLiteral "@bg";
        text-color = mkLiteral "@fg";
        border-color = mkLiteral "@fg";
      };

      "element selected.urgent" = {
        background-color = mkLiteral "@bg";
        text-color = mkLiteral "@red";
      };

      "element selected.active" = {
        background-color = mkLiteral "@bg";
        text-color = mkLiteral "@fg";
        border-color = mkLiteral "@fg";
      };

      "element alternate.normal" = {
        background-color = mkLiteral "@bg";
        text-color = mkLiteral "@fg";
      };

      "element alternate.urgent" = {
        background-color = mkLiteral "@bg";
        text-color = mkLiteral "@fg";
      };

      "element alternate.active" = {
        background-color = mkLiteral "@bg";
        text-color = mkLiteral "@fg";
      };

      button = {
        horizontal-align = mkLiteral "0.5";
        vertical-align = mkLiteral "0.5";
        background-color = mkLiteral "@se";
        margin = mkLiteral "5px";
        padding = mkLiteral "15px";
        text-color = mkLiteral "@fg";
        border = mkLiteral "0px";
        border-radius = mkLiteral "4px";
        border-color = mkLiteral "@fg";
      };

      "button selected" = {
        background-color = mkLiteral "@bg";
        text-color = mkLiteral "@fg";
        border = mkLiteral "4px";
        border-radius = mkLiteral "4px";
        border-color = mkLiteral "@fg";
      };

      scrollbar = {
        width = mkLiteral "4px";
        border = mkLiteral "0px";
        handle-color = mkLiteral "@fg";
        handle-width = mkLiteral "8px";
        padding = 0;
      };

      message = {
        border = mkLiteral "0px";
        border-color = mkLiteral "@ac";
        padding = mkLiteral "1px";
      };

      textbox = {
        text-color = mkLiteral "@fg";
        vertical-align = mkLiteral "0.5";
        horizontal-align = 0;
      };
    };
  };
}
