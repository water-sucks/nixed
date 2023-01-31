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
    version = "94f192cf5f0a1931b3035c2d8affdebec460968c";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "94f192cf5f0a1931b3035c2d8affdebec460968c";
      fetchSubmodules = false;
      sha256 = "sha256-S34ZFnKDEeMpL8bnUup3p0+pdZg0UcJMw729hy2S6kk=";
    };
    date = "2023-01-27";
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
    version = "ab3757c1ea1b84ef59f7dda54f11d10022e0e3b7";
    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "ab3757c1ea1b84ef59f7dda54f11d10022e0e3b7";
      fetchSubmodules = false;
      sha256 = "sha256-25EuWXNfBN8cZT5Nc3pK81u+hsOdATpGEaRgRulwbOU=";
    };
    date = "2023-01-30";
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
    version = "a6f7a1609addb4e57daa6bedc300f77f8d225ab7";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "a6f7a1609addb4e57daa6bedc300f77f8d225ab7";
      fetchSubmodules = false;
      sha256 = "sha256-JrAwvaptayPy+pVZpJb6JKJe3NSltbZao5UuSB7KhOc=";
    };
    date = "2023-01-27";
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
    version = "0d4fe37ba5285171f3729da955955205f3fa945b";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "0d4fe37ba5285171f3729da955955205f3fa945b";
      fetchSubmodules = false;
      sha256 = "sha256-303GJvS7OI/RMpaeGeZs3ITpDs0Ztz7z02GAeGEn8S4=";
    };
    date = "2023-01-27";
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
    version = "74f5010bf9f6cdc2755fa4aa3824f4997bb3b14a";
    src = fetchFromGitHub {
      owner = "MrcJkb";
      repo = "haskell-tools.nvim";
      rev = "74f5010bf9f6cdc2755fa4aa3824f4997bb3b14a";
      fetchSubmodules = false;
      sha256 = "sha256-FrAHEdMmIhCljQEogrCn63v0BVjX3ZTgIJnrTadQz34=";
    };
    date = "2023-01-30";
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
    version = "15fe46a728b7473d4cae368838bbc1c79c3a3f48";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "15fe46a728b7473d4cae368838bbc1c79c3a3f48";
      fetchSubmodules = false;
      sha256 = "sha256-ZH+OuKYt9rEMOnZt3CF22EQK8DJQs83TwHSxRFm4hW8=";
    };
    date = "2023-01-25";
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
    version = "8fd21037453f4306f500e437c5cbdf6e8b6c2f99";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "8fd21037453f4306f500e437c5cbdf6e8b6c2f99";
      fetchSubmodules = false;
      sha256 = "sha256-QiuXv988AcKM4nwaxuEi0lZKuz7XF7nv4OeYIghhqn8=";
    };
    date = "2023-01-28";
  };
  "'plugin-neorg'" = {
    pname = "'plugin-neorg'";
    version = "b977fa0f2069ff71111237df07de2bdeeb2b7079";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "b977fa0f2069ff71111237df07de2bdeeb2b7079";
      fetchSubmodules = false;
      sha256 = "sha256-shp6wMmXpYynzEfB7CtIx3lukZsadOi1ey3VPRu7JRM=";
    };
    date = "2023-01-29";
  };
  "'plugin-neorg-telescope'" = {
    pname = "'plugin-neorg-telescope'";
    version = "129908ee8886ebb81ca0c31c8e2f77c62c9e0545";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg-telescope";
      rev = "129908ee8886ebb81ca0c31c8e2f77c62c9e0545";
      fetchSubmodules = false;
      sha256 = "sha256-NG2S10d4d6ZIHs4jX4YepctBdpLreG3PORh3Rxe3WOo=";
    };
    date = "2023-01-31";
  };
  "'plugin-null-ls.nvim'" = {
    pname = "'plugin-null-ls.nvim'";
    version = "7b2b28e207a1df4ebb13c7dc0bd83f69b5403d71";
    src = fetchFromGitHub {
      owner = "jose-elias-alvarez";
      repo = "null-ls.nvim";
      rev = "7b2b28e207a1df4ebb13c7dc0bd83f69b5403d71";
      fetchSubmodules = false;
      sha256 = "sha256-6Cv7hservZJwBQCmUGdnqDQCrj3LoBRMGGT2MPZ5Ngo=";
    };
    date = "2023-01-27";
  };
  "'plugin-nvim-autopairs'" = {
    pname = "'plugin-nvim-autopairs'";
    version = "5a3523ddb573804752de6c021c5cb82e267b79ca";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "5a3523ddb573804752de6c021c5cb82e267b79ca";
      fetchSubmodules = false;
      sha256 = "sha256-wcNyOHhBkWVgbxIf4frKDKlMQEE9iMYWN78p+3rNJ+g=";
    };
    date = "2023-01-30";
  };
  "'plugin-nvim-cmp'" = {
    pname = "'plugin-nvim-cmp'";
    version = "e7e2ef7031db8e0cfad7ad9916ec766ddd9dbb3b";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "e7e2ef7031db8e0cfad7ad9916ec766ddd9dbb3b";
      fetchSubmodules = false;
      sha256 = "sha256-53ubj39XyXep+AyWMU7Vxs9uTvIVZkctl6/M9LLpock=";
    };
    date = "2023-01-26";
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
    version = "0e376f00e7fac143e29e1017d2ac2cc3df13d185";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap";
      rev = "0e376f00e7fac143e29e1017d2ac2cc3df13d185";
      fetchSubmodules = false;
      sha256 = "sha256-LLD/zt72Yvva0rt80BDasqh3/ky2EZbjEb5/AdXaq3U=";
    };
    date = "2023-01-29";
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
    version = "885e958ff9de30cfbc359259eccf28cc493ad46b";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-dap-ui";
      rev = "885e958ff9de30cfbc359259eccf28cc493ad46b";
      fetchSubmodules = false;
      sha256 = "sha256-WvtlpfwNSRQNZKZ9GQCoQt0Gf3vjtpBtbXuYSWNe9sg=";
    };
    date = "2023-01-31";
  };
  "'plugin-nvim-dap-virtual-text'" = {
    pname = "'plugin-nvim-dap-virtual-text'";
    version = "7f7f2af549e72a0b7bddc3b4f827beb027ea8ce3";
    src = fetchFromGitHub {
      owner = "theHamsta";
      repo = "nvim-dap-virtual-text";
      rev = "7f7f2af549e72a0b7bddc3b4f827beb027ea8ce3";
      fetchSubmodules = false;
      sha256 = "sha256-PDTv1Wd5qV+HPsJVtYxXFTgLnYYFZZCO8ZYtVni7UVI=";
    };
    date = "2023-01-28";
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
    version = "902d6aa31450d26e11bedcbef8af5b6fe2e1ffe8";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "902d6aa31450d26e11bedcbef8af5b6fe2e1ffe8";
      fetchSubmodules = false;
      sha256 = "sha256-2XmfhBldseP9zxrQBFtapUpMBIkhKgyiM+xUbP+os8I=";
    };
    date = "2023-01-31";
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
    version = "215b29bfad74518442621b9d0483a621483b066b";
    src = fetchFromGitHub {
      owner = "kyazdani42";
      repo = "nvim-tree.lua";
      rev = "215b29bfad74518442621b9d0483a621483b066b";
      fetchSubmodules = false;
      sha256 = "sha256-gs50ubONKCxxXfR6wu6238s71R5Gmaot3unxpMFZOwM=";
    };
    date = "2023-01-31";
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
    version = "ca5946c17fb4abae6fc210a9dc4b97e57e7eecd2";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "nvim-ufo";
      rev = "ca5946c17fb4abae6fc210a9dc4b97e57e7eecd2";
      fetchSubmodules = false;
      sha256 = "sha256-fjXp/w1o9Xp8aK/OxMRlJZdb6ZMEOxAUjP8HXM5vgiA=";
    };
    date = "2023-01-27";
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
    version = "a421d183ef37dfa13f51a5805bed2381aebf9080";
    src = fetchFromGitHub {
      owner = "kyazdani42";
      repo = "nvim-web-devicons";
      rev = "a421d183ef37dfa13f51a5805bed2381aebf9080";
      fetchSubmodules = false;
      sha256 = "sha256-DfU4UcCf6uFVpAr1Lng9Vvw/x16XOmz92Yr9qJKopBw=";
    };
    date = "2023-01-28";
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
    version = "c19bcfd6a3681bc876e1b861f6685bfc04972d0d";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "playground";
      rev = "c19bcfd6a3681bc876e1b861f6685bfc04972d0d";
      fetchSubmodules = false;
      sha256 = "sha256-juhHhaHQnDQepFWIAXVYJzCaB+7pWm9uRs294uyMcB8=";
    };
    date = "2023-01-24";
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
    version = "b297167d9e01accc9b9afe872ce91e791df2dde0";
    src = fetchFromGitHub {
      owner = "simrat39";
      repo = "rust-tools.nvim";
      rev = "b297167d9e01accc9b9afe872ce91e791df2dde0";
      fetchSubmodules = false;
      sha256 = "sha256-MLY+8rMGqCmo0az1eZPid7ppxTcBjUVdtE6pZ+70krs=";
    };
    date = "2023-01-25";
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
    version = "490f7fe6d227f4f7a64f00be8c7dcd7a508ed271";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "490f7fe6d227f4f7a64f00be8c7dcd7a508ed271";
      fetchSubmodules = false;
      sha256 = "sha256-EdwQABmk7F7GJIB5lLcZtl1drMc0ASCXMbXoT/ywsK0=";
    };
    date = "2023-01-23";
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
    version = "b8607084b324ab0c98892ca20f78433904aecef5";
    src = fetchFromGitHub {
      owner = "lervag";
      repo = "vimtex";
      rev = "b8607084b324ab0c98892ca20f78433904aecef5";
      fetchSubmodules = false;
      sha256 = "sha256-A+uA3oJwJvT4mUtLPEVjqTDX8j1h1xEulaxXhKOryJY=";
    };
    date = "2023-01-30";
  };
  "'plugin-which-key.nvim'" = {
    pname = "'plugin-which-key.nvim'";
    version = "684e96c5e8477f1ee9b3f2e9a12d802fd12c5531";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "684e96c5e8477f1ee9b3f2e9a12d802fd12c5531";
      fetchSubmodules = false;
      sha256 = "sha256-A8fuY7HsfUOi9QNzWzCvaXQ2TvCNVcN2hpm5OWXYtU0=";
    };
    date = "2023-01-23";
  };
  "'plugin-zen-mode.nvim'" = {
    pname = "'plugin-zen-mode.nvim'";
    version = "2c8f9f3758a4c430ff867e547741424ac16208bb";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "zen-mode.nvim";
      rev = "2c8f9f3758a4c430ff867e547741424ac16208bb";
      fetchSubmodules = false;
      sha256 = "sha256-US+kO8TN80uSBktqaYNpnxCDWvMHRj+//lKlRXs8aEc=";
    };
    date = "2023-01-24";
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
