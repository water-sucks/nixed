{lib, ...}: {
  programs.exa = {
    enable = true;
    enableAliases = true;
  };

  home.sessionVariables = {
    EXA_COLORS = with lib;
      concatStringsSep ":" (mapAttrsToList (n: v: "${n}=${v}") {
        # User permission bits
        "ur" = "33";
        "uw" = "35";
        "ux" = "1;31";
        "ue" = "1;31"; # +x bit for file types
        # Group permission bits
        "gr" = "33";
        "gw" = "35";
        "gx" = "1;31";
        # Other permission bits
        "tr" = "33";
        "tw" = "35";
        "tx" = "1;31";
        # Special permission bits
        "su" = "34"; # Higher file bits
        "sf" = "34"; # Higher bits for non-files
        "xa" = "1;34"; # Extended attrs
        # Owners/groups
        "uu" = "1;33"; # Owned by current used
        "gu" = "1;33"; # Owned by current group
        "un" = "1;31"; # Not owned by current user
        "gn" = "1;31"; # Not owned by current group
        # Links
        "lc" = "33"; # Number of links
        "lm" = "33"; # Multi-link files
        # File info
        "sn" = "32"; # Size
        "sb" = "32"; # Size unit
        "df" = "1;32"; # Major device node number
        "ds" = "32"; # Minor device node number
        # Git
        "ga" = "34"; # Added
        "gm" = "35"; # Modified
        "gd" = "31"; # Deleted
        "gv" = "35"; # Renamed
        "gt" = "35"; # Type change
        # Metadata
        "xx" = "37"; # Punctuation
        "da" = "36"; # Timestamp
        "in" = "35"; # Inode
        "bl" = "35"; # Filesystem blocks
        "hd" = "4;35"; # Table headers
        "lp" = "34"; # Symlink paths
        "cc" = "31"; # Control characters
      });
  };
}
