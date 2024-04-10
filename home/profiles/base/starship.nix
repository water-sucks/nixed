{config, ...}: let
  c = config.colorscheme.palette;
in {
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;

    settings = {
      aws = {
        symbol = " ";
      };
      battery = {
        charging_symbol = "󰂄";
        discharging_symbol = "󰂃";
        full_symbol = "󰁹";
      };
      character = {
        error_symbol = "[](bold #${c.magenta})";
        success_symbol = "[](bold #${c.orange})";
        vimcmd_symbol = "[](bold #${c.red})";
        vimcmd_replace_one_symbol = "[1](bold #${c.red})";
        vimcmd_replace_symbol = "[r](bold #${c.red})";
        vimcmd_visual_symbol = "[󰍉](bold #${c.red})";
      };
      cmd_duration = {
        min_time = 1000;
        show_milliseconds = true;
        style = "#${c.orange}";
      };
      dart = {
        symbol = " ";
      };
      directory = {
        read_only = " ";
        style = "#${c.dark-red}";
      };
      docker_context = {
        symbol = " ";
      };
      elixir = {
        symbol = " ";
      };
      elm = {
        symbol = " ";
      };
      format = builtins.concatStringsSep "" [
        "$username@"
        "$hostname in "
        "$directory"
        "$git_branch"
        "$git_commit"
        "$git_state"
        "$git_status"
        "$hg_branch"
        "$docker_context"
        "$package"
        "$cmake"
        "$dart"
        "$dotnet"
        "$elixir"
        "$elm"
        "$erlang"
        "$golang"
        "$java"
        "$kotlin"
        "$lua"
        "$nim"
        "$ocaml"
        "$php"
        "$python"
        "$ruby"
        "$rust"
        "$scala"
        "$swift"
        "$terraform"
        "$vagrant"
        "$zig"
        "$nix_shell"
        "$memory_usage"
        "$aws"
        "$gcloud"
        "$openstack"
        "$azure"
        "$env_var"
        "$custom"
        "$sudo"
        "$cmd_duration"
        "$time"
        "$battery"
        "$line_break"
        "$jobs"
        "$status"
        "$shell"
        "$character "
      ];
      git_branch = {
        format = "[$symbol$branch]($style) ";
        style = "bold #${c.gray}";
        symbol = " ";
      };
      git_status = {
        ahead = " 󰄾\${count}";
        behind = " 󰄽\${count}";
        conflicted = " ";
        deleted = " ";
        diverged = " 󰘖";
        format = "[\\[$all_status$ahead_behind \\]]($style) ";
        modified = " δ";
        renamed = " ";
        staged = " ";
        stashed = " ";
        style = "bold #${c.fg}";
        untracked = " ";
      };
      golang = {
        symbol = " ";
      };
      hg_branch = {
        symbol = " ";
      };
      hostname = {
        format = "[$hostname]($style)";
        ssh_only = false;
        style = "#${c.magenta}";
      };
      java = {
        symbol = " ";
      };
      lua = {
        symbol = " ";
      };
      memory_usage = {
        disabled = false;
        symbol = "󰍛 ";
      };
      nim = {
        symbol = "󰆥 ";
      };
      nix_shell = {
        format = "[$symbol$state]($style)";
        impure_msg = "λ ";
        # The pure_msg symbol will probably never show up;
        # pure shells likely won't be running starship.
        pure_msg = "Ψ ";
        symbol = " ";
      };
      package = {
        symbol = "󰏗 ";
      };
      php = {
        symbol = " ";
      };
      python = {
        symbol = " ";
      };
      ruby = {
        symbol = " ";
      };
      rust = {
        symbol = " ";
      };
      status = {
        disabled = false;
        format = "[$status]($style) ";
        style = "#${c.magenta}";
      };
      time = {
        disabled = false;
        format = "at \\[[$time]($style)\\]";
        style = "bold #${c.fg-dark}";
        time_format = "%T";
        use_12hr = false;
      };
      username = {
        format = "# [$user]($style)";
        show_always = true;
        style_root = "bold #${c.light-red}";
        style_user = "#${c.light-orange}";
      };
    };
  };
}
