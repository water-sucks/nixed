{pkgs, ...}: let
  yamlFormat = pkgs.formats.yaml {};
in {
  programs.lsd = {
    enable = true;
    enableAliases = true;
    settings = {
      color = {theme = "custom";};
      icons = {when = "never";};
      total-size = true;
      symlink-arrow = "->";
    };
  };

  home.file.".config/lsd/colors.yaml".source = yamlFormat.generate "colors.yaml" {
    user = "dark_yellow";
    group = "dark_yellow";
    permission = {
      read = "dark_yellow";
      write = "dark_magenta";
      exec = "dark_red";
      exec-sticky = "dark_blue";
      no-access = "red";
      octal = "dark_cyan";
      acl = "dark_cyan";
      context = "dark_cyan";
    };
    date = {
      hour-old = "dark_cyan";
      day-old = "dark_cyan";
      older = "dark_cyan";
    };
    size = {
      none = "dark_green";
      small = "dark_green";
      medium = "dark_green";
      large = "dark_green";
    };
    inode = {
      valid = "dark_magenta";
      invalid = "red";
    };
    links = {
      valid = "dark_blue";
      invalid = "dark_red";
    };
    tree-edge = "dark_cyan";
    git-status = {
      default = "dark_cyan";
      unmodified = "dark_cyan";
      ignored = "dark_cyan";
      new-in-index = "dark_green";
      new-in-workdir = "dark_green";
      typechange = "dark_yellow";
      deleted = "dark_red";
      renamed = "dark_green";
      modified = "dark_yellow";
      conflicted = "dark_red";
    };
  };
}
