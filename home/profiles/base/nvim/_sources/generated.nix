# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  "'plugin-Comment.nvim'" = {
    pname = "'plugin-Comment.nvim'";
    version = "eab2c83a0207369900e92783f56990808082eac2";
    src = fetchFromGitHub {
      owner = "numToStr";
      repo = "Comment.nvim";
      rev = "eab2c83a0207369900e92783f56990808082eac2";
      fetchSubmodules = false;
      sha256 = "sha256-7UtZAE9tPlnpeHS2LLol/LGVOxptDXNKWXHNHvFBNk4=";
    };
    date = "2023-01-18";
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
    version = "448e6bc421c899fd7330e0f710f85867a332a177";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "448e6bc421c899fd7330e0f710f85867a332a177";
      fetchSubmodules = false;
      sha256 = "sha256-cMe+r+1/78WDzkmmjslHW30jZMkXzZEKq4IqibgR8G8=";
    };
    date = "2023-01-23";
  };
  "'plugin-SmoothCursor.nvim'" = {
    pname = "'plugin-SmoothCursor.nvim'";
    version = "2320b019333a785b2852dd63169a16a1b705ab3e";
    src = fetchFromGitHub {
      owner = "gen740";
      repo = "SmoothCursor.nvim";
      rev = "2320b019333a785b2852dd63169a16a1b705ab3e";
      fetchSubmodules = false;
      sha256 = "sha256-PKaMSy+vsUf4CiTbI4C/UBLtEmuzIwGP9hbLeKGkA5E=";
    };
    date = "2023-01-23";
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
    version = "c7492a76ce8218e3335f027af44930576b561013";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "c7492a76ce8218e3335f027af44930576b561013";
      fetchSubmodules = false;
      sha256 = "sha256-q8nwZRN97Sfrr7lHtNYwGdbS63obMOAxFFs/gSvqbqM=";
    };
    date = "2022-12-24";
  };
  "'plugin-carbon.nvim'" = {
    pname = "'plugin-carbon.nvim'";
    version = "ed16e9872a3ae7e0827d895798503b92a7ab1bfa";
    src = fetchFromGitHub {
      owner = "SidOfc";
      repo = "carbon.nvim";
      rev = "ed16e9872a3ae7e0827d895798503b92a7ab1bfa";
      fetchSubmodules = false;
      sha256 = "sha256-kSgv7otwLOVp3VmtFdEMEUcsmI6/wY1QSfSzh6WtJ/w=";
    };
    date = "2023-01-14";
  };
  "'plugin-circles.nvim'" = {
    pname = "'plugin-circles.nvim'";
    version = "91ae7e0ddf95e1984528cf3129879f4841bcbc82";
    src = fetchFromGitHub {
      owner = "projekt0n";
      repo = "circles.nvim";
      rev = "91ae7e0ddf95e1984528cf3129879f4841bcbc82";
      fetchSubmodules = false;
      sha256 = "sha256-FUo7M42UHW3HWigDHZMRpQOKePktvMoOV7h9UgVMvnI=";
    };
    date = "2022-11-28";
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
    version = "59224771f91b86d1de12570b4070fe4ad7cd1eeb";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-nvim-lsp";
      rev = "59224771f91b86d1de12570b4070fe4ad7cd1eeb";
      fetchSubmodules = false;
      sha256 = "sha256-Mqkp8IH/laUx0cK7S0BjusTT+OtOOJOamZM4+93RHdU=";
    };
    date = "2022-11-16";
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
  "'plugin-dial.nvim'" = {
    pname = "'plugin-dial.nvim'";
    version = "dbcfd4510d31884d444ec33a4453d0f06ad4a5eb";
    src = fetchFromGitHub {
      owner = "monaqa";
      repo = "dial.nvim";
      rev = "dbcfd4510d31884d444ec33a4453d0f06ad4a5eb";
      fetchSubmodules = false;
      sha256 = "sha256-wYTBe4nkoto0rIeb0cFdkPCGj+JMWjMWvOqFoCZknOE=";
    };
    date = "2023-01-16";
  };
  "'plugin-diffview.nvim'" = {
    pname = "'plugin-diffview.nvim'";
    version = "7de7334ef61a3f3806b1616c2d785b8bbf080060";
    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "7de7334ef61a3f3806b1616c2d785b8bbf080060";
      fetchSubmodules = false;
      sha256 = "sha256-KdkZSlUNDSWU+OVTcF2X8Hi6Oxmg2vcIQ3Hh/gHLRYE=";
    };
    date = "2023-01-23";
  };
  "'plugin-dressing.nvim'" = {
    pname = "'plugin-dressing.nvim'";
    version = "4436d6f41e2f6b8ada57588acd1a9f8b3d21453c";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "4436d6f41e2f6b8ada57588acd1a9f8b3d21453c";
      fetchSubmodules = false;
      sha256 = "sha256-wZCbqn44wrnqTVJWlkjgGQ0LkB+RbpvH5wn0cbHDncc=";
    };
    date = "2022-12-12";
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
    version = "ae0be3cef35c0cb41d6c7f814a19b3402d50fd7a";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "flutter-tools.nvim";
      rev = "ae0be3cef35c0cb41d6c7f814a19b3402d50fd7a";
      fetchSubmodules = false;
      sha256 = "sha256-O7t8ySnDwGqRTioG1uffDwlbJTM2c1HZVXlV+H5s0Xo=";
    };
    date = "2023-01-01";
  };
  "'plugin-friendly-snippets'" = {
    pname = "'plugin-friendly-snippets'";
    version = "046e4d3491baf664e0eef5231d28beb49333578b";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "046e4d3491baf664e0eef5231d28beb49333578b";
      fetchSubmodules = false;
      sha256 = "sha256-zK7lclNPrmOEbu9VVtd0mW/2Bzitf2fkDZP09h01l/s=";
    };
    date = "2023-01-19";
  };
  "'plugin-github-nvim-theme'" = {
    pname = "'plugin-github-nvim-theme'";
    version = "a93fc4cd3c16b91cf29a1387015e6e925c416efb";
    src = fetchFromGitHub {
      owner = "projekt0n";
      repo = "github-nvim-theme";
      rev = "a93fc4cd3c16b91cf29a1387015e6e925c416efb";
      fetchSubmodules = false;
      sha256 = "sha256-9//7g2LMqOBqvcvaRRRXIfOvA+g5uljwb3qKvXA7r34=";
    };
    date = "2023-01-21";
  };
  "'plugin-gitsigns.nvim'" = {
    pname = "'plugin-gitsigns.nvim'";
    version = "7b37bd5c2dd4d7abc86f2af096af79120608eeca";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "7b37bd5c2dd4d7abc86f2af096af79120608eeca";
      fetchSubmodules = false;
      sha256 = "sha256-4ntBYDHw5DMAyqb6FIt4LUmlRyCLywO0F939JvNQdqY=";
    };
    date = "2023-01-20";
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
    version = "1080ec993563d09da5399a1e0723f19c5e859ebc";
    src = fetchFromGitHub {
      owner = "MrcJkb";
      repo = "haskell-tools.nvim";
      rev = "1080ec993563d09da5399a1e0723f19c5e859ebc";
      fetchSubmodules = false;
      sha256 = "sha256-3ewNv1TuUKWLWR+zXjzLTKeGmhiVhvvfYvjhrmiye+k=";
    };
    date = "2023-01-22";
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
    version = "c4c203c3e8a595bc333abaf168fcb10c13ed5fb7";
    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "indent-blankline.nvim";
      rev = "c4c203c3e8a595bc333abaf168fcb10c13ed5fb7";
      fetchSubmodules = false;
      sha256 = "sha256-BvRE4l10Ruz3j4JJwSAKuE9M3vd1blDbEHHlwIB2Vs0=";
    };
    date = "2022-12-08";
  };
  "'plugin-lazy.nvim'" = {
    pname = "'plugin-lazy.nvim'";
    version = "cab4682d22a0451bc36a648694235621b5dd808e";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "cab4682d22a0451bc36a648694235621b5dd808e";
      fetchSubmodules = false;
      sha256 = "sha256-cLNlRDCMwCDa+0eNnpN1yyJPbnKYBdhZ0rn1m6hZu08=";
    };
    date = "2023-01-22";
  };
  "'plugin-leap.nvim'" = {
    pname = "'plugin-leap.nvim'";
    version = "ff4c3663e5a0a0ecbb3fffbc8318825def35d2aa";
    src = fetchFromGitHub {
      owner = "ggandor";
      repo = "leap.nvim";
      rev = "ff4c3663e5a0a0ecbb3fffbc8318825def35d2aa";
      fetchSubmodules = false;
      sha256 = "sha256-3wRX/U4noqyliamwbdjHcuGdI7ZOsqJbXbvizMYKtd8=";
    };
    date = "2023-01-19";
  };
  "'plugin-lsp-format.nvim'" = {
    pname = "'plugin-lsp-format.nvim'";
    version = "ca0df5c8544e51517209ea7b86ecc522c98d4f0a";
    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "lsp-format.nvim";
      rev = "ca0df5c8544e51517209ea7b86ecc522c98d4f0a";
      fetchSubmodules = false;
      sha256 = "sha256-UeeM+rHDjsZS27L2Orh+doB6eo6YNV8gb0yLs0PjkLA=";
    };
    date = "2022-11-25";
  };
  "'plugin-lsp_signature.nvim'" = {
    pname = "'plugin-lsp_signature.nvim'";
    version = "b86f249cba85ec2f0f74c62b65898bade00b4413";
    src = fetchFromGitHub {
      owner = "ray-x";
      repo = "lsp_signature.nvim";
      rev = "b86f249cba85ec2f0f74c62b65898bade00b4413";
      fetchSubmodules = false;
      sha256 = "sha256-SStJzvNQcsIC06/NCWUB1hBp2lekK6eveXJr3pLmbE0=";
    };
    date = "2023-01-21";
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
    version = "aed3216f8d56d68085e2e3edd62f9236bc4d622b";
    src = fetchFromGitHub {
      owner = "barreiroleo";
      repo = "ltex_extra.nvim";
      rev = "aed3216f8d56d68085e2e3edd62f9236bc4d622b";
      fetchSubmodules = false;
      sha256 = "sha256-970ZA3yEfivaMj2SKNdY8TAqbwc3KhHR6x4c4RUsWqM=";
    };
    date = "2023-01-07";
  };
  "'plugin-lualine.nvim'" = {
    pname = "'plugin-lualine.nvim'";
    version = "0050b308552e45f7128f399886c86afefc3eb988";
    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "0050b308552e45f7128f399886c86afefc3eb988";
      fetchSubmodules = false;
      sha256 = "sha256-3I9og+/lVRFJSpDVFwp2AM5bMqeP1KF8XB8Nyfpwhok=";
    };
    date = "2023-01-11";
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
    version = "194e3a1c550b2b90019d42b40e029bf6455f374b";
    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "194e3a1c550b2b90019d42b40e029bf6455f374b";
      fetchSubmodules = false;
      sha256 = "sha256-RJ3aEP6/+TLbLYwj9/Ny8h0wX9EMjt2oTt/Bt7XtUCE=";
    };
    date = "2023-01-21";
  };
  "'plugin-neodev.nvim'" = {
    pname = "'plugin-neodev.nvim'";
    version = "34dd33cd283b3a89f70d32c8f55bb5ec4ce2de93";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "34dd33cd283b3a89f70d32c8f55bb5ec4ce2de93";
      fetchSubmodules = false;
      sha256 = "sha256-oLTj5h5y7g++d716CumXTekda8sWleeqEUmXDaQDf+o=";
    };
    date = "2023-01-21";
  };
  "'plugin-neorg'" = {
    pname = "'plugin-neorg'";
    version = "4a9a5fe13cd454692fc4db0b27783cd005e6be56";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "4a9a5fe13cd454692fc4db0b27783cd005e6be56";
      fetchSubmodules = false;
      sha256 = "sha256-sBZkGG6zCtNECo1IgEE73Zb6SasT6cMvgIAx2tNXSJU=";
    };
    date = "2023-01-16";
  };
  "'plugin-neorg-telescope'" = {
    pname = "'plugin-neorg-telescope'";
    version = "8d15129818c5dc224be97c9c6350d3386addeac8";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg-telescope";
      rev = "8d15129818c5dc224be97c9c6350d3386addeac8";
      fetchSubmodules = false;
      sha256 = "sha256-KDEziW99VyW2RjGV0+JaLSXXZ66WSNVPBNaw6N7Fri0=";
    };
    date = "2022-11-15";
  };
  "'plugin-null-ls.nvim'" = {
    pname = "'plugin-null-ls.nvim'";
    version = "18497120fa0db0a3b9e53870ac8f342be4bffb57";
    src = fetchFromGitHub {
      owner = "jose-elias-alvarez";
      repo = "null-ls.nvim";
      rev = "18497120fa0db0a3b9e53870ac8f342be4bffb57";
      fetchSubmodules = false;
      sha256 = "sha256-UX8mt63qP8cZF0fC0140YdJAia/OJMp3zMHB4ahUqY8=";
    };
    date = "2023-01-23";
  };
  "'plugin-nvim-autopairs'" = {
    pname = "'plugin-nvim-autopairs'";
    version = "31042a5823b55c4bfb30efcbba2fc1b5b53f90dc";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "31042a5823b55c4bfb30efcbba2fc1b5b53f90dc";
      fetchSubmodules = false;
      sha256 = "sha256-wQjcJgyBmEeS7yrhQ29rUjzdfAVk1vikOVG0g2rlPMo=";
    };
    date = "2023-01-21";
  };
  "'plugin-nvim-cmp'" = {
    pname = "'plugin-nvim-cmp'";
    version = "11a95792a5be0f5a40bab5fc5b670e5b1399a939";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "11a95792a5be0f5a40bab5fc5b670e5b1399a939";
      fetchSubmodules = false;
      sha256 = "sha256-3zPU7WsCow4t0LcG5AGOPEEtVyRZDvo6epzVc9MOGZ0=";
    };
    date = "2023-01-06";
  };
  "'plugin-nvim-colorizer.lua'" = {
    pname = "'plugin-nvim-colorizer.lua'";
    version = "36c610a9717cc9ec426a07c8e6bf3b3abcb139d6";
    src = fetchFromGitHub {
      owner = "norcalli";
      repo = "nvim-colorizer.lua";
      rev = "36c610a9717cc9ec426a07c8e6bf3b3abcb139d6";
      fetchSubmodules = false;
      sha256 = "sha256-6YrnItxExL2C8pNIdLd+hXCjsB2MbZANwWkah6dreD8=";
    };
    date = "2020-06-11";
  };
  "'plugin-nvim-dap'" = {
    pname = "'plugin-nvim-dap'";
    version = "c64a6627bb01eb151da96b28091797beaac09536";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap";
      rev = "c64a6627bb01eb151da96b28091797beaac09536";
      fetchSubmodules = false;
      sha256 = "sha256-TquCVW7EH/uvrLQpZQ6ctVlUCS+kpDjrj7e6H7RFxNk=";
    };
    date = "2023-01-18";
  };
  "'plugin-nvim-dap-go'" = {
    pname = "'plugin-nvim-dap-go'";
    version = "6f045a72a05a78e4071dd0880f08214a2bb1461b";
    src = fetchFromGitHub {
      owner = "leoluz";
      repo = "nvim-dap-go";
      rev = "6f045a72a05a78e4071dd0880f08214a2bb1461b";
      fetchSubmodules = false;
      sha256 = "sha256-aVJeVP4JqLY8TqxK/H2IqgaE98WwIJIOCI+PhLnsbZQ=";
    };
    date = "2023-01-04";
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
    version = "b80227ea56a48177786904f6322abc8b2dc0bc36";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-dap-ui";
      rev = "b80227ea56a48177786904f6322abc8b2dc0bc36";
      fetchSubmodules = false;
      sha256 = "sha256-oVpRdIVd2uA+a009ElyLhtASIErV8+0m/WK1UImVSYU=";
    };
    date = "2023-01-11";
  };
  "'plugin-nvim-dap-virtual-text'" = {
    pname = "'plugin-nvim-dap-virtual-text'";
    version = "191345947a92a5188d791e9786a5b4f205dcaca3";
    src = fetchFromGitHub {
      owner = "theHamsta";
      repo = "nvim-dap-virtual-text";
      rev = "191345947a92a5188d791e9786a5b4f205dcaca3";
      fetchSubmodules = false;
      sha256 = "sha256-CUsXwVty3uyenqh9ZcdEYCRhiDGoyVk2+0xqTEa+MBc=";
    };
    date = "2023-01-16";
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
    version = "85cd2ecacd8805614efe3fb3a5146ac7d0f88a17";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "85cd2ecacd8805614efe3fb3a5146ac7d0f88a17";
      fetchSubmodules = false;
      sha256 = "sha256-A/FT8hFrmDisjSlz+4jYf9iDuP+OZseJwag8lYnDDjo=";
    };
    date = "2023-01-22";
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
    version = "16f2806d5968157fd6f76542c9ac358c684a3a03";
    src = fetchFromGitHub {
      owner = "kyazdani42";
      repo = "nvim-tree.lua";
      rev = "16f2806d5968157fd6f76542c9ac358c684a3a03";
      fetchSubmodules = false;
      sha256 = "sha256-Jkozleax8qfPvliiLi2r3NZIGRE4FD7FT36zNgScKzs=";
    };
    date = "2023-01-23";
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
    version = "e3cc802f0383aa2fe9836d27a431cf891fe8d1c1";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "nvim-ufo";
      rev = "e3cc802f0383aa2fe9836d27a431cf891fe8d1c1";
      fetchSubmodules = false;
      sha256 = "sha256-XmYKhIt9fo3BfQW4G9Uhwup98QnsPm3agp1m4o6vC44=";
    };
    date = "2023-01-23";
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
    version = "13d06d74afad093d8312fe051633b55f24049c16";
    src = fetchFromGitHub {
      owner = "kyazdani42";
      repo = "nvim-web-devicons";
      rev = "13d06d74afad093d8312fe051633b55f24049c16";
      fetchSubmodules = false;
      sha256 = "sha256-Go8s+SucEIj7TjgzJPdrvN6auTR9VRIoQd63QM3vER8=";
    };
    date = "2023-01-22";
  };
  "'plugin-one-small-step-for-vimkind'" = {
    pname = "'plugin-one-small-step-for-vimkind'";
    version = "233c8940488d4072f9f8058798984cb68a49a319";
    src = fetchFromGitHub {
      owner = "jbyuki";
      repo = "one-small-step-for-vimkind";
      rev = "233c8940488d4072f9f8058798984cb68a49a319";
      fetchSubmodules = false;
      sha256 = "sha256-domOcZeTis5yjiksBRGIU7F4qyyde4NOpeiBCIehiCE=";
    };
    date = "2023-01-08";
  };
  "'plugin-playground'" = {
    pname = "'plugin-playground'";
    version = "01c27f37a1f067200680cacfb7b96f5ad2fa5cd6";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "playground";
      rev = "01c27f37a1f067200680cacfb7b96f5ad2fa5cd6";
      fetchSubmodules = false;
      sha256 = "sha256-dQJ44LbPVmTxL/pD7pQV3/tJxCwyovHGiC9yn1zhBY4=";
    };
    date = "2023-01-15";
  };
  "'plugin-plenary.nvim'" = {
    pname = "'plugin-plenary.nvim'";
    version = "1c7e3e6b0f4dd5a174fcea9fda8a4d7de593b826";
    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "1c7e3e6b0f4dd5a174fcea9fda8a4d7de593b826";
      fetchSubmodules = false;
      sha256 = "sha256-UWrp5ZoDRhOXSMsHZxrZHPfqBtgnKWf9SA8ChIVKF4o=";
    };
    date = "2023-01-10";
  };
  "'plugin-presence.nvim'" = {
    pname = "'plugin-presence.nvim'";
    version = "c1c54758824cbecd4e18065d37191f7666fdd097";
    src = fetchFromGitHub {
      owner = "andweeb";
      repo = "presence.nvim";
      rev = "c1c54758824cbecd4e18065d37191f7666fdd097";
      fetchSubmodules = false;
      sha256 = "sha256-v7/fN+NWsnR0APs23nX+kgeje9AlZ3aWy2H1JG57Q0g=";
    };
    date = "2022-11-16";
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
    version = "842dca33e6b1af7bedcefc72cffbc807d54dbfca";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "promise-async";
      rev = "842dca33e6b1af7bedcefc72cffbc807d54dbfca";
      fetchSubmodules = false;
      sha256 = "sha256-SHARnaeYPTVZEzhaOpbRhApelvx6zGCM5oCJCPk4Kd8=";
    };
    date = "2023-01-05";
  };
  "'plugin-rust-tools.nvim'" = {
    pname = "'plugin-rust-tools.nvim'";
    version = "df584e84393ef255f5b8cbd709677d6a3a5bf42f";
    src = fetchFromGitHub {
      owner = "simrat39";
      repo = "rust-tools.nvim";
      rev = "df584e84393ef255f5b8cbd709677d6a3a5bf42f";
      fetchSubmodules = false;
      sha256 = "sha256-+/kK6MU2EiSBFbfqQJwLkJICXZpf8oiShbcvsls3V8A=";
    };
    date = "2023-01-07";
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
    version = "dce1156ca103b8222e4abbfc63f9c6887abf5ec6";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "dce1156ca103b8222e4abbfc63f9c6887abf5ec6";
      fetchSubmodules = false;
      sha256 = "sha256-HX6zGuABNL47IXwb2WdTe0Vek0U2WGTHOAV2oo6dkqQ=";
    };
    date = "2023-01-22";
  };
  "'plugin-trouble.nvim'" = {
    pname = "'plugin-trouble.nvim'";
    version = "b2a0afac2c319a481f0f0318963a74d672ba5766";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "b2a0afac2c319a481f0f0318963a74d672ba5766";
      fetchSubmodules = false;
      sha256 = "sha256-2iV2G+JlGNS4O7HQqRKsL+DRFZNyrmY3vKHmRubnUHI=";
    };
    date = "2023-01-19";
  };
  "'plugin-twilight.nvim'" = {
    pname = "'plugin-twilight.nvim'";
    version = "8bb7fa7b918baab1ca81b977102ddb54afa63512";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "twilight.nvim";
      rev = "8bb7fa7b918baab1ca81b977102ddb54afa63512";
      fetchSubmodules = false;
      sha256 = "sha256-HqkdXI5nzSkdZeu56BY8Y0Yq64UFqnsxQmJVsBkRDS8=";
    };
    date = "2023-01-04";
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
    version = "c77ec4e15768ffcb97a96d1bf2df1ef58e94acdd";
    src = fetchFromGitHub {
      owner = "lervag";
      repo = "vimtex";
      rev = "c77ec4e15768ffcb97a96d1bf2df1ef58e94acdd";
      fetchSubmodules = false;
      sha256 = "sha256-wE6CCD9WnQclQIWfiKPSlOzewYrchqAxvP17GTRGrDE=";
    };
    date = "2023-01-19";
  };
  "'plugin-which-key.nvim'" = {
    pname = "'plugin-which-key.nvim'";
    version = "e4fa445065a2bb0bbc3cca85346b67817f28e83e";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "e4fa445065a2bb0bbc3cca85346b67817f28e83e";
      fetchSubmodules = false;
      sha256 = "sha256-fiufZp+NgowRlK3esTcPRc9Lbzbk8f6NX8n2H/DEQb4=";
    };
    date = "2023-01-12";
  };
  "'plugin-zen-mode.nvim'" = {
    pname = "'plugin-zen-mode.nvim'";
    version = "92ca530511be6aaea596ff8083b09438eb695c24";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "zen-mode.nvim";
      rev = "92ca530511be6aaea596ff8083b09438eb695c24";
      fetchSubmodules = false;
      sha256 = "sha256-d42YYnyuHfM3jTDZ9uNak0Y3oaUJjknYy4L/GR7CwiQ=";
    };
    date = "2023-01-23";
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
