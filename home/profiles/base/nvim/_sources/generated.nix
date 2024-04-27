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
    version = "8f3d3465ba5c7ade0a8adb41eca5736f291a3fa8";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "8f3d3465ba5c7ade0a8adb41eca5736f291a3fa8";
      fetchSubmodules = false;
      sha256 = "sha256-+cL5J6xK/UerlKEVzU75Tnsp1HZr9t+LKdTg+8mBjo0=";
    };
    pretty-name = "LuaSnip";
    date = "2024-04-24";
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
    version = "73540cb95f8d95aa1af3ed57713c6720c78af915";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "73540cb95f8d95aa1af3ed57713c6720c78af915";
      fetchSubmodules = false;
      sha256 = "sha256-bHlmaNXfZTlTm/8v48FwCde9ljZFLv25efYF5355bnw=";
    };
    pretty-name = "bufferline.nvim";
    date = "2024-04-22";
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
    version = "5162edb1442a729a885c45455a07e9a89058be2f";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "5162edb1442a729a885c45455a07e9a89058be2f";
      fetchSubmodules = false;
      sha256 = "sha256-46r7X8CNuMgSB9X1jFLTQAiiBVqszkBP6DPlo6nBAxI=";
    };
    pretty-name = "dressing.nvim";
    date = "2024-04-23";
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
    version = "f04131d6b2c82c2a7624a8843642d6269b50b437";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "flutter-tools.nvim";
      rev = "f04131d6b2c82c2a7624a8843642d6269b50b437";
      fetchSubmodules = false;
      sha256 = "sha256-krcaaDPJsftkrcEov1QdKQUQBH6+PgjNwFamWpmNFkU=";
    };
    pretty-name = "flutter-tools.nvim";
    date = "2024-04-19";
  };
  plugin-friendly-snippets = {
    pname = "plugin-friendly-snippets";
    version = "ea068f1becd91bcd4591fceb6420d4335e2e14d3";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "ea068f1becd91bcd4591fceb6420d4335e2e14d3";
      fetchSubmodules = false;
      sha256 = "sha256-5i/QhWhcKUX6Cvn/XTGc3lsNBeh8ri43CdCTrLWEVJw=";
    };
    pretty-name = "friendly-snippets";
    date = "2024-03-31";
  };
  plugin-gitsigns-nvim = {
    pname = "plugin-gitsigns-nvim";
    version = "035da036e68e509ed158414416c827d022d914bd";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "035da036e68e509ed158414416c827d022d914bd";
      fetchSubmodules = false;
      sha256 = "sha256-UK3DyvrQ0kLm9wrMQ6tLDoDunoThbY/Yfjn+eCZpuMw=";
    };
    pretty-name = "gitsigns.nvim";
    date = "2024-04-20";
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
    version = "4fdb49333093c0a8aae35cfac68e71cf595666ef";
    src = fetchFromGitHub {
      owner = "MrcJkb";
      repo = "haskell-tools.nvim";
      rev = "4fdb49333093c0a8aae35cfac68e71cf595666ef";
      fetchSubmodules = false;
      sha256 = "sha256-MG5CrPEyt687PMHHh+8a/jDH6Rn+t9l/+eHSj2uf+WE=";
    };
    pretty-name = "haskell-tools.nvim";
    date = "2024-04-21";
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
    version = "3f13f080434ac942b150679223d54f5ca91e0d52";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "3f13f080434ac942b150679223d54f5ca91e0d52";
      fetchSubmodules = false;
      sha256 = "sha256-3BMWkRngUV4OFXYbAPlld/0tNUp3Hfpd/b+dR6shXYc=";
    };
    pretty-name = "lazy.nvim";
    date = "2024-04-22";
  };
  plugin-leap-nvim = {
    pname = "plugin-leap-nvim";
    version = "626be4c4ec040aeaf6466c9aae17ee0ab09f1a5b";
    src = fetchFromGitHub {
      owner = "ggandor";
      repo = "leap.nvim";
      rev = "626be4c4ec040aeaf6466c9aae17ee0ab09f1a5b";
      fetchSubmodules = false;
      sha256 = "sha256-sSnofCInXuqaDEawT4vN1WdYl1cjK++BjSFnR1wXjr4=";
    };
    pretty-name = "leap.nvim";
    date = "2024-04-12";
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
    version = "4296c2c7aefbca721d02a011366a1de30598046c";
    src = fetchFromGitHub {
      owner = "barreiroleo";
      repo = "ltex_extra.nvim";
      rev = "4296c2c7aefbca721d02a011366a1de30598046c";
      fetchSubmodules = false;
      sha256 = "sha256-OuMCsDxAH2scyf3RO/h75Gc9fca1jyNs47PpUYs0FB8=";
    };
    pretty-name = "ltex_extra.nvim";
    date = "2024-04-13";
  };
  plugin-lualine-nvim = {
    pname = "plugin-lualine-nvim";
    version = "0a5a66803c7407767b799067986b4dc3036e1983";
    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "0a5a66803c7407767b799067986b4dc3036e1983";
      fetchSubmodules = false;
      sha256 = "sha256-WcH2dWdRDgMkwBQhcgT+Z/ArMdm+VbRhmQftx4t2kNI=";
    };
    pretty-name = "lualine.nvim";
    date = "2024-04-05";
  };
  plugin-luasnip-latex-snippets-nvim = {
    pname = "plugin-luasnip-latex-snippets-nvim";
    version = "6b5e24bd30735713b290c8523590197340da3e51";
    src = fetchFromGitHub {
      owner = "iurimateus";
      repo = "luasnip-latex-snippets.nvim";
      rev = "6b5e24bd30735713b290c8523590197340da3e51";
      fetchSubmodules = false;
      sha256 = "sha256-Xy20iN6giUAFTVMoeOzBQdMZpUxo5MB3qywA4jZl3Wc=";
    };
    pretty-name = "luasnip-latex-snippets.nvim";
    date = "2024-04-16";
  };
  plugin-lush-nvim = {
    pname = "plugin-lush-nvim";
    version = "7c0e27f50901481fe83b974493c4ea67a4296aeb";
    src = fetchFromGitHub {
      owner = "rktjmp";
      repo = "lush.nvim";
      rev = "7c0e27f50901481fe83b974493c4ea67a4296aeb";
      fetchSubmodules = false;
      sha256 = "sha256-GVGIZPBrunaWexwdnkbc0LxM3xMHslrwON2FunN3TDE=";
    };
    pretty-name = "lush.nvim";
    date = "2024-04-18";
  };
  plugin-mini-surround = {
    pname = "plugin-mini-surround";
    version = "a00d69be09e3fe27dfa9e5b0298410d0e148e3e2";
    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "a00d69be09e3fe27dfa9e5b0298410d0e148e3e2";
      fetchSubmodules = false;
      sha256 = "sha256-Q7c5YA6RcBbhSN4OIR8k/Agw9B7OUlf3vGB7Dy9lLM4=";
    };
    pretty-name = "mini.surround";
    date = "2024-04-22";
  };
  plugin-neodev-nvim = {
    pname = "plugin-neodev-nvim";
    version = "ce9a2e8eaba5649b553529c5498acb43a6c317cd";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "ce9a2e8eaba5649b553529c5498acb43a6c317cd";
      fetchSubmodules = false;
      sha256 = "sha256-mAJOMVN7/xO7ykVNAeTeX+z2A/7yB8zdqlEKHL6Pb74=";
    };
    pretty-name = "neodev.nvim";
    date = "2024-03-29";
  };
  plugin-neorg = {
    pname = "plugin-neorg";
    version = "v7.0.0";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "v7.0.0";
      fetchSubmodules = false;
      sha256 = "sha256-Q5V3ru+fgPYS3OxN5jDMh+4Vi9eJOuq5cC/kJ6neJ3I=";
    };
    pretty-name = "neorg";
  };
  plugin-neorg-telescope = {
    pname = "plugin-neorg-telescope";
    version = "92c1c6064429c74505de8e5d84a6dc8488a6f8e3";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg-telescope";
      rev = "92c1c6064429c74505de8e5d84a6dc8488a6f8e3";
      fetchSubmodules = false;
      sha256 = "sha256-Ytm1Au9ir/31cL36hIlrDFFe1hSSPo9yTVeHysm1WW0=";
    };
    pretty-name = "neorg-telescope";
    date = "2024-04-19";
  };
  plugin-noice-nvim = {
    pname = "plugin-noice-nvim";
    version = "0cbe3f88d038320bdbda3c4c5c95f43a13c3aa12";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "noice.nvim";
      rev = "0cbe3f88d038320bdbda3c4c5c95f43a13c3aa12";
      fetchSubmodules = false;
      sha256 = "sha256-y6gHNkWVsIuwBf7MblCTKTZSqjGDxqeFeQZWexzwk94=";
    };
    pretty-name = "noice.nvim";
    date = "2024-03-26";
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
    version = "4f41e5940bc0443fdbe5f995e2a596847215cd2a";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "4f41e5940bc0443fdbe5f995e2a596847215cd2a";
      fetchSubmodules = false;
      sha256 = "sha256-ta+0jw7P0ESThP8q2c+CD+nCzPMyHH2Cy3kjjysH0TE=";
    };
    pretty-name = "nvim-autopairs";
    date = "2024-04-07";
  };
  plugin-nvim-cmp = {
    pname = "plugin-nvim-cmp";
    version = "8f3c541407e691af6163e2447f3af1bd6e17f9a3";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "8f3c541407e691af6163e2447f3af1bd6e17f9a3";
      fetchSubmodules = false;
      sha256 = "sha256-rz+JMd/hsUEDNVan2sCuEGtbsOVi6oRmPtps+7qSXQE=";
    };
    pretty-name = "nvim-cmp";
    date = "2024-04-23";
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
    version = "6ae8a14828b0f3bff1721a35a1dfd604b6a933bb";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap";
      rev = "6ae8a14828b0f3bff1721a35a1dfd604b6a933bb";
      fetchSubmodules = false;
      sha256 = "sha256-kEn2INrNMQSLHY3gpSVV+cTx9f1nFeUCM6by9WGn5Sg=";
    };
    pretty-name = "nvim-dap";
    date = "2024-04-18";
  };
  plugin-nvim-dap-go = {
    pname = "plugin-nvim-dap-go";
    version = "36abe1d320cb61bfdf094d4e0fe815ef58f2302a";
    src = fetchFromGitHub {
      owner = "leoluz";
      repo = "nvim-dap-go";
      rev = "36abe1d320cb61bfdf094d4e0fe815ef58f2302a";
      fetchSubmodules = false;
      sha256 = "sha256-QYEc8Qxn6a7QyyDQVyzUax2XiGw6ibZObtBK8FQObvc=";
    };
    pretty-name = "nvim-dap-go";
    date = "2024-03-24";
  };
  plugin-nvim-dap-python = {
    pname = "plugin-nvim-dap-python";
    version = "3dffa58541d1f52c121fe58ced046268c838d802";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap-python";
      rev = "3dffa58541d1f52c121fe58ced046268c838d802";
      fetchSubmodules = false;
      sha256 = "sha256-VK4II8Q1uyd+tVR82Y4myiH0e/ZSWeF5yhweuDnaTE4=";
    };
    pretty-name = "nvim-dap-python";
    date = "2024-04-10";
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
    version = "3e8e207513e6ef520894950acd76b79902714103";
    src = fetchFromGitHub {
      owner = "theHamsta";
      repo = "nvim-dap-virtual-text";
      rev = "3e8e207513e6ef520894950acd76b79902714103";
      fetchSubmodules = false;
      sha256 = "sha256-9X/GtteA0H4ouOrBomKkLvBoHwrfXoycfjiotgktS8s=";
    };
    pretty-name = "nvim-dap-virtual-text";
    date = "2024-04-05";
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
    version = "7133e85c3df14a387da8942c094c7edddcdef309";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "7133e85c3df14a387da8942c094c7edddcdef309";
      fetchSubmodules = false;
      sha256 = "sha256-craV/eE1aLB3I/U0x9Fb1DFP2TOdKZd4FVCvzQoTkd0=";
    };
    pretty-name = "nvim-lspconfig";
    date = "2024-04-26";
  };
  plugin-nvim-nio = {
    pname = "plugin-nvim-nio";
    version = "5800f585def265d52f1d8848133217c800bcb25d";
    src = fetchFromGitHub {
      owner = "nvim-neotest";
      repo = "nvim-nio";
      rev = "5800f585def265d52f1d8848133217c800bcb25d";
      fetchSubmodules = false;
      sha256 = "sha256-ZRYclqsgAvlRBwb59XHlqVat7CxUJTH1rD6QLwh1ang=";
    };
    pretty-name = "nvim-nio";
    date = "2024-04-04";
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
    version = "5a18b9827491aa1aea710bc9b85c6b63ed0dad14";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "5a18b9827491aa1aea710bc9b85c6b63ed0dad14";
      fetchSubmodules = false;
      sha256 = "sha256-VMyVrgcgqx52QIy/q0oAuJNuxMNPAgPX3bi1LP27Iho=";
    };
    pretty-name = "nvim-tree.lua";
    date = "2024-04-25";
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
    version = "a6382f744f584bbf71d0a563af789af7190aabda";
    src = fetchFromGitHub {
      owner = "JoosepAlviste";
      repo = "nvim-ts-context-commentstring";
      rev = "a6382f744f584bbf71d0a563af789af7190aabda";
      fetchSubmodules = false;
      sha256 = "sha256-MnlhT17hR+tewbtLjaecxXxV1/ywzoqCL5MNtZsVYYk=";
    };
    pretty-name = "nvim-ts-context-commentstring";
    date = "2024-04-17";
  };
  plugin-nvim-ufo = {
    pname = "plugin-nvim-ufo";
    version = "a5390706f510d39951dd581f6d2a972741b3fa26";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "nvim-ufo";
      rev = "a5390706f510d39951dd581f6d2a972741b3fa26";
      fetchSubmodules = false;
      sha256 = "sha256-dzMlbzY8vyTo1t+EHqvzviiHPgWe7jCfAIQArwgozDs=";
    };
    pretty-name = "nvim-ufo";
    date = "2024-04-03";
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
    version = "beb6367ab8496c9e43f22e0252735fdadae1872d";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "beb6367ab8496c9e43f22e0252735fdadae1872d";
      fetchSubmodules = false;
      sha256 = "sha256-AW2W6H7OTv52hfZCcYQc5UjFArBWKLeVclrwMt13HOM=";
    };
    pretty-name = "nvim-web-devicons";
    date = "2024-04-21";
  };
  plugin-one-small-step-for-vimkind = {
    pname = "plugin-one-small-step-for-vimkind";
    version = "0dd306e68bf79b38cc01b15c22047e6a867df7de";
    src = fetchFromGitHub {
      owner = "jbyuki";
      repo = "one-small-step-for-vimkind";
      rev = "0dd306e68bf79b38cc01b15c22047e6a867df7de";
      fetchSubmodules = false;
      sha256 = "sha256-G5soAD3+z7BOxMaZVLPBEHxNa2H3Jp+dqDwQDMAlx2k=";
    };
    pretty-name = "one-small-step-for-vimkind";
    date = "2024-04-25";
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
    version = "08e301982b9a057110ede7a735dd1b5285eb341f";
    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "08e301982b9a057110ede7a735dd1b5285eb341f";
      fetchSubmodules = false;
      sha256 = "sha256-vy0MXEoSM4rvYpfwbc2PnilvMOA30Urv0FAxjXuvqQ8=";
    };
    pretty-name = "plenary.nvim";
    date = "2024-04-26";
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
    version = "86a0f5b594b08b2ad65f470ffdee81654942b6ac";
    src = fetchFromGitHub {
      owner = "tiagovla";
      repo = "scope.nvim";
      rev = "86a0f5b594b08b2ad65f470ffdee81654942b6ac";
      fetchSubmodules = false;
      sha256 = "sha256-8Bd1DI6nuUxkTCx0wCfWKHdi6UXQNuDygj5UuSGypLs=";
    };
    pretty-name = "scope.nvim";
    date = "2024-03-31";
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
    version = "35f94f0ef32d70e3664a703cefbe71bd1456d899";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "35f94f0ef32d70e3664a703cefbe71bd1456d899";
      fetchSubmodules = false;
      sha256 = "sha256-AtvZ7b2bg+Iaei4rRzTBYf76vHJH2Yq5tJAJZrZw/pk=";
    };
    pretty-name = "telescope.nvim";
    date = "2024-04-26";
  };
  plugin-todo-comments-nvim = {
    pname = "plugin-todo-comments-nvim";
    version = "a7e39ae9e74f2c8c6dc4eea6d40c3971ae84752d";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "todo-comments.nvim";
      rev = "a7e39ae9e74f2c8c6dc4eea6d40c3971ae84752d";
      fetchSubmodules = false;
      sha256 = "sha256-BJNU01iTRDNrPv48fgiJRS+ouaHkoqw2AYXKDRgDzfw=";
    };
    pretty-name = "todo-comments.nvim";
    date = "2024-03-27";
  };
  plugin-trouble-nvim = {
    pname = "plugin-trouble-nvim";
    version = "b9cf677f20bb2faa2dacfa870b084e568dca9572";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "b9cf677f20bb2faa2dacfa870b084e568dca9572";
      fetchSubmodules = false;
      sha256 = "sha256-kIQ72fqAsiMF9jq0MzC6peaHJddYn5PRNXfYFHTQB5Q=";
    };
    pretty-name = "trouble.nvim";
    date = "2024-03-29";
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
    version = "d9a7650e76c85f8ba437e056d08dd43b01b8bfd6";
    src = fetchFromGitHub {
      owner = "kaarmu";
      repo = "typst.vim";
      rev = "d9a7650e76c85f8ba437e056d08dd43b01b8bfd6";
      fetchSubmodules = false;
      sha256 = "sha256-7L535882LecBCN7TtaTBWwrvO/HKGnyh2WoejarAldA=";
    };
    pretty-name = "typst.vim";
    date = "2024-04-19";
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
    version = "6c01660a99c0cc0906b39094f4a2d086b28fa995";
    src = fetchFromGitHub {
      owner = "lervag";
      repo = "vimtex";
      rev = "6c01660a99c0cc0906b39094f4a2d086b28fa995";
      fetchSubmodules = false;
      sha256 = "sha256-iTMPnvs7USBnxUVFr5PVIGzqwg80KmLqbSkA4uYrPk8=";
    };
    pretty-name = "vimtex";
    date = "2024-04-24";
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
    version = "6f0510cc516a3af3396a682fbd6655486c2c9d2d";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "tree-sitter-norg-meta";
      rev = "6f0510cc516a3af3396a682fbd6655486c2c9d2d";
      fetchSubmodules = false;
      sha256 = "sha256-8qSdwHlfnjFuQF4zNdLtU2/tzDRhDZbo9K54Xxgn5+8=";
    };
    pretty-name = "tree-sitter-norg-meta";
    date = "2024-04-13";
  };
}
