# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  plugin-Comment-nvim = {
    pname = "plugin-Comment-nvim";
    version = "0236521ea582747b58869cb72f70ccfa967d2e89";
    src = fetchFromGitHub {
      owner = "numToStr";
      repo = "Comment.nvim";
      rev = "0236521ea582747b58869cb72f70ccfa967d2e89";
      fetchSubmodules = false;
      sha256 = "sha256-+dF1ZombrlO6nQggufSb0igXW5zwU++o0W/5ZA07cdc=";
    };
    pretty-name = "Comment.nvim";
    date = "2023-08-07";
  };
  plugin-FTerm-nvim = {
    pname = "plugin-FTerm-nvim";
    version = "d1320892cc2ebab472935242d9d992a2c9570180";
    src = fetchFromGitHub {
      owner = "numToStr";
      repo = "FTerm.nvim";
      rev = "d1320892cc2ebab472935242d9d992a2c9570180";
      fetchSubmodules = false;
      sha256 = "sha256-fCtAs6qsvWOYRp2Z1AwQa2ByUZcUCMKfuYBoNTP7EeY=";
    };
    pretty-name = "FTerm.nvim";
    date = "2022-11-13";
  };
  plugin-LuaSnip = {
    pname = "plugin-LuaSnip";
    version = "a7a4b4682c4b3e2ba82b82a4e6e5f5a0e79dec32";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "a7a4b4682c4b3e2ba82b82a4e6e5f5a0e79dec32";
      fetchSubmodules = false;
      sha256 = "sha256-oyMykjBLkk/9S5AutnPKL+DKgfW59TS+kGUE2GsVbHk=";
    };
    pretty-name = "LuaSnip";
    date = "2024-03-03";
  };
  plugin-Nvim-R = {
    pname = "plugin-Nvim-R";
    version = "378364731b6e7e2189642d27e479d9e1feb15efa";
    src = fetchFromGitHub {
      owner = "jamespeapen";
      repo = "Nvim-R";
      rev = "378364731b6e7e2189642d27e479d9e1feb15efa";
      fetchSubmodules = false;
      sha256 = "sha256-qD2fI2yc3PZFyJUTdic/VdOY1fpdVccKRRhC3cyX2iU=";
    };
    pretty-name = "Nvim-R";
    date = "2024-03-23";
  };
  plugin-auto-save-nvim = {
    pname = "plugin-auto-save-nvim";
    version = "979b6c82f60cfa80f4cf437d77446d0ded0addf0";
    src = fetchFromGitHub {
      owner = "Pocco81";
      repo = "auto-save.nvim";
      rev = "979b6c82f60cfa80f4cf437d77446d0ded0addf0";
      fetchSubmodules = false;
      sha256 = "sha256-bWGil73YiCKZEaY7IuUOIU4Q7k7qCMjSeQ4I+cAVe44=";
    };
    pretty-name = "auto-save.nvim";
    date = "2022-11-01";
  };
  plugin-bufferline-nvim = {
    pname = "plugin-bufferline-nvim";
    version = "64e2c5def50dfd6b6f14d96a45fa3d815a4a1eef";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "64e2c5def50dfd6b6f14d96a45fa3d815a4a1eef";
      fetchSubmodules = false;
      sha256 = "sha256-drvgwupiyRAoShL2enXEYUumkYJnG+QtIkBIVqVZK+U=";
    };
    pretty-name = "bufferline.nvim";
    date = "2024-03-07";
  };
  plugin-cmp-buffer = {
    pname = "plugin-cmp-buffer";
    version = "3022dbc9166796b644a841a02de8dd1cc1d311fa";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-buffer";
      rev = "3022dbc9166796b644a841a02de8dd1cc1d311fa";
      fetchSubmodules = false;
      sha256 = "sha256-dG4U7MtnXThoa/PD+qFtCt76MQ14V1wX8GMYcvxEnbM=";
    };
    pretty-name = "cmp-buffer";
    date = "2022-08-10";
  };
  plugin-cmp-calc = {
    pname = "plugin-cmp-calc";
    version = "ce91d14d2e7a8b3f6ad86d85e34d41c1ae6268d9";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-calc";
      rev = "ce91d14d2e7a8b3f6ad86d85e34d41c1ae6268d9";
      fetchSubmodules = false;
      sha256 = "sha256-jQITlxWmB5luJtaq2ztXhn/l2L3s3rxGBZWAfXKenO0=";
    };
    pretty-name = "cmp-calc";
    date = "2023-08-18";
  };
  plugin-cmp-cmdline = {
    pname = "plugin-cmp-cmdline";
    version = "d250c63aa13ead745e3a40f61fdd3470efde3923";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-cmdline";
      rev = "d250c63aa13ead745e3a40f61fdd3470efde3923";
      fetchSubmodules = false;
      sha256 = "sha256-iBmXp+gUSMbgfkv7c7RDQAwPq02e07wEnBETP0dWBOo=";
    };
    pretty-name = "cmp-cmdline";
    date = "2024-03-22";
  };
  plugin-cmp-dap = {
    pname = "plugin-cmp-dap";
    version = "ea92773e84c0ad3288c3bc5e452ac91559669087";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "cmp-dap";
      rev = "ea92773e84c0ad3288c3bc5e452ac91559669087";
      fetchSubmodules = false;
      sha256 = "sha256-wi9L4RcnJWUzTkC4u8vSTacrMxg4ftm/K7pkuwLEQ3U=";
    };
    pretty-name = "cmp-dap";
    date = "2023-12-10";
  };
  plugin-cmp-nvim-lsp = {
    pname = "plugin-cmp-nvim-lsp";
    version = "5af77f54de1b16c34b23cba810150689a3a90312";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-nvim-lsp";
      rev = "5af77f54de1b16c34b23cba810150689a3a90312";
      fetchSubmodules = false;
      sha256 = "sha256-/0sh9vJBD9pUuD7q3tNSQ1YLvxFMNykdg5eG+LjZAA8=";
    };
    pretty-name = "cmp-nvim-lsp";
    date = "2023-12-10";
  };
  plugin-cmp-omni = {
    pname = "plugin-cmp-omni";
    version = "4ef610bbd85a5ee4e97e09450c0daecbdc60de86";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-omni";
      rev = "4ef610bbd85a5ee4e97e09450c0daecbdc60de86";
      fetchSubmodules = false;
      sha256 = "sha256-PyCZGb+54l9nLR0fXM2QXACGt25nH0IlucbTXIgbJp0=";
    };
    pretty-name = "cmp-omni";
    date = "2023-09-24";
  };
  plugin-cmp-path = {
    pname = "plugin-cmp-path";
    version = "91ff86cd9c29299a64f968ebb45846c485725f23";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-path";
      rev = "91ff86cd9c29299a64f968ebb45846c485725f23";
      fetchSubmodules = false;
      sha256 = "sha256-thppiiV3wjIaZnAXmsh7j3DUc6ceSCvGzviwFUnoPaI=";
    };
    pretty-name = "cmp-path";
    date = "2022-10-03";
  };
  plugin-cmp_luasnip = {
    pname = "plugin-cmp_luasnip";
    version = "05a9ab28b53f71d1aece421ef32fee2cb857a843";
    src = fetchFromGitHub {
      owner = "saadparwaiz1";
      repo = "cmp_luasnip";
      rev = "05a9ab28b53f71d1aece421ef32fee2cb857a843";
      fetchSubmodules = false;
      sha256 = "sha256-nUJJl2zyK/oSwz5RzI9j3gf9zpDfCImCYbPbVsyXgz8=";
    };
    pretty-name = "cmp_luasnip";
    date = "2023-10-09";
  };
  plugin-darkrose-nvim = {
    pname = "plugin-darkrose-nvim";
    version = "54f8f6e2ea85c04dcd21af5b6f2eda95b29982a8";
    src = fetchFromGitHub {
      owner = "water-sucks";
      repo = "darkrose.nvim";
      rev = "54f8f6e2ea85c04dcd21af5b6f2eda95b29982a8";
      fetchSubmodules = false;
      sha256 = "sha256-woAImqnROnTMNUZXMywg4HK/Py98bVfW0ndHITpyzH0=";
    };
    pretty-name = "darkrose.nvim";
    date = "2024-03-11";
  };
  plugin-dial-nvim = {
    pname = "plugin-dial-nvim";
    version = "27eb570085db2ef44bff4f620d3806039184651c";
    src = fetchFromGitHub {
      owner = "monaqa";
      repo = "dial.nvim";
      rev = "27eb570085db2ef44bff4f620d3806039184651c";
      fetchSubmodules = false;
      sha256 = "sha256-Ut85osqFfs+KMcy2QtBSOVzfoJMMqyKS+fQIn2xj/rg=";
    };
    pretty-name = "dial.nvim";
    date = "2023-11-30";
  };
  plugin-diffview-nvim = {
    pname = "plugin-diffview-nvim";
    version = "3dc498c9777fe79156f3d32dddd483b8b3dbd95f";
    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "3dc498c9777fe79156f3d32dddd483b8b3dbd95f";
      fetchSubmodules = false;
      sha256 = "sha256-3EdnBUka9Rh5Brl6TWpN6GlD9z32mmY3Ip+wyiKob/8=";
    };
    pretty-name = "diffview.nvim";
    date = "2023-11-20";
  };
  plugin-dressing-nvim = {
    pname = "plugin-dressing-nvim";
    version = "18e5beb3845f085b6a33c24112b37988f3f93c06";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "18e5beb3845f085b6a33c24112b37988f3f93c06";
      fetchSubmodules = false;
      sha256 = "sha256-9AwOFTRvhWFo7USgoFYfceiojZM62IXPpBs8CnSqc18=";
    };
    pretty-name = "dressing.nvim";
    date = "2024-03-12";
  };
  plugin-duck-nvim = {
    pname = "plugin-duck-nvim";
    version = "d8a6b08af440e5a0e2b3b357e2f78bb1883272cd";
    src = fetchFromGitHub {
      owner = "tamton-aquib";
      repo = "duck.nvim";
      rev = "d8a6b08af440e5a0e2b3b357e2f78bb1883272cd";
      fetchSubmodules = false;
      sha256 = "sha256-97QSkZHpHLq1XyLNhPz88i9VuWy6ux7ZFNJx/g44K2A=";
    };
    pretty-name = "duck.nvim";
    date = "2024-03-07";
  };
  plugin-fidget-nvim = {
    pname = "plugin-fidget-nvim";
    version = "2f7c08f45639a64a5c0abcf67321d52c3f499ae6";
    src = fetchFromGitHub {
      owner = "j-hui";
      repo = "fidget.nvim";
      rev = "2f7c08f45639a64a5c0abcf67321d52c3f499ae6";
      fetchSubmodules = false;
      sha256 = "sha256-8Gl2Ck4YJGReSEq1Xeh1dpdRq4eImmrxvIHrfxdem3Q=";
    };
    pretty-name = "fidget.nvim";
    date = "2023-11-09";
  };
  plugin-flutter-tools-nvim = {
    pname = "plugin-flutter-tools-nvim";
    version = "01d72d9c1bdf2d454a60c5ba450f83e5ea783f6a";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "flutter-tools.nvim";
      rev = "01d72d9c1bdf2d454a60c5ba450f83e5ea783f6a";
      fetchSubmodules = false;
      sha256 = "sha256-8zdaw+Ns/IqCt0MCGyJC2fGHmkMEn9kbvdE0leA+vI8=";
    };
    pretty-name = "flutter-tools.nvim";
    date = "2024-02-19";
  };
  plugin-friendly-snippets = {
    pname = "plugin-friendly-snippets";
    version = "dcd4a586439a1c81357d5b9d26319ae218cc9479";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "dcd4a586439a1c81357d5b9d26319ae218cc9479";
      fetchSubmodules = false;
      sha256 = "sha256-EY/XCZFuVdHdF0lrQuHm4h7gkv/JyzXldxc+OFAzYoA=";
    };
    pretty-name = "friendly-snippets";
    date = "2024-02-24";
  };
  plugin-gitsigns-nvim = {
    pname = "plugin-gitsigns-nvim";
    version = "078041e9d060a386b0c9d3a8c7a7b019a35d3fb0";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "078041e9d060a386b0c9d3a8c7a7b019a35d3fb0";
      fetchSubmodules = false;
      sha256 = "sha256-Hde3mGfqPYd8U5JExTei+TBHo2DHl+i07+1yEHQj6sw=";
    };
    pretty-name = "gitsigns.nvim";
    date = "2024-03-17";
  };
  plugin-guess-indent-nvim = {
    pname = "plugin-guess-indent-nvim";
    version = "b8ae749fce17aa4c267eec80a6984130b94f80b2";
    src = fetchFromGitHub {
      owner = "NMAC427";
      repo = "guess-indent.nvim";
      rev = "b8ae749fce17aa4c267eec80a6984130b94f80b2";
      fetchSubmodules = false;
      sha256 = "sha256-fqQfyUaQBcVZ7bcFeWbLyse9spw97Dqt/B4JGPnaYcQ=";
    };
    pretty-name = "guess-indent.nvim";
    date = "2023-04-03";
  };
  plugin-haskell-tools-nvim = {
    pname = "plugin-haskell-tools-nvim";
    version = "d8b57f073d844380a7f18c65227e5ce7cb6bc325";
    src = fetchFromGitHub {
      owner = "MrcJkb";
      repo = "haskell-tools.nvim";
      rev = "d8b57f073d844380a7f18c65227e5ce7cb6bc325";
      fetchSubmodules = false;
      sha256 = "sha256-EhZDLSz/FUR2d8Q5p6PL+N3kpxw2CZpO7ATXiAVKiQs=";
    };
    pretty-name = "haskell-tools.nvim";
    date = "2024-03-11";
  };
  plugin-highlight-current-n-nvim = {
    pname = "plugin-highlight-current-n-nvim";
    version = "1225d1ad3fee74c3e6a6d258f25a1952b927cb76";
    src = fetchFromGitHub {
      owner = "rktjmp";
      repo = "highlight-current-n.nvim";
      rev = "1225d1ad3fee74c3e6a6d258f25a1952b927cb76";
      fetchSubmodules = false;
      sha256 = "sha256-Bel83ytJCgQ6MK4qWKU557b+OI/HdMSriFoqYoCgpzA=";
    };
    pretty-name = "highlight-current-n.nvim";
    date = "2023-06-26";
  };
  plugin-indent-blankline-nvim = {
    pname = "plugin-indent-blankline-nvim";
    version = "3d08501caef2329aba5121b753e903904088f7e6";
    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "indent-blankline.nvim";
      rev = "3d08501caef2329aba5121b753e903904088f7e6";
      fetchSubmodules = false;
      sha256 = "sha256-Xp8ZQBz0in2MX3l0bnLUsSbH0lDPE+QvdmFpBFry5yY=";
    };
    pretty-name = "indent-blankline.nvim";
    date = "2024-03-14";
  };
  plugin-lazy-nvim = {
    pname = "plugin-lazy-nvim";
    version = "af6afefbb46ab29a8a1db69536b04290a9403876";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "af6afefbb46ab29a8a1db69536b04290a9403876";
      fetchSubmodules = false;
      sha256 = "sha256-p0btSW5LZeYrv0ArfByAE7aE8JFbP5WubwHAfJVqC08=";
    };
    pretty-name = "lazy.nvim";
    date = "2024-03-22";
  };
  plugin-leap-nvim = {
    pname = "plugin-leap-nvim";
    version = "87d206bf678451301fa2de993db286c136cf383b";
    src = fetchFromGitHub {
      owner = "ggandor";
      repo = "leap.nvim";
      rev = "87d206bf678451301fa2de993db286c136cf383b";
      fetchSubmodules = false;
      sha256 = "sha256-g5I0WgiIH4F7ol/K5SmttgY8zybrSjQblI1sXqaKBow=";
    };
    pretty-name = "leap.nvim";
    date = "2024-03-21";
  };
  plugin-lspkind-nvim = {
    pname = "plugin-lspkind-nvim";
    version = "1735dd5a5054c1fb7feaf8e8658dbab925f4f0cf";
    src = fetchFromGitHub {
      owner = "onsails";
      repo = "lspkind-nvim";
      rev = "1735dd5a5054c1fb7feaf8e8658dbab925f4f0cf";
      fetchSubmodules = false;
      sha256 = "sha256-/QLdBU/Zwmkw1NGuLBD48tvrmIP9d9WHhgcLEQgRTWo=";
    };
    pretty-name = "lspkind-nvim";
    date = "2024-01-11";
  };
  plugin-ltex_extra-nvim = {
    pname = "plugin-ltex_extra-nvim";
    version = "42dd3572cb09b52a137e91e515f2dff5eb631b1e";
    src = fetchFromGitHub {
      owner = "barreiroleo";
      repo = "ltex_extra.nvim";
      rev = "42dd3572cb09b52a137e91e515f2dff5eb631b1e";
      fetchSubmodules = false;
      sha256 = "sha256-ekdjF7Bq+DmI96sHlTcXQYR7WmezA7GwEBbTw4V/OcI=";
    };
    pretty-name = "ltex_extra.nvim";
    date = "2024-02-03";
  };
  plugin-lualine-nvim = {
    pname = "plugin-lualine-nvim";
    version = "b5e8bb642138f787a2c1c5aedc2a78cb2cebbd67";
    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "b5e8bb642138f787a2c1c5aedc2a78cb2cebbd67";
      fetchSubmodules = false;
      sha256 = "sha256-+2fi58GolO3e0O7+kl+idNeFuTfJA1b5yCBdY2RnVjA=";
    };
    pretty-name = "lualine.nvim";
    date = "2024-03-21";
  };
  plugin-luasnip-latex-snippets-nvim = {
    pname = "plugin-luasnip-latex-snippets-nvim";
    version = "064f2abb6d08ebdd17b4a2baa181ffa7c4011f39";
    src = fetchFromGitHub {
      owner = "iurimateus";
      repo = "luasnip-latex-snippets.nvim";
      rev = "064f2abb6d08ebdd17b4a2baa181ffa7c4011f39";
      fetchSubmodules = false;
      sha256 = "sha256-hasYnmyWq3yk3uzQIwXDtGqCIk0Ck+Qu5obxBoXE0OI=";
    };
    pretty-name = "luasnip-latex-snippets.nvim";
    date = "2024-02-14";
  };
  plugin-lush-nvim = {
    pname = "plugin-lush-nvim";
    version = "bc12f010b34cfeefac35720656eb777753b165d9";
    src = fetchFromGitHub {
      owner = "rktjmp";
      repo = "lush.nvim";
      rev = "bc12f010b34cfeefac35720656eb777753b165d9";
      fetchSubmodules = false;
      sha256 = "sha256-SQ+gSGdaAwoBmQMmqtUoOTY2oUfPm+ws+t3dyFwBVRk=";
    };
    pretty-name = "lush.nvim";
    date = "2024-03-17";
  };
  plugin-mini-surround = {
    pname = "plugin-mini-surround";
    version = "a1b590cc3b676512de507328d6bbab5e43794720";
    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "a1b590cc3b676512de507328d6bbab5e43794720";
      fetchSubmodules = false;
      sha256 = "sha256-ATQcAcDAQcT818sLUSJmyOYqLDvNLiCrwAafvD8rAvM=";
    };
    pretty-name = "mini.surround";
    date = "2024-02-11";
  };
  plugin-neodev-nvim = {
    pname = "plugin-neodev-nvim";
    version = "6a533ed9d3435dcaa456380d833ea04da37ea2ed";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "6a533ed9d3435dcaa456380d833ea04da37ea2ed";
      fetchSubmodules = false;
      sha256 = "sha256-rQ36aBEvLCq33qnek9oYFKMCoog5Ap51rI9xb+Rj7xw=";
    };
    pretty-name = "neodev.nvim";
    date = "2024-03-22";
  };
  plugin-neorg = {
    pname = "plugin-neorg";
    version = "086891d396ac9fccd91faf1520f563b6eb9eb942";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "086891d396ac9fccd91faf1520f563b6eb9eb942";
      fetchSubmodules = false;
      sha256 = "sha256-GTScif/Q71sBl9gAo/8ILdGkN6NRrvlODE79uD8VJcw=";
    };
    pretty-name = "neorg";
    date = "2024-03-04";
  };
  plugin-neorg-telescope = {
    pname = "plugin-neorg-telescope";
    version = "418f8fd4bd7360d954613a2322b4eb2888ac3ad9";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg-telescope";
      rev = "418f8fd4bd7360d954613a2322b4eb2888ac3ad9";
      fetchSubmodules = false;
      sha256 = "sha256-3W4DQzXpFzzlb0yjtCelIjITU+M0RvdsEaqK9TfvCWQ=";
    };
    pretty-name = "neorg-telescope";
    date = "2024-02-10";
  };
  plugin-noice-nvim = {
    pname = "plugin-noice-nvim";
    version = "bf67d70bd7265d075191e7812d8eb42b9791f737";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "noice.nvim";
      rev = "bf67d70bd7265d075191e7812d8eb42b9791f737";
      fetchSubmodules = false;
      sha256 = "sha256-lNCdwB0B5arbTEIHdDoQ19/vQ0UT89AQFwZM+RHqOTg=";
    };
    pretty-name = "noice.nvim";
    date = "2024-01-22";
  };
  plugin-nui-nvim = {
    pname = "plugin-nui-nvim";
    version = "cbd2668414331c10039278f558630ed19b93e69b";
    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "cbd2668414331c10039278f558630ed19b93e69b";
      fetchSubmodules = false;
      sha256 = "sha256-Zr5CNx6BIM6naCXW8YBc/Oj1qOtWV/3tuMoaaZjoSZA=";
    };
    pretty-name = "nui.nvim";
    date = "2024-03-18";
  };
  plugin-nvim-autopairs = {
    pname = "plugin-nvim-autopairs";
    version = "dbfc1c34bed415906395db8303c71039b3a3ffb4";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "dbfc1c34bed415906395db8303c71039b3a3ffb4";
      fetchSubmodules = false;
      sha256 = "sha256-H4mJ43Eyo36noIqYZ0lyqM7WPwgIKqi96OjW5F3pfvU=";
    };
    pretty-name = "nvim-autopairs";
    date = "2024-03-20";
  };
  plugin-nvim-cmp = {
    pname = "plugin-nvim-cmp";
    version = "6ed1c93465c33f6a53b4c3f103bf9d1ab696382a";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "6ed1c93465c33f6a53b4c3f103bf9d1ab696382a";
      fetchSubmodules = false;
      sha256 = "sha256-uRQUz2Y07raZ36dR1oWwXfOIkzya6ERkZNNNLh9xJhA=";
    };
    pretty-name = "nvim-cmp";
    date = "2024-03-23";
  };
  plugin-nvim-colorizer-lua = {
    pname = "plugin-nvim-colorizer-lua";
    version = "85855b38011114929f4058efc97af1059ab3e41d";
    src = fetchFromGitHub {
      owner = "NvChad";
      repo = "nvim-colorizer.lua";
      rev = "85855b38011114929f4058efc97af1059ab3e41d";
      fetchSubmodules = false;
      sha256 = "sha256-oKvFN2K+ASlPNwj2rhptR/ErYgo6XKBPhXSZotDdCP0=";
    };
    pretty-name = "nvim-colorizer.lua";
    date = "2023-12-23";
  };
  plugin-nvim-dap = {
    pname = "plugin-nvim-dap";
    version = "c1695e500c7d552a0a19953a9aefcc89178fb1af";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap";
      rev = "c1695e500c7d552a0a19953a9aefcc89178fb1af";
      fetchSubmodules = false;
      sha256 = "sha256-Aph6+LcuhdfLWL5YnL2SjJftn7knBRq628q7GI7W+2I=";
    };
    pretty-name = "nvim-dap";
    date = "2024-03-17";
  };
  plugin-nvim-dap-go = {
    pname = "plugin-nvim-dap-go";
    version = "64f73400761e2d19459e664a52ea478f3a4420e7";
    src = fetchFromGitHub {
      owner = "leoluz";
      repo = "nvim-dap-go";
      rev = "64f73400761e2d19459e664a52ea478f3a4420e7";
      fetchSubmodules = false;
      sha256 = "sha256-drcFUVH+aRRappEbkSvkTiONMZ5p76IMdrO6af7GzOQ=";
    };
    pretty-name = "nvim-dap-go";
    date = "2024-02-21";
  };
  plugin-nvim-dap-python = {
    pname = "plugin-nvim-dap-python";
    version = "66560f0ebddf96604f7037e1efad3ba6942761e6";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap-python";
      rev = "66560f0ebddf96604f7037e1efad3ba6942761e6";
      fetchSubmodules = false;
      sha256 = "sha256-c3glIPw0gjRTmMmnyY12iAT1Xfl50GlFjRH4OEo2iXk=";
    };
    pretty-name = "nvim-dap-python";
    date = "2024-02-19";
  };
  plugin-nvim-dap-ui = {
    pname = "plugin-nvim-dap-ui";
    version = "edfa93f60b189e5952c016eee262d0685d838450";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-dap-ui";
      rev = "edfa93f60b189e5952c016eee262d0685d838450";
      fetchSubmodules = false;
      sha256 = "sha256-KAwCt8E3lC0fzXQ9GpPsdb9wdWC6G2P4C/YFQFY9AAM=";
    };
    pretty-name = "nvim-dap-ui";
    date = "2024-03-19";
  };
  plugin-nvim-dap-virtual-text = {
    pname = "plugin-nvim-dap-virtual-text";
    version = "baa5b0dc6663284cce32e0d00ac1f2511b13496f";
    src = fetchFromGitHub {
      owner = "theHamsta";
      repo = "nvim-dap-virtual-text";
      rev = "baa5b0dc6663284cce32e0d00ac1f2511b13496f";
      fetchSubmodules = false;
      sha256 = "sha256-1VEEdes7sOagVeX5zjz7R+kNAbfd5NV+sX5xeBGq2Iw=";
    };
    pretty-name = "nvim-dap-virtual-text";
    date = "2024-03-10";
  };
  plugin-nvim-gomove = {
    pname = "plugin-nvim-gomove";
    version = "2b44ae7ac0804f4e3959228122f7c85bef1964e3";
    src = fetchFromGitHub {
      owner = "booperlv";
      repo = "nvim-gomove";
      rev = "2b44ae7ac0804f4e3959228122f7c85bef1964e3";
      fetchSubmodules = false;
      sha256 = "sha256-9YLJm/L13gTktb6VIkz2W/60cothFtF7feiKd26R5lo=";
    };
    pretty-name = "nvim-gomove";
    date = "2022-07-19";
  };
  plugin-nvim-jdtls = {
    pname = "plugin-nvim-jdtls";
    version = "8eb5f0dbe6e126b392ddcaf45893358619893e45";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-jdtls";
      rev = "8eb5f0dbe6e126b392ddcaf45893358619893e45";
      fetchSubmodules = false;
      sha256 = "sha256-yodvMYeCOeQMYJ42lg6yK2GCP0kf9sw8CjxjjVIIYxM=";
    };
    pretty-name = "nvim-jdtls";
    date = "2024-03-07";
  };
  plugin-nvim-lightbulb = {
    pname = "plugin-nvim-lightbulb";
    version = "8f00b89dd1b1dbde16872bee5fbcee2e58c9b8e9";
    src = fetchFromGitHub {
      owner = "kosayoda";
      repo = "nvim-lightbulb";
      rev = "8f00b89dd1b1dbde16872bee5fbcee2e58c9b8e9";
      fetchSubmodules = false;
      sha256 = "sha256-Meoop66jINllnxN6aohuPmU7DEjn64FMq/b8zuy9FEQ=";
    };
    pretty-name = "nvim-lightbulb";
    date = "2023-07-20";
  };
  plugin-nvim-lspconfig = {
    pname = "plugin-nvim-lspconfig";
    version = "24662f92c18edd397ef12d635b11dbdedef2d094";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "24662f92c18edd397ef12d635b11dbdedef2d094";
      fetchSubmodules = false;
      sha256 = "sha256-LNiNplctUT31dH94p09+1lxbYaGVioB6zyhr96Yo2hc=";
    };
    pretty-name = "nvim-lspconfig";
    date = "2024-03-22";
  };
  plugin-nvim-nio = {
    pname = "plugin-nvim-nio";
    version = "33c62b3eadd8154169e42144de16ba4db6784bec";
    src = fetchFromGitHub {
      owner = "nvim-neotest";
      repo = "nvim-nio";
      rev = "33c62b3eadd8154169e42144de16ba4db6784bec";
      fetchSubmodules = false;
      sha256 = "sha256-MHCrUisx3blgHWFyA5IHcSwKvC1tK1Pgy/jADBkoXX0=";
    };
    pretty-name = "nvim-nio";
    date = "2024-03-22";
  };
  plugin-nvim-tetris = {
    pname = "plugin-nvim-tetris";
    version = "d17c99fb527ada98ffb0212ffc87ccda6fd4f7d9";
    src = fetchFromGitHub {
      owner = "alec-gibson";
      repo = "nvim-tetris";
      rev = "d17c99fb527ada98ffb0212ffc87ccda6fd4f7d9";
      fetchSubmodules = false;
      sha256 = "sha256-+69Fq5aMMzg9nV05rZxlLTFwQmDyN5/5HmuL2SGu9xQ=";
    };
    pretty-name = "nvim-tetris";
    date = "2021-06-28";
  };
  plugin-nvim-tree-lua = {
    pname = "plugin-nvim-tree-lua";
    version = "f7c09bd72e50e1795bd3afb9e2a2b157b4bfb3c3";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "f7c09bd72e50e1795bd3afb9e2a2b157b4bfb3c3";
      fetchSubmodules = false;
      sha256 = "sha256-ss+MGbHAPf4Ho2v2AzLEECPiSQPBPsvLTZnDSuhitSU=";
    };
    pretty-name = "nvim-tree.lua";
    date = "2024-03-16";
  };
  plugin-nvim-ts-autotag = {
    pname = "plugin-nvim-ts-autotag";
    version = "531f48334c422222aebc888fd36e7d109cb354cd";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-ts-autotag";
      rev = "531f48334c422222aebc888fd36e7d109cb354cd";
      fetchSubmodules = false;
      sha256 = "sha256-cPIEIjcYxX3ZkOyou2mYlHMdhBxCoVTpJVXZtiWe9Ks=";
    };
    pretty-name = "nvim-ts-autotag";
    date = "2024-02-07";
  };
  plugin-nvim-ts-context-commentstring = {
    pname = "plugin-nvim-ts-context-commentstring";
    version = "7ab799a9792f7cf3883cf28c6a00ad431f3d382a";
    src = fetchFromGitHub {
      owner = "JoosepAlviste";
      repo = "nvim-ts-context-commentstring";
      rev = "7ab799a9792f7cf3883cf28c6a00ad431f3d382a";
      fetchSubmodules = false;
      sha256 = "sha256-RiisnhiyY/+yVc7Cqn8VFOaa4J7iXGCTguX6eRNIDNQ=";
    };
    pretty-name = "nvim-ts-context-commentstring";
    date = "2024-02-02";
  };
  plugin-nvim-ufo = {
    pname = "plugin-nvim-ufo";
    version = "458aa4451b98614cfab6b3d7beddc8caff5e3052";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "nvim-ufo";
      rev = "458aa4451b98614cfab6b3d7beddc8caff5e3052";
      fetchSubmodules = false;
      sha256 = "sha256-BYJ037GB4S+6bOo938rFTyaHmAJms6pRC5Pie9ASwXE=";
    };
    pretty-name = "nvim-ufo";
    date = "2024-03-23";
  };
  plugin-nvim-unception = {
    pname = "plugin-nvim-unception";
    version = "a0af21a27e2ba19ce6004d57d34006d18bc6bad4";
    src = fetchFromGitHub {
      owner = "samjwill";
      repo = "nvim-unception";
      rev = "a0af21a27e2ba19ce6004d57d34006d18bc6bad4";
      fetchSubmodules = false;
      sha256 = "sha256-fjfdRT2OpdWHVNBCNdkjGYzSivM52g3TYUW9/VZ5r5g=";
    };
    pretty-name = "nvim-unception";
    date = "2024-02-06";
  };
  plugin-nvim-web-devicons = {
    pname = "plugin-nvim-web-devicons";
    version = "585b2dc4bba2b5973f2b1d3e576709af5ac34fb6";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "585b2dc4bba2b5973f2b1d3e576709af5ac34fb6";
      fetchSubmodules = false;
      sha256 = "sha256-6XCOir4E5l32xxIBKAAeRY7nEHLxJXup39CDPqFHckE=";
    };
    pretty-name = "nvim-web-devicons";
    date = "2024-03-23";
  };
  plugin-one-small-step-for-vimkind = {
    pname = "plugin-one-small-step-for-vimkind";
    version = "cd2500ab74addeed6ac260a008dd649c01d3ba12";
    src = fetchFromGitHub {
      owner = "jbyuki";
      repo = "one-small-step-for-vimkind";
      rev = "cd2500ab74addeed6ac260a008dd649c01d3ba12";
      fetchSubmodules = false;
      sha256 = "sha256-f1vxmjSnsSAylKOV4+5z3Iy71ENO2q4D8cyfrWV0GMA=";
    };
    pretty-name = "one-small-step-for-vimkind";
    date = "2024-03-17";
  };
  plugin-playground = {
    pname = "plugin-playground";
    version = "ba48c6a62a280eefb7c85725b0915e021a1a0749";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "playground";
      rev = "ba48c6a62a280eefb7c85725b0915e021a1a0749";
      fetchSubmodules = false;
      sha256 = "sha256-gOQr61Y3bVa6EAb0P924X9SJmg9lOmGiLcFTMdgu8u0=";
    };
    pretty-name = "playground";
    date = "2023-09-15";
  };
  plugin-plenary-nvim = {
    pname = "plugin-plenary-nvim";
    version = "f7adfc4b3f4f91aab6caebf42b3682945fbc35be";
    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "f7adfc4b3f4f91aab6caebf42b3682945fbc35be";
      fetchSubmodules = false;
      sha256 = "sha256-/ltkFqa5MTAI9z8oLv7+5SJ/Qq9l1kkuKGD955NbLi8=";
    };
    pretty-name = "plenary.nvim";
    date = "2024-03-06";
  };
  plugin-presence-nvim = {
    pname = "plugin-presence-nvim";
    version = "87c857a56b7703f976d3a5ef15967d80508df6e6";
    src = fetchFromGitHub {
      owner = "andweeb";
      repo = "presence.nvim";
      rev = "87c857a56b7703f976d3a5ef15967d80508df6e6";
      fetchSubmodules = false;
      sha256 = "sha256-ZpsunLsn//zYgUtmAm5FqKVueVd/Pa1r55ZDqxCimBk=";
    };
    pretty-name = "presence.nvim";
    date = "2023-01-29";
  };
  plugin-project-nvim = {
    pname = "plugin-project-nvim";
    version = "8c6bad7d22eef1b71144b401c9f74ed01526a4fb";
    src = fetchFromGitHub {
      owner = "ahmedkhalf";
      repo = "project.nvim";
      rev = "8c6bad7d22eef1b71144b401c9f74ed01526a4fb";
      fetchSubmodules = false;
      sha256 = "sha256-avV3wMiDbraxW4mqlEsKy0oeewaRj9Q33K8NzWoaptU=";
    };
    pretty-name = "project.nvim";
    date = "2023-04-03";
  };
  plugin-promise-async = {
    pname = "plugin-promise-async";
    version = "93540c168c5ed2b030ec3e6c40ab8bbb85e36355";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "promise-async";
      rev = "93540c168c5ed2b030ec3e6c40ab8bbb85e36355";
      fetchSubmodules = false;
      sha256 = "sha256-v6iWktPHr8QqvxzI8hRUQVzxKzLk5SdroPpEGPRjMRU=";
    };
    pretty-name = "promise-async";
    date = "2024-02-27";
  };
  plugin-rust-tools-nvim = {
    pname = "plugin-rust-tools-nvim";
    version = "676187908a1ce35ffcd727c654ed68d851299d3e";
    src = fetchFromGitHub {
      owner = "simrat39";
      repo = "rust-tools.nvim";
      rev = "676187908a1ce35ffcd727c654ed68d851299d3e";
      fetchSubmodules = false;
      sha256 = "sha256-kFane5ze7VDiOzF7jdmXkr50XQsNvdb+a9HQtybEVE0=";
    };
    pretty-name = "rust-tools.nvim";
    date = "2024-01-03";
  };
  plugin-scope-nvim = {
    pname = "plugin-scope-nvim";
    version = "cd27af77ad61a7199af5c28d27013fb956eb0e3e";
    src = fetchFromGitHub {
      owner = "tiagovla";
      repo = "scope.nvim";
      rev = "cd27af77ad61a7199af5c28d27013fb956eb0e3e";
      fetchSubmodules = false;
      sha256 = "sha256-z1ytdhxKrLnZG8qMPEe2h+wC9tF4K/x6zplwnIojZuE=";
    };
    pretty-name = "scope.nvim";
    date = "2023-10-29";
  };
  plugin-sort-nvim = {
    pname = "plugin-sort-nvim";
    version = "c789da6968337d2a61104a929880b5f144e02855";
    src = fetchFromGitHub {
      owner = "sQVe";
      repo = "sort.nvim";
      rev = "c789da6968337d2a61104a929880b5f144e02855";
      fetchSubmodules = false;
      sha256 = "sha256-xncv1vuSoxLEFoWUC2RR5wlzXvrPBd2Fpl2di+EGMTU=";
    };
    pretty-name = "sort.nvim";
    date = "2023-04-12";
  };
  plugin-telescope-nvim = {
    pname = "plugin-telescope-nvim";
    version = "1e591885751d255b12c3649253cb6c2838e2c724";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "1e591885751d255b12c3649253cb6c2838e2c724";
      fetchSubmodules = false;
      sha256 = "sha256-h/JOvPaULu86wNU1S6sKA1un27OxKYAkb6Q2pqjOqFI=";
    };
    pretty-name = "telescope.nvim";
    date = "2024-03-23";
  };
  plugin-todo-comments-nvim = {
    pname = "plugin-todo-comments-nvim";
    version = "833d8dd8b07eeda37a09e99460f72a02616935cb";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "todo-comments.nvim";
      rev = "833d8dd8b07eeda37a09e99460f72a02616935cb";
      fetchSubmodules = false;
      sha256 = "sha256-DiyieXXx7iYGWkpeOvduJf0n7dnpaQ7rXmaWvZQaCyE=";
    };
    pretty-name = "todo-comments.nvim";
    date = "2024-01-21";
  };
  plugin-trouble-nvim = {
    pname = "plugin-trouble-nvim";
    version = "f1168feada93c0154ede4d1fe9183bf69bac54ea";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "f1168feada93c0154ede4d1fe9183bf69bac54ea";
      fetchSubmodules = false;
      sha256 = "sha256-8nLghiueYOtWY7OGVxow9A2G/5lgt+Kt5D8q1xeJvVg=";
    };
    pretty-name = "trouble.nvim";
    date = "2023-10-18";
  };
  plugin-twilight-nvim = {
    pname = "plugin-twilight-nvim";
    version = "8b7b50c0cb2dc781b2f4262a5ddd57571556d1e4";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "twilight.nvim";
      rev = "8b7b50c0cb2dc781b2f4262a5ddd57571556d1e4";
      fetchSubmodules = false;
      sha256 = "sha256-WFE8FZU8E8i6mX9bFl80YkIypGXOOhKvGbLrBoPce0g=";
    };
    pretty-name = "twilight.nvim";
    date = "2023-09-25";
  };
  plugin-typst-vim = {
    pname = "plugin-typst-vim";
    version = "6a68ce290b98b2d88c72fff0de723d7d170287a3";
    src = fetchFromGitHub {
      owner = "kaarmu";
      repo = "typst.vim";
      rev = "6a68ce290b98b2d88c72fff0de723d7d170287a3";
      fetchSubmodules = false;
      sha256 = "sha256-I/FMQAVHptdVfahpwxubV7+wHNLeubOf/QWWgdWdUCA=";
    };
    pretty-name = "typst.vim";
    date = "2024-03-21";
  };
  plugin-vim-eunuch = {
    pname = "plugin-vim-eunuch";
    version = "8fb3904be27b6b60d086f87c2570085902414069";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-eunuch";
      rev = "8fb3904be27b6b60d086f87c2570085902414069";
      fetchSubmodules = false;
      sha256 = "sha256-JJga94MKWUSmsdAqwl2KeD0pcNpG6CvuJxKCfjXJkcU=";
    };
    pretty-name = "vim-eunuch";
    date = "2024-02-04";
  };
  plugin-vim-repeat = {
    pname = "plugin-vim-repeat";
    version = "24afe922e6a05891756ecf331f39a1f6743d3d5a";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-repeat";
      rev = "24afe922e6a05891756ecf331f39a1f6743d3d5a";
      fetchSubmodules = false;
      sha256 = "sha256-8rfZa3uKXB3TRCqaDHZ6DfzNbm7WaYnLvmTNzYtnKHg=";
    };
    pretty-name = "vim-repeat";
    date = "2021-01-24";
  };
  plugin-vimtex = {
    pname = "plugin-vimtex";
    version = "73605f8b7655301ea47a2c355500ab4984f41b91";
    src = fetchFromGitHub {
      owner = "lervag";
      repo = "vimtex";
      rev = "73605f8b7655301ea47a2c355500ab4984f41b91";
      fetchSubmodules = false;
      sha256 = "sha256-7/lmYRPHG9j6XQgi+IBmeIL9OjqURBFEcP8i2ZaXfyo=";
    };
    pretty-name = "vimtex";
    date = "2024-03-20";
  };
  plugin-which-key-nvim = {
    pname = "plugin-which-key-nvim";
    version = "4433e5ec9a507e5097571ed55c02ea9658fb268a";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "4433e5ec9a507e5097571ed55c02ea9658fb268a";
      fetchSubmodules = false;
      sha256 = "sha256-uvghPj/teWrRMm09Gh8iQ/LV2nYJw0lmoiZK6L4+1cY=";
    };
    pretty-name = "which-key.nvim";
    date = "2023-10-20";
  };
  plugin-zen-mode-nvim = {
    pname = "plugin-zen-mode-nvim";
    version = "78557d972b4bfbb7488e17b5703d25164ae64e6a";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "zen-mode.nvim";
      rev = "78557d972b4bfbb7488e17b5703d25164ae64e6a";
      fetchSubmodules = false;
      sha256 = "sha256-G5/AskXEA0vl9GGUR8NG8PmL/HFcItZJWB+LyKd3R2k=";
    };
    pretty-name = "zen-mode.nvim";
    date = "2024-01-21";
  };
  plugin-zoxide-vim = {
    pname = "plugin-zoxide-vim";
    version = "b1e70b6fc1682a83929aee63680d2b43456fe9a5";
    src = fetchFromGitHub {
      owner = "nanotee";
      repo = "zoxide.vim";
      rev = "b1e70b6fc1682a83929aee63680d2b43456fe9a5";
      fetchSubmodules = false;
      sha256 = "sha256-60WQ8bsKigMUdubKJ1ZefUN5soAF38/7iT4LC7TDuQg=";
    };
    pretty-name = "zoxide.vim";
    date = "2023-10-23";
  };
  tree-sitter-just = {
    pname = "tree-sitter-just";
    version = "6c2f018ab1d90946c0ce029bb2f7d57f56895dff";
    src = fetchFromGitHub {
      owner = "IndianBoy42";
      repo = "tree-sitter-just";
      rev = "6c2f018ab1d90946c0ce029bb2f7d57f56895dff";
      fetchSubmodules = false;
      sha256 = "sha256-EnU0IpBr9i3+RFLzg7g6XuDSiuMBLGQ0eCJNPKeDohw=";
    };
    pretty-name = "tree-sitter-just";
    date = "2024-03-22";
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
    pretty-name = "tree-sitter-norg";
    date = "2023-01-01";
  };
  tree-sitter-norg-meta = {
    pname = "tree-sitter-norg-meta";
    version = "a479d1ca05848d0b51dd25bc9f71a17e0108b240";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "tree-sitter-norg-meta";
      rev = "a479d1ca05848d0b51dd25bc9f71a17e0108b240";
      fetchSubmodules = false;
      sha256 = "sha256-7tCmYem8vpgG+9HM92cbQH1r+h+iRDf7wfrxQGoadO8=";
    };
    pretty-name = "tree-sitter-norg-meta";
    date = "2023-05-28";
  };
}
