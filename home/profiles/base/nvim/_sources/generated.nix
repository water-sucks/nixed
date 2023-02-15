# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  "'plugin-Comment.nvim'" = {
    pname = "'plugin-Comment.nvim'";
    version = "418d3117dab2f54c4340ea73e0070dd78fc81753";
    src = fetchFromGitHub {
      owner = "numToStr";
      repo = "Comment.nvim";
      rev = "418d3117dab2f54c4340ea73e0070dd78fc81753";
      fetchSubmodules = false;
      sha256 = "sha256-LVDGoYr9uAoCIZhJstUWp6uTqtaoG/evEXhQyDqRs2I=";
    };
    date = "2023-02-13";
  };
  "'plugin-FTerm.nvim'" = {
    pname = "'plugin-FTerm.nvim'";
    version = "d1320892cc2ebab472935242d9d992a2c9570180";
    src = fetchFromGitHub {
      owner = "numToStr";
      repo = "FTerm.nvim";
      rev = "d1320892cc2ebab472935242d9d992a2c9570180";
      fetchSubmodules = false;
      sha256 = "sha256-fCtAs6qsvWOYRp2Z1AwQa2ByUZcUCMKfuYBoNTP7EeY=";
    };
    date = "2022-11-13";
  };
  "'plugin-LuaSnip'" = {
    pname = "'plugin-LuaSnip'";
    version = "58fbfc627a93281a77f7d161d4ff702e639677b1";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "58fbfc627a93281a77f7d161d4ff702e639677b1";
      fetchSubmodules = false;
      sha256 = "sha256-2TIUb+txuFrzjX5fTPHC1VjA2STRaj6fsAwKfwdLc04=";
    };
    date = "2023-02-11";
  };
  "'plugin-auto-save.nvim'" = {
    pname = "'plugin-auto-save.nvim'";
    version = "979b6c82f60cfa80f4cf437d77446d0ded0addf0";
    src = fetchFromGitHub {
      owner = "Pocco81";
      repo = "auto-save.nvim";
      rev = "979b6c82f60cfa80f4cf437d77446d0ded0addf0";
      fetchSubmodules = false;
      sha256 = "sha256-bWGil73YiCKZEaY7IuUOIU4Q7k7qCMjSeQ4I+cAVe44=";
    };
    date = "2022-11-01";
  };
  "'plugin-bufferline.nvim'" = {
    pname = "'plugin-bufferline.nvim'";
    version = "84b0822b2af478d0b4f7b0f9249ca218855331db";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "84b0822b2af478d0b4f7b0f9249ca218855331db";
      fetchSubmodules = false;
      sha256 = "sha256-3LT45i0eSMfUV9EBrtdtzHxFKRATIhRy/faDd3lI3mA=";
    };
    date = "2023-02-11";
  };
  "'plugin-cmp-buffer'" = {
    pname = "'plugin-cmp-buffer'";
    version = "3022dbc9166796b644a841a02de8dd1cc1d311fa";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-buffer";
      rev = "3022dbc9166796b644a841a02de8dd1cc1d311fa";
      fetchSubmodules = false;
      sha256 = "sha256-dG4U7MtnXThoa/PD+qFtCt76MQ14V1wX8GMYcvxEnbM=";
    };
    date = "2022-08-10";
  };
  "'plugin-cmp-calc'" = {
    pname = "'plugin-cmp-calc'";
    version = "50792f34a628ea6eb31d2c90e8df174671e4e7a0";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-calc";
      rev = "50792f34a628ea6eb31d2c90e8df174671e4e7a0";
      fetchSubmodules = false;
      sha256 = "sha256-GqTY4/Puk4pikjeyyMcJ8wzgb1IC7Cf4gcXx/XXmgP4=";
    };
    date = "2022-11-16";
  };
  "'plugin-cmp-cmdline'" = {
    pname = "'plugin-cmp-cmdline'";
    version = "23c51b2a3c00f6abc4e922dbd7c3b9aca6992063";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-cmdline";
      rev = "23c51b2a3c00f6abc4e922dbd7c3b9aca6992063";
      fetchSubmodules = false;
      sha256 = "sha256-hzLiqPMU0tDQ4MTwKxvb3gY2JdD5KwqltGYckuSOzm0=";
    };
    date = "2022-11-27";
  };
  "'plugin-cmp-dap'" = {
    pname = "'plugin-cmp-dap'";
    version = "d16f14a210cd28988b97ca8339d504533b7e09a4";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "cmp-dap";
      rev = "d16f14a210cd28988b97ca8339d504533b7e09a4";
      fetchSubmodules = false;
      sha256 = "sha256-w+gGaZxXjb2B0dMXhfduEQKtO5CmQnuUdh4otpcsFuc=";
    };
    date = "2022-11-13";
  };
  "'plugin-cmp-nvim-lsp'" = {
    pname = "'plugin-cmp-nvim-lsp'";
    version = "0e6b2ed705ddcff9738ec4ea838141654f12eeef";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-nvim-lsp";
      rev = "0e6b2ed705ddcff9738ec4ea838141654f12eeef";
      fetchSubmodules = false;
      sha256 = "sha256-DxpcPTBlvVP88PDoTheLV2fC76EXDqS2UpM5mAfj/D4=";
    };
    date = "2023-02-07";
  };
  "'plugin-cmp-omni'" = {
    pname = "'plugin-cmp-omni'";
    version = "8457e4144ea2fc5efbadb7d22250d5ee8f8862ba";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-omni";
      rev = "8457e4144ea2fc5efbadb7d22250d5ee8f8862ba";
      fetchSubmodules = false;
      sha256 = "sha256-WXW9DPogGNqdhF3tAlztdl+1ct6spWQbNztbIxZyGAc=";
    };
    date = "2022-11-17";
  };
  "'plugin-cmp-path'" = {
    pname = "'plugin-cmp-path'";
    version = "91ff86cd9c29299a64f968ebb45846c485725f23";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-path";
      rev = "91ff86cd9c29299a64f968ebb45846c485725f23";
      fetchSubmodules = false;
      sha256 = "sha256-thppiiV3wjIaZnAXmsh7j3DUc6ceSCvGzviwFUnoPaI=";
    };
    date = "2022-10-03";
  };
  "'plugin-cmp_luasnip'" = {
    pname = "'plugin-cmp_luasnip'";
    version = "18095520391186d634a0045dacaa346291096566";
    src = fetchFromGitHub {
      owner = "saadparwaiz1";
      repo = "cmp_luasnip";
      rev = "18095520391186d634a0045dacaa346291096566";
      fetchSubmodules = false;
      sha256 = "sha256-Z5SPy3j2oHFxJ7bK8DP8Q/oRyLEMlnWyIfDaQcNVIS0=";
    };
    date = "2022-10-28";
  };
  "'plugin-colorful-winsep.nvim'" = {
    pname = "'plugin-colorful-winsep.nvim'";
    version = "956d65c9a31ce81b7873bef1682c72eb00d9affb";
    src = fetchFromGitHub {
      owner = "nvim-zh";
      repo = "colorful-winsep.nvim";
      rev = "956d65c9a31ce81b7873bef1682c72eb00d9affb";
      fetchSubmodules = false;
      sha256 = "sha256-4HfqR7z2NOc2HwayIYUBs2MIf+LvWYJGAc18xvLWAPo=";
    };
    date = "2023-01-14";
  };
  "'plugin-darkrose.nvim'" = {
    pname = "'plugin-darkrose.nvim'";
    version = "79f9eb5e76232b58b58b2dc9c051c6ace5c24339";
    src = fetchFromGitHub {
      owner = "water-sucks";
      repo = "darkrose.nvim";
      rev = "79f9eb5e76232b58b58b2dc9c051c6ace5c24339";
      fetchSubmodules = false;
      sha256 = "sha256-RIaDc8Sr3M/9JHhB+LVEgW6Cuke5/HVN59LZuZwGo5w=";
    };
    date = "2023-02-13";
  };
  "'plugin-dial.nvim'" = {
    pname = "'plugin-dial.nvim'";
    version = "5020da900cc5dfd7067f181ee2ebd872ca7c84e8";
    src = fetchFromGitHub {
      owner = "monaqa";
      repo = "dial.nvim";
      rev = "5020da900cc5dfd7067f181ee2ebd872ca7c84e8";
      fetchSubmodules = false;
      sha256 = "sha256-/gqGgYSc4Z/svmKSTG0DOy028YfSCyGiAmYXbCwXrWM=";
    };
    date = "2023-01-27";
  };
  "'plugin-diffview.nvim'" = {
    pname = "'plugin-diffview.nvim'";
    version = "11827d46e939b4748dbdb7e0df4982a63bd59d26";
    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "11827d46e939b4748dbdb7e0df4982a63bd59d26";
      fetchSubmodules = false;
      sha256 = "sha256-B3MkC24F+c4+cM0vGm2HZBnA+CuoZTDEZ0d5oNAuNIA=";
    };
    date = "2023-02-06";
  };
  "'plugin-dressing.nvim'" = {
    pname = "'plugin-dressing.nvim'";
    version = "db716a0f1279f79a886c0e0b6ab3c3d5ffdb42fe";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "db716a0f1279f79a886c0e0b6ab3c3d5ffdb42fe";
      fetchSubmodules = false;
      sha256 = "sha256-tBO21/0rpil2lItFl9UzALXNJbvmSfQuW+LOGet9YgI=";
    };
    date = "2023-02-05";
  };
  "'plugin-duck.nvim'" = {
    pname = "'plugin-duck.nvim'";
    version = "b1a3b4e52eec886bf4ce5ed692a2162d504d9632";
    src = fetchFromGitHub {
      owner = "tamton-aquib";
      repo = "duck.nvim";
      rev = "b1a3b4e52eec886bf4ce5ed692a2162d504d9632";
      fetchSubmodules = false;
      sha256 = "sha256-H+Ufqb3a6Re4eo/ByYmwrzfmHTAU8irZzF/WcoJOjDI=";
    };
    date = "2022-11-30";
  };
  "'plugin-editorconfig.nvim'" = {
    pname = "'plugin-editorconfig.nvim'";
    version = "5b9e303e1d6f7abfe616ce4cc8d3fffc554790bf";
    src = fetchFromGitHub {
      owner = "gpanders";
      repo = "editorconfig.nvim";
      rev = "5b9e303e1d6f7abfe616ce4cc8d3fffc554790bf";
      fetchSubmodules = false;
      sha256 = "sha256-pR57tITdVGF4luEmmRYv/XFb35E3KDfcgYRijkPAc+Y=";
    };
    date = "2023-01-10";
  };
  "'plugin-flutter-tools.nvim'" = {
    pname = "'plugin-flutter-tools.nvim'";
    version = "d67caa7dd17eccb89bfda1c0657d0723e339ef60";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "flutter-tools.nvim";
      rev = "d67caa7dd17eccb89bfda1c0657d0723e339ef60";
      fetchSubmodules = false;
      sha256 = "sha256-LExepkD8K1rkD8Nd7A+97iVOH6o1U+1Mh2dnoNQ09OU=";
    };
    date = "2023-02-05";
  };
  "'plugin-friendly-snippets'" = {
    pname = "'plugin-friendly-snippets'";
    version = "1645e7cd98ed99e766c84ab3cf13a1612c77dcee";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "1645e7cd98ed99e766c84ab3cf13a1612c77dcee";
      fetchSubmodules = false;
      sha256 = "sha256-RKnFh2fa9Y1KXqiLKtj27faqyNkv6DB0BzI7u8+e+48=";
    };
    date = "2023-02-12";
  };
  "'plugin-gitsigns.nvim'" = {
    pname = "'plugin-gitsigns.nvim'";
    version = "5f1451ea7d9a9005b3f0bedeab20cef7a4c65993";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "5f1451ea7d9a9005b3f0bedeab20cef7a4c65993";
      fetchSubmodules = false;
      sha256 = "sha256-a5WZ6MCyHY7ueZo4JD0X9KmbxLNhJbpms7wlE0FZqvQ=";
    };
    date = "2023-02-15";
  };
  "'plugin-guess-indent.nvim'" = {
    pname = "'plugin-guess-indent.nvim'";
    version = "c37467baa1a51b74ed767cbe0540fce44e03d828";
    src = fetchFromGitHub {
      owner = "NMAC427";
      repo = "guess-indent.nvim";
      rev = "c37467baa1a51b74ed767cbe0540fce44e03d828";
      fetchSubmodules = false;
      sha256 = "sha256-K+9gW3SIYHKtJkSvbHeT1frFGHk9zNP0oc8nrHRPy4U=";
    };
    date = "2022-07-17";
  };
  "'plugin-haskell-tools.nvim'" = {
    pname = "'plugin-haskell-tools.nvim'";
    version = "9af20e99b32a4697946a1288e0c393d69e453581";
    src = fetchFromGitHub {
      owner = "MrcJkb";
      repo = "haskell-tools.nvim";
      rev = "9af20e99b32a4697946a1288e0c393d69e453581";
      fetchSubmodules = false;
      sha256 = "sha256-875MQKH6EpYNKXHxgRObBzPaH66U/rfL038TW6XuNZ0=";
    };
    date = "2023-02-12";
  };
  "'plugin-highlight-current-n.nvim'" = {
    pname = "'plugin-highlight-current-n.nvim'";
    version = "bac803d821d06d5f1e58b31af1cf2e5f9a5fb4ad";
    src = fetchFromGitHub {
      owner = "rktjmp";
      repo = "highlight-current-n.nvim";
      rev = "bac803d821d06d5f1e58b31af1cf2e5f9a5fb4ad";
      fetchSubmodules = false;
      sha256 = "sha256-XE9tpjxU20Lhyp5rOsudLcpRkRHzY/d/FNbn02afXdQ=";
    };
    date = "2022-12-03";
  };
  "'plugin-indent-blankline.nvim'" = {
    pname = "'plugin-indent-blankline.nvim'";
    version = "8299fe7703dfff4b1752aeed271c3b95281a952d";
    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "indent-blankline.nvim";
      rev = "8299fe7703dfff4b1752aeed271c3b95281a952d";
      fetchSubmodules = false;
      sha256 = "sha256-EZ5h4Gj942L9MaykWAprjLb/ZYr2JptQi16Ym5SyWfw=";
    };
    date = "2023-01-26";
  };
  "'plugin-lazy.nvim'" = {
    pname = "'plugin-lazy.nvim'";
    version = "c249ea376bcd3e5d121b79eac595837b7d0c73a4";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "c249ea376bcd3e5d121b79eac595837b7d0c73a4";
      fetchSubmodules = false;
      sha256 = "sha256-9K6WHKdKXuozhx6Jha1a0ytkTt7disxoKXjNWuWLUiY=";
    };
    date = "2023-02-14";
  };
  "'plugin-leap.nvim'" = {
    pname = "'plugin-leap.nvim'";
    version = "a2e57b7f8cfd01bb8bfb5abadf5e99acb9559700";
    src = fetchFromGitHub {
      owner = "ggandor";
      repo = "leap.nvim";
      rev = "a2e57b7f8cfd01bb8bfb5abadf5e99acb9559700";
      fetchSubmodules = false;
      sha256 = "sha256-Yr41nen4lXaTn5B5KR7dxqW5XvPJWUIuStZSpc+xWRM=";
    };
    date = "2023-02-14";
  };
  "'plugin-lsp_signature.nvim'" = {
    pname = "'plugin-lsp_signature.nvim'";
    version = "6f6252f63b0baf0f2224c4caea33819a27f3f550";
    src = fetchFromGitHub {
      owner = "ray-x";
      repo = "lsp_signature.nvim";
      rev = "6f6252f63b0baf0f2224c4caea33819a27f3f550";
      fetchSubmodules = false;
      sha256 = "sha256-g5bAumjFvA0MBPNKWqOxk5OsaR4KEe5CEsiNN5YbIQU=";
    };
    date = "2023-02-03";
  };
  "'plugin-lspkind-nvim'" = {
    pname = "'plugin-lspkind-nvim'";
    version = "c68b3a003483cf382428a43035079f78474cd11e";
    src = fetchFromGitHub {
      owner = "onsails";
      repo = "lspkind-nvim";
      rev = "c68b3a003483cf382428a43035079f78474cd11e";
      fetchSubmodules = false;
      sha256 = "sha256-WwUQ+O2rIfD4yl0GFx70GsZc9nnhS7b2KWfNdaXCLmM=";
    };
    date = "2022-09-22";
  };
  "'plugin-ltex_extra.nvim'" = {
    pname = "'plugin-ltex_extra.nvim'";
    version = "1d2f288ceedc70d5a9c00f55c0d0cc788b5164f2";
    src = fetchFromGitHub {
      owner = "barreiroleo";
      repo = "ltex_extra.nvim";
      rev = "1d2f288ceedc70d5a9c00f55c0d0cc788b5164f2";
      fetchSubmodules = false;
      sha256 = "sha256-2knrqgDTSxT4ZGjZvO7RbFdvrVmTWOLS3OoGPfy4du4=";
    };
    date = "2023-01-29";
  };
  "'plugin-lualine.nvim'" = {
    pname = "'plugin-lualine.nvim'";
    version = "e99d733e0213ceb8f548ae6551b04ae32e590c80";
    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "e99d733e0213ceb8f548ae6551b04ae32e590c80";
      fetchSubmodules = false;
      sha256 = "sha256-mItWWRqWj9a/JaW8sccnGBijBsvvnh/b4q/S60UwYwc=";
    };
    date = "2023-02-14";
  };
  "'plugin-luasnip-latex-snippets.nvim'" = {
    pname = "'plugin-luasnip-latex-snippets.nvim'";
    version = "d0b9f4f53ed1d3ac3c9ca7abd86d9f55431566aa";
    src = fetchFromGitHub {
      owner = "iurimateus";
      repo = "luasnip-latex-snippets.nvim";
      rev = "d0b9f4f53ed1d3ac3c9ca7abd86d9f55431566aa";
      fetchSubmodules = false;
      sha256 = "sha256-cbFdcXb/7tCDUXT3ynscKgTWyfXv1flEWtc7tev3bMo=";
    };
    date = "2023-01-01";
  };
  "'plugin-lush.nvim'" = {
    pname = "'plugin-lush.nvim'";
    version = "b1e8eb1da3fee95ef31515a73c9eff9bf251088d";
    src = fetchFromGitHub {
      owner = "rktjmp";
      repo = "lush.nvim";
      rev = "b1e8eb1da3fee95ef31515a73c9eff9bf251088d";
      fetchSubmodules = false;
      sha256 = "sha256-+M5tPNuL8OtkIZcB3+5+snygocWPhnXoZzen6gjOd2A=";
    };
    date = "2023-01-03";
  };
  "'plugin-mini.surround'" = {
    pname = "'plugin-mini.surround'";
    version = "6a4f31e2a380439315729f561d7e7898bde1fd52";
    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "6a4f31e2a380439315729f561d7e7898bde1fd52";
      fetchSubmodules = false;
      sha256 = "sha256-n26O0x7p2Xm+fYCHjOqqYV5SzGEt0e2pfa/qd/1cSnY=";
    };
    date = "2023-02-11";
  };
  "'plugin-neodev.nvim'" = {
    pname = "'plugin-neodev.nvim'";
    version = "a81e749d0fe8429cd340b2e40f274b344bef42ac";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "a81e749d0fe8429cd340b2e40f274b344bef42ac";
      fetchSubmodules = false;
      sha256 = "sha256-sWySidDru9aWMiYg7Js0iBte3qN5XI3dEvAR41c4a0w=";
    };
    date = "2023-02-13";
  };
  "'plugin-neorg'" = {
    pname = "'plugin-neorg'";
    version = "9766bef893ec993af9408ea0d44a8f13adbd1e80";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "9766bef893ec993af9408ea0d44a8f13adbd1e80";
      fetchSubmodules = false;
      sha256 = "sha256-WGi6mUbbrZKzDlgb+su5dcRCSqksBTKlsPjxFH7wUXI=";
    };
    date = "2023-02-11";
  };
  "'plugin-neorg-telescope'" = {
    pname = "'plugin-neorg-telescope'";
    version = "0aff25f4ead5d4dc6477dbfecc2de5baed68118d";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg-telescope";
      rev = "0aff25f4ead5d4dc6477dbfecc2de5baed68118d";
      fetchSubmodules = false;
      sha256 = "sha256-MTqOwkPhpvD2jinPhXWWeS6B5Rt6Wg9jFNCj7aqVgxY=";
    };
    date = "2023-02-13";
  };
  "'plugin-null-ls.nvim'" = {
    pname = "'plugin-null-ls.nvim'";
    version = "2d89e1a38e3bdebd43984c23c861c33c0e36bd7a";
    src = fetchFromGitHub {
      owner = "jose-elias-alvarez";
      repo = "null-ls.nvim";
      rev = "2d89e1a38e3bdebd43984c23c861c33c0e36bd7a";
      fetchSubmodules = false;
      sha256 = "sha256-7woxEeTSVDmCKW0s+Z4mgwxunLdK5tkMoZqQw/devnU=";
    };
    date = "2023-02-14";
  };
  "'plugin-nvim-autopairs'" = {
    pname = "'plugin-nvim-autopairs'";
    version = "45ae3122a4c7744db41298b41f9f5a3f092123e6";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "45ae3122a4c7744db41298b41f9f5a3f092123e6";
      fetchSubmodules = false;
      sha256 = "sha256-MJu1rrUaiwZ/qu0Lv4leGSiPq4TzyhHoRw48C+r3+Zs=";
    };
    date = "2023-02-08";
  };
  "'plugin-nvim-cmp'" = {
    pname = "'plugin-nvim-cmp'";
    version = "c4128bcd131fb7152bda8f8dd2b5e41d2fefa88c";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "c4128bcd131fb7152bda8f8dd2b5e41d2fefa88c";
      fetchSubmodules = false;
      sha256 = "sha256-yFTHFveMEki4Y7Q/wdxfZVGFT4ZbcIyffkknjJtHn+w=";
    };
    date = "2023-02-15";
  };
  "'plugin-nvim-colorizer.lua'" = {
    pname = "'plugin-nvim-colorizer.lua'";
    version = "760e27df4dd966607e8fb7fd8b6b93e3c7d2e193";
    src = fetchFromGitHub {
      owner = "NvChad";
      repo = "nvim-colorizer.lua";
      rev = "760e27df4dd966607e8fb7fd8b6b93e3c7d2e193";
      fetchSubmodules = false;
      sha256 = "sha256-toNEfgZn2RNwyjI5FOyRU9Bdu6jFDZbSb1SjiY9sHH8=";
    };
    date = "2022-10-29";
  };
  "'plugin-nvim-dap'" = {
    pname = "'plugin-nvim-dap'";
    version = "401f5f22b2d7f9bdbb9294d0235136091458816a";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap";
      rev = "401f5f22b2d7f9bdbb9294d0235136091458816a";
      fetchSubmodules = false;
      sha256 = "sha256-vxZYHvClEnAT9N/TsazPeyoKPju6kAqoy7Jt7fbx2yA=";
    };
    date = "2023-02-10";
  };
  "'plugin-nvim-dap-go'" = {
    pname = "'plugin-nvim-dap-go'";
    version = "b4ded7de579b4e2a85c203388233b54bf1028816";
    src = fetchFromGitHub {
      owner = "leoluz";
      repo = "nvim-dap-go";
      rev = "b4ded7de579b4e2a85c203388233b54bf1028816";
      fetchSubmodules = false;
      sha256 = "sha256-qW+EGDX0VOAp+gLbwTJNvX9gJCKxRCMDI2z/J4gFHKE=";
    };
    date = "2023-02-07";
  };
  "'plugin-nvim-dap-python'" = {
    pname = "'plugin-nvim-dap-python'";
    version = "d4400d075c21ed8fb8e8ac6a5ff56f58f6e93531";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap-python";
      rev = "d4400d075c21ed8fb8e8ac6a5ff56f58f6e93531";
      fetchSubmodules = false;
      sha256 = "sha256-oAZR0cKY7RmIy3tNWA2d5CdBxi3NHBSBeYO9U3bukL4=";
    };
    date = "2022-12-18";
  };
  "'plugin-nvim-dap-ui'" = {
    pname = "'plugin-nvim-dap-ui'";
    version = "110193102b4840be8bda6eb2358367026145ae3a";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-dap-ui";
      rev = "110193102b4840be8bda6eb2358367026145ae3a";
      fetchSubmodules = false;
      sha256 = "sha256-ccCxjG+csGHIixmXb7Q4qV89RdPowXJdB1fbyG8scqg=";
    };
    date = "2023-02-14";
  };
  "'plugin-nvim-dap-virtual-text'" = {
    pname = "'plugin-nvim-dap-virtual-text'";
    version = "8db23ea51203b5f00ad107a0cef7e0b2d7a0476c";
    src = fetchFromGitHub {
      owner = "theHamsta";
      repo = "nvim-dap-virtual-text";
      rev = "8db23ea51203b5f00ad107a0cef7e0b2d7a0476c";
      fetchSubmodules = false;
      sha256 = "sha256-PaIwpCkevGIWwTOqGIj6t66tjGh+5ndroGfb77TWwxw=";
    };
    date = "2023-02-15";
  };
  "'plugin-nvim-gomove'" = {
    pname = "'plugin-nvim-gomove'";
    version = "2b44ae7ac0804f4e3959228122f7c85bef1964e3";
    src = fetchFromGitHub {
      owner = "booperlv";
      repo = "nvim-gomove";
      rev = "2b44ae7ac0804f4e3959228122f7c85bef1964e3";
      fetchSubmodules = false;
      sha256 = "sha256-9YLJm/L13gTktb6VIkz2W/60cothFtF7feiKd26R5lo=";
    };
    date = "2022-07-19";
  };
  "'plugin-nvim-lightbulb'" = {
    pname = "'plugin-nvim-lightbulb'";
    version = "56b9ce31ec9d09d560fe8787c0920f76bc208297";
    src = fetchFromGitHub {
      owner = "kosayoda";
      repo = "nvim-lightbulb";
      rev = "56b9ce31ec9d09d560fe8787c0920f76bc208297";
      fetchSubmodules = false;
      sha256 = "sha256-nw6H/dS4dHdrobnrfJVa8urWrMnbTWrA5bQJy9xbKXY=";
    };
    date = "2022-08-25";
  };
  "'plugin-nvim-lspconfig'" = {
    pname = "'plugin-nvim-lspconfig'";
    version = "e20d77deac40e6e65d036acd60aff474c0f09282";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "e20d77deac40e6e65d036acd60aff474c0f09282";
      fetchSubmodules = false;
      sha256 = "sha256-DBaAmhMfYzlHza6DOscDhD3ecYaFB4QqXrkfIirfMns=";
    };
    date = "2023-02-15";
  };
  "'plugin-nvim-tetris'" = {
    pname = "'plugin-nvim-tetris'";
    version = "d17c99fb527ada98ffb0212ffc87ccda6fd4f7d9";
    src = fetchFromGitHub {
      owner = "alec-gibson";
      repo = "nvim-tetris";
      rev = "d17c99fb527ada98ffb0212ffc87ccda6fd4f7d9";
      fetchSubmodules = false;
      sha256 = "sha256-+69Fq5aMMzg9nV05rZxlLTFwQmDyN5/5HmuL2SGu9xQ=";
    };
    date = "2021-06-28";
  };
  "'plugin-nvim-tree.lua'" = {
    pname = "'plugin-nvim-tree.lua'";
    version = "08a0aa1a3b7411ee0a7887c8818528b1558cef96";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "08a0aa1a3b7411ee0a7887c8818528b1558cef96";
      fetchSubmodules = false;
      sha256 = "sha256-ttCTJsuO86jDrWsDTpQzg/uESHPYhyo1oF+2bJFI7E0=";
    };
    date = "2023-02-15";
  };
  "'plugin-nvim-ts-autotag'" = {
    pname = "'plugin-nvim-ts-autotag'";
    version = "fdefe46c6807441460f11f11a167a2baf8e4534b";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-ts-autotag";
      rev = "fdefe46c6807441460f11f11a167a2baf8e4534b";
      fetchSubmodules = false;
      sha256 = "sha256-ltGiYNXWpWSI5RrWTVR+k6SZjcZbsHtH5m9uHTMKnzM=";
    };
    date = "2022-08-11";
  };
  "'plugin-nvim-ts-context-commentstring'" = {
    pname = "'plugin-nvim-ts-context-commentstring'";
    version = "a0f89563ba36b3bacd62cf967b46beb4c2c29e52";
    src = fetchFromGitHub {
      owner = "JoosepAlviste";
      repo = "nvim-ts-context-commentstring";
      rev = "a0f89563ba36b3bacd62cf967b46beb4c2c29e52";
      fetchSubmodules = false;
      sha256 = "sha256-HHsja6sz5+k4slmK697cRZZmkeCAt7Cjr0REYn15IX0=";
    };
    date = "2023-01-16";
  };
  "'plugin-nvim-ufo'" = {
    pname = "'plugin-nvim-ufo'";
    version = "b70c9ef0f8e2673a11387a39185ff249e00df19f";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "nvim-ufo";
      rev = "b70c9ef0f8e2673a11387a39185ff249e00df19f";
      fetchSubmodules = false;
      sha256 = "sha256-24vA7J6uStq74wAEUKIw6HlEzAs67w15KXUIRqvgo7s=";
    };
    date = "2023-02-03";
  };
  "'plugin-nvim-unception'" = {
    pname = "'plugin-nvim-unception'";
    version = "2e475b74f3e581d21cd0ce86e0520546ac756791";
    src = fetchFromGitHub {
      owner = "samjwill";
      repo = "nvim-unception";
      rev = "2e475b74f3e581d21cd0ce86e0520546ac756791";
      fetchSubmodules = false;
      sha256 = "sha256-V6wpmGJcS//fDfHLhobn3lVPB4+4Ps0ZLQYNBcJ12eI=";
    };
    date = "2023-01-16";
  };
  "'plugin-nvim-web-devicons'" = {
    pname = "'plugin-nvim-web-devicons'";
    version = "bb6d4fd1e010300510172b173ab5205d37af084f";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "bb6d4fd1e010300510172b173ab5205d37af084f";
      fetchSubmodules = false;
      sha256 = "sha256-BmxnyHdNe7/egXNRz91YOcsvnc9fyK2jlYiqGhkaXSk=";
    };
    date = "2023-02-14";
  };
  "'plugin-one-small-step-for-vimkind'" = {
    pname = "'plugin-one-small-step-for-vimkind'";
    version = "aef1bdbb8347e6daaf33d5109002f3df243ebfe9";
    src = fetchFromGitHub {
      owner = "jbyuki";
      repo = "one-small-step-for-vimkind";
      rev = "aef1bdbb8347e6daaf33d5109002f3df243ebfe9";
      fetchSubmodules = false;
      sha256 = "sha256-0vCDdou0aujJ/ojl1K+e6uz2JxGahVLe+7fiIiO+HuA=";
    };
    date = "2023-01-29";
  };
  "'plugin-playground'" = {
    pname = "'plugin-playground'";
    version = "c481c660fa903a0e295902b1765ecfbd6e76a556";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "playground";
      rev = "c481c660fa903a0e295902b1765ecfbd6e76a556";
      fetchSubmodules = false;
      sha256 = "sha256-KyLR31XfYi3aANvXBGYCAsmYEr+H9hUr8j82abPQYDQ=";
    };
    date = "2023-02-02";
  };
  "'plugin-plenary.nvim'" = {
    pname = "'plugin-plenary.nvim'";
    version = "9a0d3bf7b832818c042aaf30f692b081ddd58bd9";
    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "9a0d3bf7b832818c042aaf30f692b081ddd58bd9";
      fetchSubmodules = false;
      sha256 = "sha256-XxyAeN+kt8Cvt8aklVXyjqS4QRaP/0RE6+tPdoGGxPc=";
    };
    date = "2023-01-30";
  };
  "'plugin-presence.nvim'" = {
    pname = "'plugin-presence.nvim'";
    version = "87c857a56b7703f976d3a5ef15967d80508df6e6";
    src = fetchFromGitHub {
      owner = "andweeb";
      repo = "presence.nvim";
      rev = "87c857a56b7703f976d3a5ef15967d80508df6e6";
      fetchSubmodules = false;
      sha256 = "sha256-ZpsunLsn//zYgUtmAm5FqKVueVd/Pa1r55ZDqxCimBk=";
    };
    date = "2023-01-29";
  };
  "'plugin-project.nvim'" = {
    pname = "'plugin-project.nvim'";
    version = "685bc8e3890d2feb07ccf919522c97f7d33b94e4";
    src = fetchFromGitHub {
      owner = "ahmedkhalf";
      repo = "project.nvim";
      rev = "685bc8e3890d2feb07ccf919522c97f7d33b94e4";
      fetchSubmodules = false;
      sha256 = "sha256-fW4ztvYpeXTC0DbkZS4usG/KENiMJG/sWVTD4e8k42g=";
    };
    date = "2022-10-29";
  };
  "'plugin-promise-async'" = {
    pname = "'plugin-promise-async'";
    version = "7fa127fa80e7d4d447e0e2c78e99af4355f4247b";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "promise-async";
      rev = "7fa127fa80e7d4d447e0e2c78e99af4355f4247b";
      fetchSubmodules = false;
      sha256 = "sha256-ozjg+CkuypwEV3uErDszADpnfM1YujfapUS6dFahp4k=";
    };
    date = "2023-02-01";
  };
  "'plugin-rust-tools.nvim'" = {
    pname = "'plugin-rust-tools.nvim'";
    version = "bd1aa99ffb911a1cf99b3fcf3b44c0391c57e3ef";
    src = fetchFromGitHub {
      owner = "simrat39";
      repo = "rust-tools.nvim";
      rev = "bd1aa99ffb911a1cf99b3fcf3b44c0391c57e3ef";
      fetchSubmodules = false;
      sha256 = "sha256-SIVfaBTGil3gYa3VK1l8EXQqLILO2WbHBkOp+zQBSmo=";
    };
    date = "2023-02-04";
  };
  "'plugin-scope.nvim'" = {
    pname = "'plugin-scope.nvim'";
    version = "2db6d31de8e3a98d2b41c0f0d1f5dc299ee76875";
    src = fetchFromGitHub {
      owner = "tiagovla";
      repo = "scope.nvim";
      rev = "2db6d31de8e3a98d2b41c0f0d1f5dc299ee76875";
      fetchSubmodules = false;
      sha256 = "sha256-BdX+C5KBHZcFgDG2fXvhMl2Gp/6ffJWEBvA/JvVWh4I=";
    };
    date = "2022-06-26";
  };
  "'plugin-sort.nvim'" = {
    pname = "'plugin-sort.nvim'";
    version = "9e4065625317128f6a1c826f4a36f9b47600417a";
    src = fetchFromGitHub {
      owner = "sQVe";
      repo = "sort.nvim";
      rev = "9e4065625317128f6a1c826f4a36f9b47600417a";
      fetchSubmodules = false;
      sha256 = "sha256-1OhGO9lIZ2iTCgV1+bLZf7qZoo+ZDMKmjPHgBWYAmDE=";
    };
    date = "2022-07-08";
  };
  "'plugin-telescope.nvim'" = {
    pname = "'plugin-telescope.nvim'";
    version = "203bf5609137600d73e8ed82703d6b0e320a5f36";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "203bf5609137600d73e8ed82703d6b0e320a5f36";
      fetchSubmodules = false;
      sha256 = "sha256-L4Kw94CUy6N7zcyy9INuR/O0fxQ7sp0IvGd/u7fHxMA=";
    };
    date = "2023-01-31";
  };
  "'plugin-trouble.nvim'" = {
    pname = "'plugin-trouble.nvim'";
    version = "556ef3089709a6e253df1e500381fec5eb48e48a";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "556ef3089709a6e253df1e500381fec5eb48e48a";
      fetchSubmodules = false;
      sha256 = "sha256-BvynqOY42MqDEWUaf0VOA+UPdESHor/fw3fFD86ZT2U=";
    };
    date = "2023-02-10";
  };
  "'plugin-twilight.nvim'" = {
    pname = "'plugin-twilight.nvim'";
    version = "9410252bed96887ca5a86bf16435a3a51a0e6ce5";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "twilight.nvim";
      rev = "9410252bed96887ca5a86bf16435a3a51a0e6ce5";
      fetchSubmodules = false;
      sha256 = "sha256-jaZDzeCB2phDGlsCw2B083VgmmxtayerluTHTfEfvJ4=";
    };
    date = "2023-01-23";
  };
  "'plugin-vim-eunuch'" = {
    pname = "'plugin-vim-eunuch'";
    version = "291ef1f8c8996ca7715df1032a35a27b12d7b5cf";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-eunuch";
      rev = "291ef1f8c8996ca7715df1032a35a27b12d7b5cf";
      fetchSubmodules = false;
      sha256 = "sha256-t7D6vkEmhVDKdxqvHQ6811FENu/qM6MkrLl8lGADxDs=";
    };
    date = "2022-10-12";
  };
  "'plugin-vim-repeat'" = {
    pname = "'plugin-vim-repeat'";
    version = "24afe922e6a05891756ecf331f39a1f6743d3d5a";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-repeat";
      rev = "24afe922e6a05891756ecf331f39a1f6743d3d5a";
      fetchSubmodules = false;
      sha256 = "sha256-8rfZa3uKXB3TRCqaDHZ6DfzNbm7WaYnLvmTNzYtnKHg=";
    };
    date = "2021-01-24";
  };
  "'plugin-vimtex'" = {
    pname = "'plugin-vimtex'";
    version = "cb1460f6e6160a855bf83d93d9a34bb944f6b540";
    src = fetchFromGitHub {
      owner = "lervag";
      repo = "vimtex";
      rev = "cb1460f6e6160a855bf83d93d9a34bb944f6b540";
      fetchSubmodules = false;
      sha256 = "sha256-DZxU0w7GNZ98fiFR9gR/0GGjIIq5c1oeab6QCupLkWY=";
    };
    date = "2023-02-13";
  };
  "'plugin-which-key.nvim'" = {
    pname = "'plugin-which-key.nvim'";
    version = "5224c261825263f46f6771f1b644cae33cd06995";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "5224c261825263f46f6771f1b644cae33cd06995";
      fetchSubmodules = false;
      sha256 = "sha256-8tFsz6y6l+0UX7H0g9t0Fvuio8aARJzFWqZc6MuPJuQ=";
    };
    date = "2023-02-10";
  };
  "'plugin-zen-mode.nvim'" = {
    pname = "'plugin-zen-mode.nvim'";
    version = "3c92f503823088862ca2a7809d1c7edc90fb92fa";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "zen-mode.nvim";
      rev = "3c92f503823088862ca2a7809d1c7edc90fb92fa";
      fetchSubmodules = false;
      sha256 = "sha256-F/BKOdFjm8SCCvWWry+n1OLUNQ9y/Mp0Y3batkJ4jdA=";
    };
    date = "2023-02-08";
  };
  "'plugin-zoxide.vim'" = {
    pname = "'plugin-zoxide.vim'";
    version = "f247421ca0c1934b8bb29abe06d334f0adc93d14";
    src = fetchFromGitHub {
      owner = "nanotee";
      repo = "zoxide.vim";
      rev = "f247421ca0c1934b8bb29abe06d334f0adc93d14";
      fetchSubmodules = false;
      sha256 = "sha256-UKSBBjT4b2FHAHgl2VVGfjPk8x788ZU1Jhc6FiVWJ8A=";
    };
    date = "2023-01-18";
  };
  tree-sitter-norg = {
    pname = "tree-sitter-norg";
    version = "d7a466e182a532065a559dbfc7a847271d5e9c29";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "tree-sitter-norg";
      rev = "d7a466e182a532065a559dbfc7a847271d5e9c29";
      fetchSubmodules = false;
      sha256 = "sha256-kv3UiJUqMSF1qd3r4OCWomVTHTYjwX/EBRWm8mOSdwg=";
    };
    date = "2023-01-01";
  };
  tree-sitter-norg-meta = {
    pname = "tree-sitter-norg-meta";
    version = "8e1a9008eb9492e95eb9a65ab0ec0419cfa9c4c7";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "tree-sitter-norg-meta";
      rev = "8e1a9008eb9492e95eb9a65ab0ec0419cfa9c4c7";
      fetchSubmodules = false;
      sha256 = "sha256-1gOTQdqB/TpaJ2ClNY+/Gqsj7TkCgv9CNiX97oF8PGo=";
    };
    date = "2022-10-14";
  };
}
