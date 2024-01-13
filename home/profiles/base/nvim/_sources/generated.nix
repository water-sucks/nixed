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
    version = "82108e7e31cc6fc223cc5df5cae6d89f70bb199f";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "82108e7e31cc6fc223cc5df5cae6d89f70bb199f";
      fetchSubmodules = false;
      sha256 = "sha256-LokIHQfDzm8GvJCYO3xsG2aSKO65ow5wRySeqIGaU0c=";
    };
    pretty-name = "LuaSnip";
    date = "2024-01-08";
  };
  plugin-Nvim-R = {
    pname = "plugin-Nvim-R";
    version = "0da5685184112eaed434a6d1da1a7ab1297d7360";
    src = fetchFromGitHub {
      owner = "jamespeapen";
      repo = "Nvim-R";
      rev = "0da5685184112eaed434a6d1da1a7ab1297d7360";
      fetchSubmodules = false;
      sha256 = "sha256-fKI2Hmbagey0OJDEPJJCe78t5tkFsOXg9AY96k4TCxw=";
    };
    pretty-name = "Nvim-R";
    date = "2024-01-01";
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
    version = "e48ce1805697e4bb97bc171c081e849a65859244";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "e48ce1805697e4bb97bc171c081e849a65859244";
      fetchSubmodules = false;
      sha256 = "sha256-xguFDEZVEVbIjdd0XnvRBjgB20Ym2ci1F+zw5jcVThk=";
    };
    pretty-name = "bufferline.nvim";
    date = "2023-12-13";
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
    version = "10a8b028c8757167d132b33902156e91ad8ab357";
    src = fetchFromGitHub {
      owner = "water-sucks";
      repo = "darkrose.nvim";
      rev = "10a8b028c8757167d132b33902156e91ad8ab357";
      fetchSubmodules = false;
      sha256 = "sha256-vaNaEbC5g6j1HMLJApPuCEzFC75wjNM4E53NqbaI6dM=";
    };
    pretty-name = "darkrose.nvim";
    date = "2024-01-04";
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
    version = "94b0d24483d56f3777ee0c8dc51675f21709318c";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "94b0d24483d56f3777ee0c8dc51675f21709318c";
      fetchSubmodules = false;
      sha256 = "sha256-9BLTBrS51NSeVN1QiJoIGqid01RTNujI+sGv9A8E+Lc=";
    };
    pretty-name = "dressing.nvim";
    date = "2023-12-26";
  };
  plugin-duck-nvim = {
    pname = "plugin-duck-nvim";
    version = "977b4aa4004726ed3d87b2437f543cef2153b8ea";
    src = fetchFromGitHub {
      owner = "tamton-aquib";
      repo = "duck.nvim";
      rev = "977b4aa4004726ed3d87b2437f543cef2153b8ea";
      fetchSubmodules = false;
      sha256 = "sha256-bw+V5zn/HuOBdlnO/OdYGmnAMSZVwxcFqVa3f09QASw=";
    };
    pretty-name = "duck.nvim";
    date = "2023-11-23";
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
    version = "b65ad58462116785423d81aeb2ee6c8c16f78679";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "flutter-tools.nvim";
      rev = "b65ad58462116785423d81aeb2ee6c8c16f78679";
      fetchSubmodules = false;
      sha256 = "sha256-Asf0RUgKhiCq6sec+kVAVhibU8NQQhlxEGpdleiMP/0=";
    };
    pretty-name = "flutter-tools.nvim";
    date = "2024-01-03";
  };
  plugin-friendly-snippets = {
    pname = "plugin-friendly-snippets";
    version = "69a2c1675b66e002799f5eef803b87a12f593049";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "69a2c1675b66e002799f5eef803b87a12f593049";
      fetchSubmodules = false;
      sha256 = "sha256-ws6Lb5DLFv7nRu7kCFoxM1WkAZ3l3PTbh1lpr1rEKBU=";
    };
    pretty-name = "friendly-snippets";
    date = "2024-01-07";
  };
  plugin-gitsigns-nvim = {
    pname = "plugin-gitsigns-nvim";
    version = "4aaacbf5e5e2218fd05eb75703fe9e0f85335803";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "4aaacbf5e5e2218fd05eb75703fe9e0f85335803";
      fetchSubmodules = false;
      sha256 = "sha256-y8aoZa5UJGP0rgvYPL6NMD3IjbZnnGweZcTBIR5bAxU=";
    };
    pretty-name = "gitsigns.nvim";
    date = "2024-01-12";
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
    version = "6224672ffc44fc1bd95f79792277d95a92a67090";
    src = fetchFromGitHub {
      owner = "MrcJkb";
      repo = "haskell-tools.nvim";
      rev = "6224672ffc44fc1bd95f79792277d95a92a67090";
      fetchSubmodules = false;
      sha256 = "sha256-HJkssRBS4QYftLf+F22V1orD7bVmX3Mk+FkCB94xSIM=";
    };
    pretty-name = "haskell-tools.nvim";
    date = "2024-01-11";
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
    version = "12e92044d313c54c438bd786d11684c88f6f78cd";
    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "indent-blankline.nvim";
      rev = "12e92044d313c54c438bd786d11684c88f6f78cd";
      fetchSubmodules = false;
      sha256 = "sha256-T0tbTyD9+J7OWcvfrPolrXbjGiXzEXhTtgC9Xj3ANFc=";
    };
    pretty-name = "indent-blankline.nvim";
    date = "2024-01-12";
  };
  plugin-lazy-nvim = {
    pname = "plugin-lazy-nvim";
    version = "96584866b9c5e998cbae300594d0ccfd0c464627";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "96584866b9c5e998cbae300594d0ccfd0c464627";
      fetchSubmodules = false;
      sha256 = "sha256-adBcg8iSSO5eRLuZJnmU6m7IiRJXjoMDzN6yH2JrQIc=";
    };
    pretty-name = "lazy.nvim";
    date = "2023-11-04";
  };
  plugin-leap-nvim = {
    pname = "plugin-leap-nvim";
    version = "4a3b0452a4640a4891cf6953bc1eef74ac312ddb";
    src = fetchFromGitHub {
      owner = "ggandor";
      repo = "leap.nvim";
      rev = "4a3b0452a4640a4891cf6953bc1eef74ac312ddb";
      fetchSubmodules = false;
      sha256 = "sha256-8suJZBkq87c9APVP7DqQmW8LywAkArUqWHI+IadJqPs=";
    };
    pretty-name = "leap.nvim";
    date = "2024-01-12";
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
    version = "566b7036f717f3d676362742630518a47f132fff";
    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "566b7036f717f3d676362742630518a47f132fff";
      fetchSubmodules = false;
      sha256 = "sha256-do28EEtiu14NAroVblx8FJLCk8CVNmpm8RaTbcDHtvk=";
    };
    pretty-name = "lualine.nvim";
    date = "2023-12-26";
  };
  plugin-luasnip-latex-snippets-nvim = {
    pname = "plugin-luasnip-latex-snippets-nvim";
    version = "c06cb4b449bdf0e2984543b7c56379409b04d3fc";
    src = fetchFromGitHub {
      owner = "iurimateus";
      repo = "luasnip-latex-snippets.nvim";
      rev = "c06cb4b449bdf0e2984543b7c56379409b04d3fc";
      fetchSubmodules = false;
      sha256 = "sha256-1fKvyhyZg8lMCdapTKitt8jIKEvxf0KZKo5zqdcWhkA=";
    };
    pretty-name = "luasnip-latex-snippets.nvim";
    date = "2023-10-26";
  };
  plugin-lush-nvim = {
    pname = "plugin-lush-nvim";
    version = "e8a58f36c256af65cda36878f6f2024a612154c3";
    src = fetchFromGitHub {
      owner = "rktjmp";
      repo = "lush.nvim";
      rev = "e8a58f36c256af65cda36878f6f2024a612154c3";
      fetchSubmodules = false;
      sha256 = "sha256-oCVRy2GG7hK2PpNp4sfujJRWCBOU4W+/7Os0Uo6v1Dg=";
    };
    pretty-name = "lush.nvim";
    date = "2023-12-29";
  };
  plugin-mini-surround = {
    pname = "plugin-mini-surround";
    version = "7bf8915ba15d7a4f3c2afe7868d3c15a858d73f1";
    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "7bf8915ba15d7a4f3c2afe7868d3c15a858d73f1";
      fetchSubmodules = false;
      sha256 = "sha256-IP2fgaogneUrg1bmTTQCMGliz8xxeocNa3r4MpJtgc0=";
    };
    pretty-name = "mini.surround";
    date = "2023-12-17";
  };
  plugin-neodev-nvim = {
    pname = "plugin-neodev-nvim";
    version = "dde00106b9094f101980b364fae02fd85d357306";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "dde00106b9094f101980b364fae02fd85d357306";
      fetchSubmodules = false;
      sha256 = "sha256-H6O7qnHqr14SfJ36MZX9EbR+lZQpp8YBeVlhlRrPT44=";
    };
    pretty-name = "neodev.nvim";
    date = "2024-01-12";
  };
  plugin-neorg = {
    pname = "plugin-neorg";
    version = "670fc5733b8f79a7e8fecfb723234e8a4a0f54d2";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "670fc5733b8f79a7e8fecfb723234e8a4a0f54d2";
      fetchSubmodules = false;
      sha256 = "sha256-cvrgd/vswq83rwhrzEqHTNg6qRt6ovfGCYE39Am3L+k=";
    };
    pretty-name = "neorg";
    date = "2024-01-12";
  };
  plugin-neorg-telescope = {
    pname = "plugin-neorg-telescope";
    version = "6a7a677c40fa3c348924a4e2a06a513e0b34c056";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg-telescope";
      rev = "6a7a677c40fa3c348924a4e2a06a513e0b34c056";
      fetchSubmodules = false;
      sha256 = "sha256-pgM6uEZGjC4jaqcdQwxhsgUNE/sRqJ++nX+WEvkmphY=";
    };
    pretty-name = "neorg-telescope";
    date = "2023-11-12";
  };
  plugin-noice-nvim = {
    pname = "plugin-noice-nvim";
    version = "92433164e2f7118d4122c7674c3834d9511722ba";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "noice.nvim";
      rev = "92433164e2f7118d4122c7674c3834d9511722ba";
      fetchSubmodules = false;
      sha256 = "sha256-7lgJK5pkMqwIXNeBDsz4B8UAKnkpUvDrHdeG/aSFRzM=";
    };
    pretty-name = "noice.nvim";
    date = "2023-10-25";
  };
  plugin-nui-nvim = {
    pname = "plugin-nui-nvim";
    version = "35da9ca1de0fc4dda96c2e214d93d363c145f418";
    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "35da9ca1de0fc4dda96c2e214d93d363c145f418";
      fetchSubmodules = false;
      sha256 = "sha256-SWG0IQDNXrgWK1ApQSpc2oPKNYgTPend877DQ6FuqUc=";
    };
    pretty-name = "nui.nvim";
    date = "2024-01-05";
  };
  plugin-nvim-autopairs = {
    pname = "plugin-nvim-autopairs";
    version = "9fd41181693dd4106b3e414a822bb6569924de81";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "9fd41181693dd4106b3e414a822bb6569924de81";
      fetchSubmodules = false;
      sha256 = "sha256-H4wCE3snCBQVkiA4+r5VaUrd4bWOhF1lwafngGThm/c=";
    };
    pretty-name = "nvim-autopairs";
    date = "2023-12-20";
  };
  plugin-nvim-cmp = {
    pname = "plugin-nvim-cmp";
    version = "538e37ba87284942c1d76ed38dd497e54e65b891";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "538e37ba87284942c1d76ed38dd497e54e65b891";
      fetchSubmodules = false;
      sha256 = "sha256-BtAYRYn6m788zAq/mNnbAzAxp1TGf9QkRE0hSOp9sdc=";
    };
    pretty-name = "nvim-cmp";
    date = "2023-12-14";
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
    version = "aad46274f09ba29933e4cef2257cdda5ec19cf7a";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap";
      rev = "aad46274f09ba29933e4cef2257cdda5ec19cf7a";
      fetchSubmodules = false;
      sha256 = "sha256-Eon+YxYNzIYW8MeRu2qIrnM/txPvhKx3jvxlIjVo7yo=";
    };
    pretty-name = "nvim-dap";
    date = "2024-01-09";
  };
  plugin-nvim-dap-go = {
    pname = "plugin-nvim-dap-go";
    version = "a5cc8dcad43f0732585d4793deb02a25c4afb766";
    src = fetchFromGitHub {
      owner = "leoluz";
      repo = "nvim-dap-go";
      rev = "a5cc8dcad43f0732585d4793deb02a25c4afb766";
      fetchSubmodules = false;
      sha256 = "sha256-uP9zTgNj1jza4xlC1Np4WLqV61tXTQR3s1bWdVtJ1QI=";
    };
    pretty-name = "nvim-dap-go";
    date = "2023-10-06";
  };
  plugin-nvim-dap-python = {
    pname = "plugin-nvim-dap-python";
    version = "091e4ae00a12085f9ed4200a3cd04af7179b8a23";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap-python";
      rev = "091e4ae00a12085f9ed4200a3cd04af7179b8a23";
      fetchSubmodules = false;
      sha256 = "sha256-V/88NHqW/rpHWC2m1dnVZWo3Va7wSPqw3FpEM1+lKgo=";
    };
    pretty-name = "nvim-dap-python";
    date = "2023-12-19";
  };
  plugin-nvim-dap-ui = {
    pname = "plugin-nvim-dap-ui";
    version = "7e5e16427aaf814dc2d58e1b219def9ef2fa2435";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-dap-ui";
      rev = "7e5e16427aaf814dc2d58e1b219def9ef2fa2435";
      fetchSubmodules = false;
      sha256 = "sha256-6PoiV6l+RFfwLH5IkaAwejamZGX9Xey3O0bYeC8a9z0=";
    };
    pretty-name = "nvim-dap-ui";
    date = "2024-01-04";
  };
  plugin-nvim-dap-virtual-text = {
    pname = "plugin-nvim-dap-virtual-text";
    version = "d4542ac257d3c7ee4131350db6179ae6340ce40b";
    src = fetchFromGitHub {
      owner = "theHamsta";
      repo = "nvim-dap-virtual-text";
      rev = "d4542ac257d3c7ee4131350db6179ae6340ce40b";
      fetchSubmodules = false;
      sha256 = "sha256-IJMdDcrfsNfxd4rvLVCD1L2FL7Tzm6dV8c0mtEo98vU=";
    };
    pretty-name = "nvim-dap-virtual-text";
    date = "2023-12-28";
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
    version = "66b5ace68a5d1c45fdfb1afa8d847e87af2aa1f8";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-jdtls";
      rev = "66b5ace68a5d1c45fdfb1afa8d847e87af2aa1f8";
      fetchSubmodules = false;
      sha256 = "sha256-xoMcOUo64G0YwB4I3SCT8jdyWwBTj8U2KjXouqVWzLM=";
    };
    pretty-name = "nvim-jdtls";
    date = "2023-11-28";
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
    version = "e47ccfae775f0d572ef0f3a7d245f043b259dafc";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "e47ccfae775f0d572ef0f3a7d245f043b259dafc";
      fetchSubmodules = false;
      sha256 = "sha256-cCN+x2JGykO4td2mPxuooDfUZ28+94/i0Z2frO3PtCU=";
    };
    pretty-name = "nvim-lspconfig";
    date = "2024-01-12";
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
    version = "b8c3a23e76f861d5f0ff3f6714b9b56388984d0b";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "b8c3a23e76f861d5f0ff3f6714b9b56388984d0b";
      fetchSubmodules = false;
      sha256 = "sha256-82mEVcnrhPuuBGeZCnB/srRkVeSM+3Q66CWiR2gqdW0=";
    };
    pretty-name = "nvim-tree.lua";
    date = "2024-01-08";
  };
  plugin-nvim-ts-autotag = {
    pname = "plugin-nvim-ts-autotag";
    version = "8515e48a277a2f4947d91004d9aa92c29fdc5e18";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-ts-autotag";
      rev = "8515e48a277a2f4947d91004d9aa92c29fdc5e18";
      fetchSubmodules = false;
      sha256 = "sha256-O10jzgh4aznTQ1EIEL8OGBsgjN9arsM6XZC2FBKevS4=";
    };
    pretty-name = "nvim-ts-autotag";
    date = "2023-12-10";
  };
  plugin-nvim-ts-context-commentstring = {
    pname = "plugin-nvim-ts-context-commentstring";
    version = "1277b4a1f451b0f18c0790e1a7f12e1e5fdebfee";
    src = fetchFromGitHub {
      owner = "JoosepAlviste";
      repo = "nvim-ts-context-commentstring";
      rev = "1277b4a1f451b0f18c0790e1a7f12e1e5fdebfee";
      fetchSubmodules = false;
      sha256 = "sha256-60kCTkN8LqzL3xzkgIdfr5GpgMBnnX9EMKbmM9B6www=";
    };
    pretty-name = "nvim-ts-context-commentstring";
    date = "2023-11-30";
  };
  plugin-nvim-ufo = {
    pname = "plugin-nvim-ufo";
    version = "abdc3a5a1b8054195a10b9ce5f85a43134a607b9";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "nvim-ufo";
      rev = "abdc3a5a1b8054195a10b9ce5f85a43134a607b9";
      fetchSubmodules = false;
      sha256 = "sha256-iX69BSTPybhAYVXizucBGXT5kH1RyL0EhC654F96A6k=";
    };
    pretty-name = "nvim-ufo";
    date = "2024-01-13";
  };
  plugin-nvim-unception = {
    pname = "plugin-nvim-unception";
    version = "23085504347a710e43d7921ccb839fda8f1a70c1";
    src = fetchFromGitHub {
      owner = "samjwill";
      repo = "nvim-unception";
      rev = "23085504347a710e43d7921ccb839fda8f1a70c1";
      fetchSubmodules = false;
      sha256 = "sha256-L5SYBMgCdcbFyRSMxPuzg/upHigFX7eR4JbeUN/M+VI=";
    };
    pretty-name = "nvim-unception";
    date = "2023-11-30";
  };
  plugin-nvim-web-devicons = {
    pname = "plugin-nvim-web-devicons";
    version = "584038666b0d8124d452a2e8ea9e38e6d6e56490";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "584038666b0d8124d452a2e8ea9e38e6d6e56490";
      fetchSubmodules = false;
      sha256 = "sha256-OaDvbDvvBxyKLpBYkP04jhE+Ftd5g0ITdYgLfoFfIbQ=";
    };
    pretty-name = "nvim-web-devicons";
    date = "2024-01-13";
  };
  plugin-one-small-step-for-vimkind = {
    pname = "plugin-one-small-step-for-vimkind";
    version = "aaee281bdaa3141d9d0cdb3dec468532da61124f";
    src = fetchFromGitHub {
      owner = "jbyuki";
      repo = "one-small-step-for-vimkind";
      rev = "aaee281bdaa3141d9d0cdb3dec468532da61124f";
      fetchSubmodules = false;
      sha256 = "sha256-VACSEN50FSzQmAjpFW45yXvc68wnRhzfboYvps3sOBE=";
    };
    pretty-name = "one-small-step-for-vimkind";
    date = "2023-12-23";
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
    version = "55d9fe89e33efd26f532ef20223e5f9430c8b0c0";
    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "55d9fe89e33efd26f532ef20223e5f9430c8b0c0";
      fetchSubmodules = false;
      sha256 = "sha256-f8YVaXMG0ZyW6iotAgnftaYULnL69UPolRad6RTG27g=";
    };
    pretty-name = "plenary.nvim";
    date = "2023-11-30";
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
    version = "94f6f03c6c1e2aab551aacdf0c1e597a7269abb6";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "promise-async";
      rev = "94f6f03c6c1e2aab551aacdf0c1e597a7269abb6";
      fetchSubmodules = false;
      sha256 = "sha256-JikpNIRxiGzBZ/0M8CBxqR6GW5pY2kOHRKrfwqDcWzU=";
    };
    pretty-name = "promise-async";
    date = "2023-11-28";
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
    version = "da8b3d485975a8727bea127518b65c980521ae22";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "da8b3d485975a8727bea127518b65c980521ae22";
      fetchSubmodules = false;
      sha256 = "sha256-krsJJPNMtylBYyBJE29LodQAHyJc0fpeglZ6qFOtJVQ=";
    };
    pretty-name = "telescope.nvim";
    date = "2024-01-12";
  };
  plugin-todo-comments-nvim = {
    pname = "plugin-todo-comments-nvim";
    version = "4a6737a8d70fe1ac55c64dfa47fcb189ca431872";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "todo-comments.nvim";
      rev = "4a6737a8d70fe1ac55c64dfa47fcb189ca431872";
      fetchSubmodules = false;
      sha256 = "sha256-Z041A05I2zESNV+aSghtnijEUeDqPjLQxiOcCVVOwfE=";
    };
    pretty-name = "todo-comments.nvim";
    date = "2023-10-25";
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
    version = "630bb8b7faf1fe02c253673a37a70c135ad43a40";
    src = fetchFromGitHub {
      owner = "kaarmu";
      repo = "typst.vim";
      rev = "630bb8b7faf1fe02c253673a37a70c135ad43a40";
      fetchSubmodules = false;
      sha256 = "sha256-lm6V0USAzFEIpziGC1kx7X4rqYOXCfztte9w62MlZp8=";
    };
    pretty-name = "typst.vim";
    date = "2024-01-04";
  };
  plugin-vim-eunuch = {
    pname = "plugin-vim-eunuch";
    version = "d456ff46f0b1800b34720b3f791524da577d9310";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-eunuch";
      rev = "d456ff46f0b1800b34720b3f791524da577d9310";
      fetchSubmodules = false;
      sha256 = "sha256-hXkPncPQXNZP5CQWEUQGSQai8glVJZG01GzVzTlXhYQ=";
    };
    pretty-name = "vim-eunuch";
    date = "2024-01-04";
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
    version = "f9b19d09ee6f0ba70dad0b5c2e710dd700681000";
    src = fetchFromGitHub {
      owner = "lervag";
      repo = "vimtex";
      rev = "f9b19d09ee6f0ba70dad0b5c2e710dd700681000";
      fetchSubmodules = false;
      sha256 = "sha256-UfFa+Blj1X8gpt+tzIZFlv3fFVjsTf+53xOJzbmakvY=";
    };
    pretty-name = "vimtex";
    date = "2024-01-02";
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
    version = "50e2e2a36cc97847d9ab3b1a3555ba2ef6839b50";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "zen-mode.nvim";
      rev = "50e2e2a36cc97847d9ab3b1a3555ba2ef6839b50";
      fetchSubmodules = false;
      sha256 = "sha256-+tRLfktRFecEozRa5iBc+LNrB1GuztGATM9HWdkJrPY=";
    };
    pretty-name = "zen-mode.nvim";
    date = "2023-10-20";
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
    version = "f807ab33c36651ecb503a291aed933932754864d";
    src = fetchFromGitHub {
      owner = "IndianBoy42";
      repo = "tree-sitter-just";
      rev = "f807ab33c36651ecb503a291aed933932754864d";
      fetchSubmodules = false;
      sha256 = "sha256-iK+MpyK5pQ/sYT2CHYmeI0k231HwHdZ80ij1cqlO5Nk=";
    };
    pretty-name = "tree-sitter-just";
    date = "2024-01-11";
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
