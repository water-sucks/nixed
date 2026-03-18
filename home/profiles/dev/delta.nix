{
  config,
  lib,
  ...
}: let
  c = config.colorscheme.palette;

  neutral = "#${c.gray}";
  orange = "#${c.orange}";
  add_fg = "#${c.dark-pink}";
  minus_fg = "#${c.dark-red}";
  add_bg = "#${c.dark-purple}";
  minus_bg = "#${c.bg-bright}";

  batTheme = config.programs.bat.config.theme or "";
in {
  programs.delta = {
    enable = true;
    enableGitIntegration = true;
    options = {
      syntax-theme = lib.mkIf (batTheme != "") batTheme;

      file-style = "${orange}";
      file-decoration-style = "${orange} box";

      hunk-header-decoration-style = neutral;
      hunk-header-file-style = neutral;
      hunk-header-style = neutral;

      line-numbers = true;
      line-numbers-left-style = neutral;
      line-numbers-right-style = neutral;
      line-numbers-left-format = "{nm:>2}|";
      line-numbers-right-format = "{np:>3} ";
      line-numbers-plus-style = add_fg;
      line-numbers-minus-style = minus_fg;

      plus-style = "${add_fg} ${add_bg}";
      plus-emph-style = "${add_fg} bold ${add_bg}";
      plus-non-emph-style = "${add_fg} ${add_bg}";

      minus-style = "${minus_fg} ${minus_bg}";
      minus-emph-style = "${minus_fg} bold ${minus_bg}";
      minus-non-emph-style = "${minus_fg} ${minus_bg}";

      blame-code-style = "omit";
      blame-format = "{author:<18} {commit:<6} {timestamp:<15}";
      zero-style = "dim";
    };
  };
}
