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
    version = "c4d6298347f7707e9757351b2ee03d0c00da5c20";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "c4d6298347f7707e9757351b2ee03d0c00da5c20";
      fetchSubmodules = false;
      sha256 = "sha256-FEUgSEijCPdSTqfNTT25ITKu9CdLjUkOY31aNYzwghE=";
    };
    pretty-name = "LuaSnip";
    date = "2023-08-18";
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
    version = "417b303328118b6d836ae330142e88771c48a8a3";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "417b303328118b6d836ae330142e88771c48a8a3";
      fetchSubmodules = false;
      sha256 = "sha256-jsjT56YWsFb9Qr/mjmwpOm9thYkScnSCOZ+MPzaz1DM=";
    };
    pretty-name = "bufferline.nvim";
    date = "2023-08-11";
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
    version = "8ee981b4a91f536f52add291594e89fb6645e451";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-cmdline";
      rev = "8ee981b4a91f536f52add291594e89fb6645e451";
      fetchSubmodules = false;
      sha256 = "sha256-W8v/XhPjbvKSwCrfOAPihO2N9PEVnH5Cp/Fa25lNRw4=";
    };
    pretty-name = "cmp-cmdline";
    date = "2023-06-09";
  };
  plugin-cmp-dap = {
    pname = "plugin-cmp-dap";
    version = "d16f14a210cd28988b97ca8339d504533b7e09a4";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "cmp-dap";
      rev = "d16f14a210cd28988b97ca8339d504533b7e09a4";
      fetchSubmodules = false;
      sha256 = "sha256-w+gGaZxXjb2B0dMXhfduEQKtO5CmQnuUdh4otpcsFuc=";
    };
    pretty-name = "cmp-dap";
    date = "2022-11-13";
  };
  plugin-cmp-nvim-lsp = {
    pname = "plugin-cmp-nvim-lsp";
    version = "44b16d11215dce86f253ce0c30949813c0a90765";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-nvim-lsp";
      rev = "44b16d11215dce86f253ce0c30949813c0a90765";
      fetchSubmodules = false;
      sha256 = "sha256-mU0soCz79erJXMMqD/FyrJZ0mu2n6fE0deymPzQlxts=";
    };
    pretty-name = "cmp-nvim-lsp";
    date = "2023-06-23";
  };
  plugin-cmp-omni = {
    pname = "plugin-cmp-omni";
    version = "9436e6cdd7c5dfa24a99a60d9280b24dbdea3649";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-omni";
      rev = "9436e6cdd7c5dfa24a99a60d9280b24dbdea3649";
      fetchSubmodules = false;
      sha256 = "sha256-rXOPRu6jWbC0HSU71qtA8VPSKdS7TllWKwXf5Iv+10s=";
    };
    pretty-name = "cmp-omni";
    date = "2023-05-26";
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
    version = "18095520391186d634a0045dacaa346291096566";
    src = fetchFromGitHub {
      owner = "saadparwaiz1";
      repo = "cmp_luasnip";
      rev = "18095520391186d634a0045dacaa346291096566";
      fetchSubmodules = false;
      sha256 = "sha256-Z5SPy3j2oHFxJ7bK8DP8Q/oRyLEMlnWyIfDaQcNVIS0=";
    };
    pretty-name = "cmp_luasnip";
    date = "2022-10-28";
  };
  plugin-darkrose-nvim = {
    pname = "plugin-darkrose-nvim";
    version = "53e4da69a512467d994e2b055d5e2e3abfd61be2";
    src = fetchFromGitHub {
      owner = "water-sucks";
      repo = "darkrose.nvim";
      rev = "53e4da69a512467d994e2b055d5e2e3abfd61be2";
      fetchSubmodules = false;
      sha256 = "sha256-3z7FMRdaoAzvQ+MUXD66pgJE4IrSucNThlPty8IY/wc=";
    };
    pretty-name = "darkrose.nvim";
    date = "2023-07-13";
  };
  plugin-dial-nvim = {
    pname = "plugin-dial-nvim";
    version = "5b9763eaa483250650eb4f60c96db62abbb250aa";
    src = fetchFromGitHub {
      owner = "monaqa";
      repo = "dial.nvim";
      rev = "5b9763eaa483250650eb4f60c96db62abbb250aa";
      fetchSubmodules = false;
      sha256 = "sha256-i1PQKM0SMGtqYsBP7O+ER5/rFpVQzeM2o3Bo3PWGc8Y=";
    };
    pretty-name = "dial.nvim";
    date = "2023-08-27";
  };
  plugin-diffview-nvim = {
    pname = "plugin-diffview-nvim";
    version = "7e5a85c186027cab1e825d018f07c350177077fc";
    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "7e5a85c186027cab1e825d018f07c350177077fc";
      fetchSubmodules = false;
      sha256 = "sha256-ifLLzNFSRvqXLNM513pna0Q54CIaIPbK/lzG1dDM9Es=";
    };
    pretty-name = "diffview.nvim";
    date = "2023-08-21";
  };
  plugin-dressing-nvim = {
    pname = "plugin-dressing-nvim";
    version = "c7b035de7f91bb6b62b4308f105c56d1a968b8c5";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "c7b035de7f91bb6b62b4308f105c56d1a968b8c5";
      fetchSubmodules = false;
      sha256 = "sha256-s434wzvkGSd7akeIYkQMJQ3RMOl2PPAYkNhv0z57GB8=";
    };
    pretty-name = "dressing.nvim";
    date = "2023-08-27";
  };
  plugin-duck-nvim = {
    pname = "plugin-duck-nvim";
    version = "8f18dd79c701698fc150119ef642c1881ce6a538";
    src = fetchFromGitHub {
      owner = "tamton-aquib";
      repo = "duck.nvim";
      rev = "8f18dd79c701698fc150119ef642c1881ce6a538";
      fetchSubmodules = false;
      sha256 = "sha256-YPZF57FsN1Zr8S2R2hKIX9xO0w8kbNs8zdLjm6hpynI=";
    };
    pretty-name = "duck.nvim";
    date = "2023-07-08";
  };
  plugin-fidget-nvim = {
    pname = "plugin-fidget-nvim";
    version = "90c22e47be057562ee9566bad313ad42d622c1d3";
    src = fetchFromGitHub {
      owner = "j-hui";
      repo = "fidget.nvim";
      rev = "90c22e47be057562ee9566bad313ad42d622c1d3";
      fetchSubmodules = false;
      sha256 = "sha256-N3O/AvsD6Ckd62kDEN4z/K5A3SZNR15DnQeZhH6/Rr0=";
    };
    pretty-name = "fidget.nvim";
    date = "2023-06-09";
  };
  plugin-flutter-tools-nvim = {
    pname = "plugin-flutter-tools-nvim";
    version = "561d85b16d8ca2938820a9c26b2fe74096d89c81";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "flutter-tools.nvim";
      rev = "561d85b16d8ca2938820a9c26b2fe74096d89c81";
      fetchSubmodules = false;
      sha256 = "sha256-h8s5g6KU7dMesDqiwzv2MmUGk6jlU5lBnuVA3LaoI1g=";
    };
    pretty-name = "flutter-tools.nvim";
    date = "2023-07-24";
  };
  plugin-friendly-snippets = {
    pname = "plugin-friendly-snippets";
    version = "7ff46f90aad07a9be1eb9e2f24e5d7256ecc766b";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "7ff46f90aad07a9be1eb9e2f24e5d7256ecc766b";
      fetchSubmodules = false;
      sha256 = "sha256-FKvfbMMmkabGcYY2aO52g8EEsrv6mYskmZssl19hxxo=";
    };
    pretty-name = "friendly-snippets";
    date = "2023-08-27";
  };
  plugin-gitsigns-nvim = {
    pname = "plugin-gitsigns-nvim";
    version = "d8590288417fef2430f85bc8b312fae8b1cf2c40";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "d8590288417fef2430f85bc8b312fae8b1cf2c40";
      fetchSubmodules = false;
      sha256 = "sha256-ozsKQdN2mV43Qc+eVIKuxauY4gK4dUU6q3sxFmSEwNM=";
    };
    pretty-name = "gitsigns.nvim";
    date = "2023-08-26";
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
    version = "fc29c58bba949ed7feb44790a6243886480a279b";
    src = fetchFromGitHub {
      owner = "MrcJkb";
      repo = "haskell-tools.nvim";
      rev = "fc29c58bba949ed7feb44790a6243886480a279b";
      fetchSubmodules = false;
      sha256 = "sha256-fTPH5NAkNRaXahtNrX6ONkHx58KxvHpJalvG0REgGlo=";
    };
    pretty-name = "haskell-tools.nvim";
    date = "2023-08-27";
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
    version = "9637670896b68805430e2f72cf5d16be5b97a22a";
    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "indent-blankline.nvim";
      rev = "9637670896b68805430e2f72cf5d16be5b97a22a";
      fetchSubmodules = false;
      sha256 = "sha256-1EpjFIJ5GK9NXS6dTMJ71w/AtLtR6Q5HrAXCIRNOBAY=";
    };
    pretty-name = "indent-blankline.nvim";
    date = "2023-08-22";
  };
  plugin-lazy-nvim = {
    pname = "plugin-lazy-nvim";
    version = "2a9354c7d2368d78cbd5575a51a2af5bd8a6ad01";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "2a9354c7d2368d78cbd5575a51a2af5bd8a6ad01";
      fetchSubmodules = false;
      sha256 = "sha256-03dFvXeQ1rTK2ESP9VcssIP+PF7ipcGUnrpS+TFOgAU=";
    };
    pretty-name = "lazy.nvim";
    date = "2023-08-26";
  };
  plugin-leap-nvim = {
    pname = "plugin-leap-nvim";
    version = "5efe985cf68fac3b6a6dfe7a75fbfaca8db2af9c";
    src = fetchFromGitHub {
      owner = "ggandor";
      repo = "leap.nvim";
      rev = "5efe985cf68fac3b6a6dfe7a75fbfaca8db2af9c";
      fetchSubmodules = false;
      sha256 = "sha256-9GFZ5CuR92kFGwh/ouqSSp14eOLZLpzpoFTEuYL7biQ=";
    };
    pretty-name = "leap.nvim";
    date = "2023-07-23";
  };
  plugin-lsp_signature-nvim = {
    pname = "plugin-lsp_signature-nvim";
    version = "58d4e810801da74c29313da86075d6aea537501f";
    src = fetchFromGitHub {
      owner = "ray-x";
      repo = "lsp_signature.nvim";
      rev = "58d4e810801da74c29313da86075d6aea537501f";
      fetchSubmodules = false;
      sha256 = "sha256-qvcs0KuO2/NdtiTZIxJ2vrwV0I5PjzjMvoAePPasaJM=";
    };
    pretty-name = "lsp_signature.nvim";
    date = "2023-07-24";
  };
  plugin-lspkind-nvim = {
    pname = "plugin-lspkind-nvim";
    version = "57610d5ab560c073c465d6faf0c19f200cb67e6e";
    src = fetchFromGitHub {
      owner = "onsails";
      repo = "lspkind-nvim";
      rev = "57610d5ab560c073c465d6faf0c19f200cb67e6e";
      fetchSubmodules = false;
      sha256 = "sha256-S+qZm51hw/cRujIfHV/1x1fYyCKI4XQ0utSL8uy4l6I=";
    };
    pretty-name = "lspkind-nvim";
    date = "2023-05-05";
  };
  plugin-ltex_extra-nvim = {
    pname = "plugin-ltex_extra-nvim";
    version = "9bed99b2b8488cc2daf66c76d2e0cf051ee80d13";
    src = fetchFromGitHub {
      owner = "barreiroleo";
      repo = "ltex_extra.nvim";
      rev = "9bed99b2b8488cc2daf66c76d2e0cf051ee80d13";
      fetchSubmodules = false;
      sha256 = "sha256-LzgAICiGuaHfYkQq7/4bRJ1M5KopFBcSTVTHrb3rm+w=";
    };
    pretty-name = "ltex_extra.nvim";
    date = "2023-07-28";
  };
  plugin-lualine-nvim = {
    pname = "plugin-lualine-nvim";
    version = "45e27ca739c7be6c49e5496d14fcf45a303c3a63";
    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "45e27ca739c7be6c49e5496d14fcf45a303c3a63";
      fetchSubmodules = false;
      sha256 = "sha256-v8finXk+sLNaFMA7pSHhEu0WF5mhPYWHEKhl0IKBv8c=";
    };
    pretty-name = "lualine.nvim";
    date = "2023-08-03";
  };
  plugin-luasnip-latex-snippets-nvim = {
    pname = "plugin-luasnip-latex-snippets-nvim";
    version = "b8f0be4aa19dcb5ca4f98ac6a9e3d07c45098af6";
    src = fetchFromGitHub {
      owner = "iurimateus";
      repo = "luasnip-latex-snippets.nvim";
      rev = "b8f0be4aa19dcb5ca4f98ac6a9e3d07c45098af6";
      fetchSubmodules = false;
      sha256 = "sha256-753/1SAyeXHZkv6TLsvp6YiV9S3Tm+Fi4AQAdST6s+E=";
    };
    pretty-name = "luasnip-latex-snippets.nvim";
    date = "2023-08-15";
  };
  plugin-lush-nvim = {
    pname = "plugin-lush-nvim";
    version = "a8f0f7b9f837887f13a61d67b40ae26188fe4d62";
    src = fetchFromGitHub {
      owner = "rktjmp";
      repo = "lush.nvim";
      rev = "a8f0f7b9f837887f13a61d67b40ae26188fe4d62";
      fetchSubmodules = false;
      sha256 = "sha256-V3PauNRR1jK50toSFyEqxYhdw8PzLDCwjWG7Rgs90f4=";
    };
    pretty-name = "lush.nvim";
    date = "2023-08-03";
  };
  plugin-mini-surround = {
    pname = "plugin-mini-surround";
    version = "9d1956b576d7051da3a483b251dfc778121c60db";
    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "9d1956b576d7051da3a483b251dfc778121c60db";
      fetchSubmodules = false;
      sha256 = "sha256-UXkTQyC0yOEVRltUYSn8angJ/+cVlmFpAqxNuoUcY8s=";
    };
    pretty-name = "mini.surround";
    date = "2023-07-01";
  };
  plugin-neodev-nvim = {
    pname = "plugin-neodev-nvim";
    version = "183f5a7357397260b631d6cccceccc3621b50f78";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "183f5a7357397260b631d6cccceccc3621b50f78";
      fetchSubmodules = false;
      sha256 = "sha256-zYOiTLz7U+zzr+Xm8Wxn/zs7ulsE5LgEclFISmG9m9Y=";
    };
    pretty-name = "neodev.nvim";
    date = "2023-08-27";
  };
  plugin-neorg = {
    pname = "plugin-neorg";
    version = "f296a22864bbac0d94ad00fa18cc8231dbeaa1e3";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "f296a22864bbac0d94ad00fa18cc8231dbeaa1e3";
      fetchSubmodules = false;
      sha256 = "sha256-LdIhJfeqJ9RW96rgqnLy3bT/YhzfUx2FP2idmreApPU=";
    };
    pretty-name = "neorg";
    date = "2023-08-14";
  };
  plugin-neorg-telescope = {
    pname = "plugin-neorg-telescope";
    version = "1310d4aaefd8149c9839bbe1d5610e94389e2f0e";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg-telescope";
      rev = "1310d4aaefd8149c9839bbe1d5610e94389e2f0e";
      fetchSubmodules = false;
      sha256 = "sha256-jVfpSWPjSSbbsQns8n7TaAiSJLZ9EPEYVl8mibKH8Mw=";
    };
    pretty-name = "neorg-telescope";
    date = "2023-08-06";
  };
  plugin-noice-nvim = {
    pname = "plugin-noice-nvim";
    version = "791c7adda821fd03529f995df2ee284ad591dabd";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "noice.nvim";
      rev = "791c7adda821fd03529f995df2ee284ad591dabd";
      fetchSubmodules = false;
      sha256 = "sha256-lnGv7u4IQtJT0cp1ejXRXyBXkd3qxi9pSBUnoy802Ws=";
    };
    pretty-name = "noice.nvim";
    date = "2023-08-26";
  };
  plugin-nui-nvim = {
    pname = "plugin-nui-nvim";
    version = "0f913a3ae1a24c8a4487fbf111b4044cc22b1b0d";
    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "0f913a3ae1a24c8a4487fbf111b4044cc22b1b0d";
      fetchSubmodules = false;
      sha256 = "sha256-2vYwa0ERb5ogFnkJQSM1GhQ9uZmVTw7IWFQeb49NYs8=";
    };
    pretty-name = "nui.nvim";
    date = "2023-08-27";
  };
  plugin-null-ls-nvim = {
    pname = "plugin-null-ls-nvim";
    version = "0010ea927ab7c09ef0ce9bf28c2b573fc302f5a7";
    src = fetchFromGitHub {
      owner = "jose-elias-alvarez";
      repo = "null-ls.nvim";
      rev = "0010ea927ab7c09ef0ce9bf28c2b573fc302f5a7";
      fetchSubmodules = false;
      sha256 = "sha256-cWA0rzkOp/ekVKaFee7iea1lhnqKtWUIU+fW5M950wI=";
    };
    pretty-name = "null-ls.nvim";
    date = "2023-08-11";
  };
  plugin-nvim-autopairs = {
    pname = "plugin-nvim-autopairs";
    version = "ae5b41ce880a6d850055e262d6dfebd362bb276e";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "ae5b41ce880a6d850055e262d6dfebd362bb276e";
      fetchSubmodules = false;
      sha256 = "sha256-bu+WpW5Wfk3pS74mzVvehl7dVMHgrttmV4ZSlfwbai4=";
    };
    pretty-name = "nvim-autopairs";
    date = "2023-07-14";
  };
  plugin-nvim-cmp = {
    pname = "plugin-nvim-cmp";
    version = "5dce1b778b85c717f6614e3f4da45e9f19f54435";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "5dce1b778b85c717f6614e3f4da45e9f19f54435";
      fetchSubmodules = false;
      sha256 = "sha256-WGck3By9GhnBUmzLGi2wnKjDreQx5kBOmHCbC5BZhfo=";
    };
    pretty-name = "nvim-cmp";
    date = "2023-08-26";
  };
  plugin-nvim-colorizer-lua = {
    pname = "plugin-nvim-colorizer-lua";
    version = "dde3084106a70b9a79d48f426f6d6fec6fd203f7";
    src = fetchFromGitHub {
      owner = "NvChad";
      repo = "nvim-colorizer.lua";
      rev = "dde3084106a70b9a79d48f426f6d6fec6fd203f7";
      fetchSubmodules = false;
      sha256 = "sha256-hShQabr+UafsP+yicWkHycWLTbPhOpRpoa9oTMMVZ9o=";
    };
    pretty-name = "nvim-colorizer.lua";
    date = "2023-02-27";
  };
  plugin-nvim-dap = {
    pname = "plugin-nvim-dap";
    version = "4377a05b9476587b7b485d6a9d9745768c4e4b37";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap";
      rev = "4377a05b9476587b7b485d6a9d9745768c4e4b37";
      fetchSubmodules = false;
      sha256 = "sha256-Se3wQS6J2/WHw8pnv+4ZxDulu3/IRILGAbMx3ziAdFc=";
    };
    pretty-name = "nvim-dap";
    date = "2023-08-24";
  };
  plugin-nvim-dap-go = {
    pname = "plugin-nvim-dap-go";
    version = "1b508e9db330108d3b5d62a6d9cc01fe6bbdd4e0";
    src = fetchFromGitHub {
      owner = "leoluz";
      repo = "nvim-dap-go";
      rev = "1b508e9db330108d3b5d62a6d9cc01fe6bbdd4e0";
      fetchSubmodules = false;
      sha256 = "sha256-y6e3dgz6W2jTxU7Ty1VwPX9BwzN43UwjJ7wIuaZmrgE=";
    };
    pretty-name = "nvim-dap-go";
    date = "2023-08-22";
  };
  plugin-nvim-dap-python = {
    pname = "plugin-nvim-dap-python";
    version = "37b4cba02e337a95cb62ad1609b3d1dccb2e5d42";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap-python";
      rev = "37b4cba02e337a95cb62ad1609b3d1dccb2e5d42";
      fetchSubmodules = false;
      sha256 = "sha256-wT1OLg4gpKaeqcrSgef/aKmB3+IFPB5fF0OOUtVuyqA=";
    };
    pretty-name = "nvim-dap-python";
    date = "2023-05-23";
  };
  plugin-nvim-dap-ui = {
    pname = "plugin-nvim-dap-ui";
    version = "85b16ac2309d85c88577cd8ee1733ce52be8227e";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-dap-ui";
      rev = "85b16ac2309d85c88577cd8ee1733ce52be8227e";
      fetchSubmodules = false;
      sha256 = "sha256-z6TFe7+r/g2tfgdXr6PCPri5lSboi66zZmsdyWTI1BM=";
    };
    pretty-name = "nvim-dap-ui";
    date = "2023-07-14";
  };
  plugin-nvim-dap-virtual-text = {
    pname = "plugin-nvim-dap-virtual-text";
    version = "57f1dbd0458dd84a286b27768c142e1567f3ce3b";
    src = fetchFromGitHub {
      owner = "theHamsta";
      repo = "nvim-dap-virtual-text";
      rev = "57f1dbd0458dd84a286b27768c142e1567f3ce3b";
      fetchSubmodules = false;
      sha256 = "sha256-yzMRudA8Wag881ewzw82uXPzHoxaB6kAapPElKN6G6E=";
    };
    pretty-name = "nvim-dap-virtual-text";
    date = "2023-05-25";
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
    version = "095dc490f362adc85be66dc14bd9665ddd94413b";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-jdtls";
      rev = "095dc490f362adc85be66dc14bd9665ddd94413b";
      fetchSubmodules = false;
      sha256 = "sha256-8KiZFYCYeuMUZO3mw4EVuMNIZ7zhhyZ3tXoAWR2eYQk=";
    };
    pretty-name = "nvim-jdtls";
    date = "2023-08-01";
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
    version = "a27356f1ef9c11e1f459cc96a3fcac5c265e72d6";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "a27356f1ef9c11e1f459cc96a3fcac5c265e72d6";
      fetchSubmodules = false;
      sha256 = "sha256-JYhEKTD51Ey9ksy8tpsJn2ZjxdW4dwjtuqD/1BI8uJ8=";
    };
    pretty-name = "nvim-lspconfig";
    date = "2023-08-26";
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
    version = "00741206c2df9c4b538055def19b99790f0c95c8";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "00741206c2df9c4b538055def19b99790f0c95c8";
      fetchSubmodules = false;
      sha256 = "sha256-J5Ggqsmc24VbA0Y1OMeSpL7rKWgtKjBfJIsSFs3WzzI=";
    };
    pretty-name = "nvim-tree.lua";
    date = "2023-08-26";
  };
  plugin-nvim-ts-autotag = {
    pname = "plugin-nvim-ts-autotag";
    version = "6be1192965df35f94b8ea6d323354f7dc7a557e4";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-ts-autotag";
      rev = "6be1192965df35f94b8ea6d323354f7dc7a557e4";
      fetchSubmodules = false;
      sha256 = "sha256-4qTtXYA5HyG1sADV0wsiccO/G89qEoYPmlg8tTx7h8g=";
    };
    pretty-name = "nvim-ts-autotag";
    date = "2023-06-16";
  };
  plugin-nvim-ts-context-commentstring = {
    pname = "plugin-nvim-ts-context-commentstring";
    version = "9bff161dfece6ecf3459e6e46ca42e49f9ed939f";
    src = fetchFromGitHub {
      owner = "JoosepAlviste";
      repo = "nvim-ts-context-commentstring";
      rev = "9bff161dfece6ecf3459e6e46ca42e49f9ed939f";
      fetchSubmodules = false;
      sha256 = "sha256-+U0zpKyr2lnq0Sqkw+/XujNACsrRdrlAQZ6qKG+qiC0=";
    };
    pretty-name = "nvim-ts-context-commentstring";
    date = "2023-08-18";
  };
  plugin-nvim-ufo = {
    pname = "plugin-nvim-ufo";
    version = "8b01594c29bd01e7b49b647a663c819ed909714f";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "nvim-ufo";
      rev = "8b01594c29bd01e7b49b647a663c819ed909714f";
      fetchSubmodules = false;
      sha256 = "sha256-3CGPu9KOPN2NksfGbeVy9unV1dCcJJGHT/9NovO1ge8=";
    };
    pretty-name = "nvim-ufo";
    date = "2023-08-26";
  };
  plugin-nvim-unception = {
    pname = "plugin-nvim-unception";
    version = "0cbf11a6c5c4314e88245b69d460f85f30885d2e";
    src = fetchFromGitHub {
      owner = "samjwill";
      repo = "nvim-unception";
      rev = "0cbf11a6c5c4314e88245b69d460f85f30885d2e";
      fetchSubmodules = false;
      sha256 = "sha256-DLRiD+N+RqE1ig/Tysfpe0/UqyrVhwm9R/y8BZkd3ok=";
    };
    pretty-name = "nvim-unception";
    date = "2023-04-11";
  };
  plugin-nvim-web-devicons = {
    pname = "plugin-nvim-web-devicons";
    version = "cfc8824cc1db316a276b36517f093baccb8e799a";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "cfc8824cc1db316a276b36517f093baccb8e799a";
      fetchSubmodules = false;
      sha256 = "sha256-6iuZbUi7MA69/wIMijCWj3J1s2RrCWKxQ/l7fWDnOF0=";
    };
    pretty-name = "nvim-web-devicons";
    date = "2023-08-17";
  };
  plugin-one-small-step-for-vimkind = {
    pname = "plugin-one-small-step-for-vimkind";
    version = "aa1c4a876c3a4e14614cd0dd55794d00f810dae9";
    src = fetchFromGitHub {
      owner = "jbyuki";
      repo = "one-small-step-for-vimkind";
      rev = "aa1c4a876c3a4e14614cd0dd55794d00f810dae9";
      fetchSubmodules = false;
      sha256 = "sha256-5NczQfUA3y8R0so+KVFEzJO9w6RmIZAlGCAS8DKX4Fk=";
    };
    pretty-name = "one-small-step-for-vimkind";
    date = "2023-08-19";
  };
  plugin-playground = {
    pname = "plugin-playground";
    version = "429f3e76cbb1c59fe000b690f7a5bea617b890c0";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "playground";
      rev = "429f3e76cbb1c59fe000b690f7a5bea617b890c0";
      fetchSubmodules = false;
      sha256 = "sha256-Pp6KojsOD/JxufVNZASZjXU0Z23D3yeuZ6S2k5mPmLo=";
    };
    pretty-name = "playground";
    date = "2023-08-26";
  };
  plugin-plenary-nvim = {
    pname = "plugin-plenary-nvim";
    version = "0dbe561ae023f02c2fb772b879e905055b939ce3";
    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "0dbe561ae023f02c2fb772b879e905055b939ce3";
      fetchSubmodules = false;
      sha256 = "sha256-TcjgafIbwNXxoAO5wrf/Wr6sZHJtfpHU9R7RIjBZgkg=";
    };
    pretty-name = "plenary.nvim";
    date = "2023-08-24";
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
    version = "e94f35161b8c5d4a4ca3b6ff93dd073eb9214c0e";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "promise-async";
      rev = "e94f35161b8c5d4a4ca3b6ff93dd073eb9214c0e";
      fetchSubmodules = false;
      sha256 = "sha256-TR8DbOJSZuIeqaOx6sMrs3mBc+yYnWyEzhbasQvvWzE=";
    };
    pretty-name = "promise-async";
    date = "2023-04-09";
  };
  plugin-rust-tools-nvim = {
    pname = "plugin-rust-tools-nvim";
    version = "0cc8adab23117783a0292a0c8a2fbed1005dc645";
    src = fetchFromGitHub {
      owner = "simrat39";
      repo = "rust-tools.nvim";
      rev = "0cc8adab23117783a0292a0c8a2fbed1005dc645";
      fetchSubmodules = false;
      sha256 = "sha256-jtfyDxifchznUupLSao6nmpVqaX1yO0xN+NhqS9fgxg=";
    };
    pretty-name = "rust-tools.nvim";
    date = "2023-07-10";
  };
  plugin-scope-nvim = {
    pname = "plugin-scope-nvim";
    version = "b783c77175a3026d19152fd938a5cc066c2f6676";
    src = fetchFromGitHub {
      owner = "tiagovla";
      repo = "scope.nvim";
      rev = "b783c77175a3026d19152fd938a5cc066c2f6676";
      fetchSubmodules = false;
      sha256 = "sha256-2d0JQHLgopgJ8Ys5AIFFB8DLa1IfCp5bzpUG0TYY0uw=";
    };
    pretty-name = "scope.nvim";
    date = "2023-08-22";
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
    version = "207285ccec21b69996a4d3bcfa59df35d48610e8";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "207285ccec21b69996a4d3bcfa59df35d48610e8";
      fetchSubmodules = false;
      sha256 = "sha256-L0EA0luXUXPiHHHQvArPLzlJu+l0tuwDNLDZAlgEyXQ=";
    };
    pretty-name = "telescope.nvim";
    date = "2023-08-26";
  };
  plugin-trouble-nvim = {
    pname = "plugin-trouble-nvim";
    version = "40aad004f53ae1d1ba91bcc5c29d59f07c5f01d3";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "40aad004f53ae1d1ba91bcc5c29d59f07c5f01d3";
      fetchSubmodules = false;
      sha256 = "sha256-Ee0AM8S/A8DU0hyOnZoKC1hkW0fvk0A+c3WGvPqmKcU=";
    };
    pretty-name = "trouble.nvim";
    date = "2023-07-29";
  };
  plugin-twilight-nvim = {
    pname = "plugin-twilight-nvim";
    version = "a4843e6e67092a1e6fa9666f02bf0ab59174c1df";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "twilight.nvim";
      rev = "a4843e6e67092a1e6fa9666f02bf0ab59174c1df";
      fetchSubmodules = false;
      sha256 = "sha256-D0QlkDPYxcG+1KCVU7+pjcJkHg6VqEplod6Wguc5LLU=";
    };
    pretty-name = "twilight.nvim";
    date = "2023-05-22";
  };
  plugin-typst-vim = {
    pname = "plugin-typst-vim";
    version = "97f21818cb8d3d5ed6bb4b672ddb5af975aab71a";
    src = fetchFromGitHub {
      owner = "kaarmu";
      repo = "typst.vim";
      rev = "97f21818cb8d3d5ed6bb4b672ddb5af975aab71a";
      fetchSubmodules = false;
      sha256 = "sha256-49yHaqDoNbHkkWdfHkIGZpuDonGSXbj4Qzft6HkyFhE=";
    };
    pretty-name = "typst.vim";
    date = "2023-08-17";
  };
  plugin-vim-eunuch = {
    pname = "plugin-vim-eunuch";
    version = "67f3dd32b4dcd1c427085f42ff5f29c7adc645c6";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-eunuch";
      rev = "67f3dd32b4dcd1c427085f42ff5f29c7adc645c6";
      fetchSubmodules = false;
      sha256 = "sha256-PW3HE/ew2oaj5H1JqcBrbzQBSZmgc8eL7rV35wChGMo=";
    };
    pretty-name = "vim-eunuch";
    date = "2023-06-28";
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
    version = "534fd725f2475a9083b032e402c7e73b8a3fc6bb";
    src = fetchFromGitHub {
      owner = "lervag";
      repo = "vimtex";
      rev = "534fd725f2475a9083b032e402c7e73b8a3fc6bb";
      fetchSubmodules = false;
      sha256 = "sha256-ZL6CYqiHEpx/qatYmap9Hc2qO1Je9llulwFUEOS2LkQ=";
    };
    pretty-name = "vimtex";
    date = "2023-08-19";
  };
  plugin-which-key-nvim = {
    pname = "plugin-which-key-nvim";
    version = "7ccf476ebe0445a741b64e36c78a682c1c6118b7";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "7ccf476ebe0445a741b64e36c78a682c1c6118b7";
      fetchSubmodules = false;
      sha256 = "sha256-B1+EHd2eH/EbD5Kip9PfhdPyyGfIkD6rsx0Z3rXvb5w=";
    };
    pretty-name = "which-key.nvim";
    date = "2023-07-28";
  };
  plugin-zen-mode-nvim = {
    pname = "plugin-zen-mode-nvim";
    version = "68f554702de63f4b7b6b6d4bcb10178f41a0acc7";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "zen-mode.nvim";
      rev = "68f554702de63f4b7b6b6d4bcb10178f41a0acc7";
      fetchSubmodules = false;
      sha256 = "sha256-B75JHeXV2zCnBc+M+UHh0w+2uVaOE0bygahkGGUv+yo=";
    };
    pretty-name = "zen-mode.nvim";
    date = "2023-05-22";
  };
  plugin-zoxide-vim = {
    pname = "plugin-zoxide-vim";
    version = "cc5b702cacbcbb4192b2a619c0f9cf6ab6e76936";
    src = fetchFromGitHub {
      owner = "nanotee";
      repo = "zoxide.vim";
      rev = "cc5b702cacbcbb4192b2a619c0f9cf6ab6e76936";
      fetchSubmodules = false;
      sha256 = "sha256-ddA0srgvvXpkr1ASLA6VwIaYQ02oIbpTUY061NOrgTU=";
    };
    pretty-name = "zoxide.vim";
    date = "2023-05-21";
  };
  tree-sitter-just = {
    pname = "tree-sitter-just";
    version = "4e5f5f3ff37b12a1bbf664eb3966b3019e924594";
    src = fetchFromGitHub {
      owner = "IndianBoy42";
      repo = "tree-sitter-just";
      rev = "4e5f5f3ff37b12a1bbf664eb3966b3019e924594";
      fetchSubmodules = false;
      sha256 = "sha256-Qs0Klt9uj6Vgs4vJrjKXYD8nNe8KYdWCnADvogm4/l0=";
    };
    pretty-name = "tree-sitter-just";
    date = "2023-03-18";
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
