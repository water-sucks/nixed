{config, ...}: let
  c = config.colorscheme.palette;
in {
  programs.fzf = {
    enable = true;
    defaultOptions = [
      "--height 69%"
      "--border"
    ];
    defaultCommand = "fd --type f";
    fileWidgetCommand = "fd --type f";
    colors = {
      fg = "#${c.dark-pink}";
      bg = "#${c.bg}";
      hl = "#${c.dark-red}";
      "fg+" = "#${c.pink}";
      "bg+" = "#${c.dark-purple}";
      gutter = "#${c.dark-purple}";
      "hl+" = "#${c.red}";
      info = "#${c.magenta}";
      border = "#${c.dark-purple}";
      prompt = "#${c.fg-secondary}";
      pointer = "#${c.dark-red}";
      marker = "#${c.dark-red}";
      spinner = "#${c.gray}";
      header = "#${c.gray}";
    };
  };
}
