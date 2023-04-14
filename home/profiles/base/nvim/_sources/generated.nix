# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  "'plugin-Comment.nvim'" = {
    pname = "'plugin-Comment.nvim'";
    version = "a89339ffbee677ab0521a483b6dac7e2e67c907e";
    src = fetchFromGitHub {
      owner = "numToStr";
      repo = "Comment.nvim";
      rev = "a89339ffbee677ab0521a483b6dac7e2e67c907e";
      fetchSubmodules = false;
      sha256 = "sha256-Zrxf50YlAaCERZFAbg4Ece+wI4buHl+K2IIw0qpASGA=";
    };
    date = "2023-04-12";
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
    version = "a6355b12a3b7da0aef71f02560e17ff480182b97";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "a6355b12a3b7da0aef71f02560e17ff480182b97";
      fetchSubmodules = false;
      sha256 = "sha256-K2otSlcLyZ1r/86mIlrCK8hoV9IP8bnU6yC9QV2Yw8E=";
    };
    date = "2023-04-14";
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
    version = "243893ba9d5d1049dd451a25cab32ec7f8f67bcf";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "243893ba9d5d1049dd451a25cab32ec7f8f67bcf";
      fetchSubmodules = false;
      sha256 = "sha256-WZAJiDm77rS9S4tN7dz03jjnv1jFvTur6dLg8OkYVM4=";
    };
    date = "2023-04-15";
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
    version = "af88e700417c6449719fc77f6f3745f88e42d5da";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-cmdline";
      rev = "af88e700417c6449719fc77f6f3745f88e42d5da";
      fetchSubmodules = false;
      sha256 = "sha256-K0oituxb4z916VFqK1dsFtEG8ajTpNZSqmcdFb9fkx8=";
    };
    date = "2023-04-15";
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
  "'plugin-darkrose.nvim'" = {
    pname = "'plugin-darkrose.nvim'";
    version = "a8323c261ff7c4cb38d86d001e10b50a824f7bd9";
    src = fetchFromGitHub {
      owner = "water-sucks";
      repo = "darkrose.nvim";
      rev = "a8323c261ff7c4cb38d86d001e10b50a824f7bd9";
      fetchSubmodules = false;
      sha256 = "sha256-SNzQQyLPgz67F2yB8/sOH73Cx7p1AuBbpUelxarbv5M=";
    };
    date = "2023-03-30";
  };
  "'plugin-dial.nvim'" = {
    pname = "'plugin-dial.nvim'";
    version = "747d6fd009dbc1904627868125e16cfa7c524b0d";
    src = fetchFromGitHub {
      owner = "monaqa";
      repo = "dial.nvim";
      rev = "747d6fd009dbc1904627868125e16cfa7c524b0d";
      fetchSubmodules = false;
      sha256 = "sha256-hDDvYDK/d9SqeBGt2NBI/dbrMwauGKckYoEbCeUytqc=";
    };
    date = "2023-04-10";
  };
  "'plugin-diffview.nvim'" = {
    pname = "'plugin-diffview.nvim'";
    version = "63720aa5a70ce4aa386be407d0e612cd9e63861a";
    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "63720aa5a70ce4aa386be407d0e612cd9e63861a";
      fetchSubmodules = false;
      sha256 = "sha256-rtJafQUurQP4sVoKZlC8nrl8OwfY7jKI/RyfNfY8Fik=";
    };
    date = "2023-04-11";
  };
  "'plugin-dressing.nvim'" = {
    pname = "'plugin-dressing.nvim'";
    version = "0e3e1eba147fee6e638ac1ac28f0495bcde17319";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "0e3e1eba147fee6e638ac1ac28f0495bcde17319";
      fetchSubmodules = false;
      sha256 = "sha256-8HSxDkHxrjNCT9OpI3Fxt4bwLM49UmdH2TtQWGzyzXo=";
    };
    date = "2023-04-12";
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
  "'plugin-flutter-tools.nvim'" = {
    pname = "'plugin-flutter-tools.nvim'";
    version = "b64892ec95b4454f1080b62fef170338f92fc414";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "flutter-tools.nvim";
      rev = "b64892ec95b4454f1080b62fef170338f92fc414";
      fetchSubmodules = false;
      sha256 = "sha256-6oMlwOSLXUWX1a0Gu9BL0+AvP7FVKJTr9LNtNKKsjaQ=";
    };
    date = "2023-04-11";
  };
  "'plugin-friendly-snippets'" = {
    pname = "'plugin-friendly-snippets'";
    version = "8f26df063f0fdabc27845c7aed56db9102d385e8";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "8f26df063f0fdabc27845c7aed56db9102d385e8";
      fetchSubmodules = false;
      sha256 = "sha256-X26M1O1yFEA/pEPnC82OMszvGAhnjoUn9PYSMLweD64=";
    };
    date = "2023-04-14";
  };
  "'plugin-gitsigns.nvim'" = {
    pname = "'plugin-gitsigns.nvim'";
    version = "372d5cb485f2062ac74abc5b33054abac21d8b58";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "372d5cb485f2062ac74abc5b33054abac21d8b58";
      fetchSubmodules = false;
      sha256 = "sha256-nUVVEO06giiJURxT7qNHbX9C1ljZtchUeOdEoCQBk3E=";
    };
    date = "2023-04-04";
  };
  "'plugin-guess-indent.nvim'" = {
    pname = "'plugin-guess-indent.nvim'";
    version = "b8ae749fce17aa4c267eec80a6984130b94f80b2";
    src = fetchFromGitHub {
      owner = "NMAC427";
      repo = "guess-indent.nvim";
      rev = "b8ae749fce17aa4c267eec80a6984130b94f80b2";
      fetchSubmodules = false;
      sha256 = "sha256-fqQfyUaQBcVZ7bcFeWbLyse9spw97Dqt/B4JGPnaYcQ=";
    };
    date = "2023-04-03";
  };
  "'plugin-haskell-tools.nvim'" = {
    pname = "'plugin-haskell-tools.nvim'";
    version = "c76579fccca958e20d16cdd70c5ab6c6e5292f6b";
    src = fetchFromGitHub {
      owner = "MrcJkb";
      repo = "haskell-tools.nvim";
      rev = "c76579fccca958e20d16cdd70c5ab6c6e5292f6b";
      fetchSubmodules = false;
      sha256 = "sha256-F5hs05vdQE8h9ZMAtKpm8MkTrr7nPPfbAWTwO8paWzw=";
    };
    date = "2023-04-15";
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
    version = "018bd04d80c9a73d399c1061fa0c3b14a7614399";
    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "indent-blankline.nvim";
      rev = "018bd04d80c9a73d399c1061fa0c3b14a7614399";
      fetchSubmodules = false;
      sha256 = "sha256-dBm0vnza+fBYxlgUDR1/57GZ+kd7CUVgkQIcZEFWl9k=";
    };
    date = "2023-02-20";
  };
  "'plugin-lazy.nvim'" = {
    pname = "'plugin-lazy.nvim'";
    version = "57cce98dfdb2f2dd05a0567d89811e6d0505e13b";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "57cce98dfdb2f2dd05a0567d89811e6d0505e13b";
      fetchSubmodules = false;
      sha256 = "sha256-L84yAak8i79a+bfAFDUi0C8x12MJGVFzMLVr0maMXoE=";
    };
    date = "2023-03-25";
  };
  "'plugin-leap.nvim'" = {
    pname = "'plugin-leap.nvim'";
    version = "98a72ad93c629c49bd7127d342960cc1b159b620";
    src = fetchFromGitHub {
      owner = "ggandor";
      repo = "leap.nvim";
      rev = "98a72ad93c629c49bd7127d342960cc1b159b620";
      fetchSubmodules = false;
      sha256 = "sha256-CDNaQCbEQZQGklIQ8zvX+kL8AgFz4/otuRf9U5qZYP0=";
    };
    date = "2023-04-09";
  };
  "'plugin-lsp_signature.nvim'" = {
    pname = "'plugin-lsp_signature.nvim'";
    version = "775c0cdf5be5adcc08f27c9058edb00b5b517520";
    src = fetchFromGitHub {
      owner = "ray-x";
      repo = "lsp_signature.nvim";
      rev = "775c0cdf5be5adcc08f27c9058edb00b5b517520";
      fetchSubmodules = false;
      sha256 = "sha256-edPNVM4OhN4eBkBbhjkA4kpfxdg8FND23JhGLKjAd6w=";
    };
    date = "2023-04-08";
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
    version = "84ffb80e452d95e2c46fa29a98ea11a240f7843e";
    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "84ffb80e452d95e2c46fa29a98ea11a240f7843e";
      fetchSubmodules = false;
      sha256 = "sha256-u79S3wFJ72vcLp7F0f/s21Kvl/pMRI8CkB+8usPQob4=";
    };
    date = "2023-04-09";
  };
  "'plugin-luasnip-latex-snippets.nvim'" = {
    pname = "'plugin-luasnip-latex-snippets.nvim'";
    version = "8fe303e70f31e24d5e165c8e3e0775d00f96007a";
    src = fetchFromGitHub {
      owner = "iurimateus";
      repo = "luasnip-latex-snippets.nvim";
      rev = "8fe303e70f31e24d5e165c8e3e0775d00f96007a";
      fetchSubmodules = false;
      sha256 = "sha256-gIYDDX7oSm/czuhCVSWDFR/xPEz73aGpkBPXglaNr3M=";
    };
    date = "2023-03-19";
  };
  "'plugin-lush.nvim'" = {
    pname = "'plugin-lush.nvim'";
    version = "39d91f09cde4c96f09015716fce6f91bca1eaa9a";
    src = fetchFromGitHub {
      owner = "rktjmp";
      repo = "lush.nvim";
      rev = "39d91f09cde4c96f09015716fce6f91bca1eaa9a";
      fetchSubmodules = false;
      sha256 = "sha256-lfd6+M8ymtZdCCTC0H8j0kTk5xCIEDymoi5J3p+u/SA=";
    };
    date = "2023-04-02";
  };
  "'plugin-mini.surround'" = {
    pname = "'plugin-mini.surround'";
    version = "cc962bae0890217f8473390abc8cef988519d370";
    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "cc962bae0890217f8473390abc8cef988519d370";
      fetchSubmodules = false;
      sha256 = "sha256-aL8xMH2uJHRgsB6BlCSbQhdhOioikP/YRYnG9VjzxSI=";
    };
    date = "2023-04-01";
  };
  "'plugin-neodev.nvim'" = {
    pname = "'plugin-neodev.nvim'";
    version = "864b35006d3de24c60e44b566de8018f919b13e6";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "864b35006d3de24c60e44b566de8018f919b13e6";
      fetchSubmodules = false;
      sha256 = "sha256-d7M2ZhWsu541FgviJ7UW2Ypl16O1qR5zkjV5flfDugc=";
    };
    date = "2023-04-05";
  };
  "'plugin-neorg'" = {
    pname = "'plugin-neorg'";
    version = "1fecaab548161abd0238b3d16c81e69c7d14252a";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "1fecaab548161abd0238b3d16c81e69c7d14252a";
      fetchSubmodules = false;
      sha256 = "sha256-zZ4ufS+wsYLEnFgrTku+/7SBUIk14vV7QY5H1iKW77U=";
    };
    date = "2023-04-15";
  };
  "'plugin-neorg-telescope'" = {
    pname = "'plugin-neorg-telescope'";
    version = "7d9f89375421401c41c3c270a2acad0b44ee0331";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg-telescope";
      rev = "7d9f89375421401c41c3c270a2acad0b44ee0331";
      fetchSubmodules = false;
      sha256 = "sha256-zSaz7C0++OosLcMt4tkRQ8q0liFX0IgPHgUXJhPVlus=";
    };
    date = "2023-04-08";
  };
  "'plugin-noice.nvim'" = {
    pname = "'plugin-noice.nvim'";
    version = "1da4edfba3e9278e98fc9723d7235d9ab3889744";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "noice.nvim";
      rev = "1da4edfba3e9278e98fc9723d7235d9ab3889744";
      fetchSubmodules = false;
      sha256 = "sha256-05/yAwaoz7mAAKXP1CsRXUoqsTW/z1wAT0OodiYJw6M=";
    };
    date = "2023-03-26";
  };
  "'plugin-nui.nvim'" = {
    pname = "'plugin-nui.nvim'";
    version = "ecd9def93891b9260b15b5fcef542eaabf4145c9";
    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "ecd9def93891b9260b15b5fcef542eaabf4145c9";
      fetchSubmodules = false;
      sha256 = "sha256-IlbOt9fCBklx3i8OY2DZwa/8OV+yGOLBm8HUeVLseIw=";
    };
    date = "2023-04-12";
  };
  "'plugin-null-ls.nvim'" = {
    pname = "'plugin-null-ls.nvim'";
    version = "f8ffcd7cb8fb3325c711d459152ef132b5b65aed";
    src = fetchFromGitHub {
      owner = "jose-elias-alvarez";
      repo = "null-ls.nvim";
      rev = "f8ffcd7cb8fb3325c711d459152ef132b5b65aed";
      fetchSubmodules = false;
      sha256 = "sha256-L3inC3YpiNdFdArqHdqR0n7g//moTvLYybQafFgkbDE=";
    };
    date = "2023-04-11";
  };
  "'plugin-nvim-autopairs'" = {
    pname = "'plugin-nvim-autopairs'";
    version = "7470af886ffb3df32800e5ef9c072a6cd825770d";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "7470af886ffb3df32800e5ef9c072a6cd825770d";
      fetchSubmodules = false;
      sha256 = "sha256-Z9m+6qhxdUNe5zQga2q+GXjWmJQBgCL8PN2LPCP9t4I=";
    };
    date = "2023-04-09";
  };
  "'plugin-nvim-cmp'" = {
    pname = "'plugin-nvim-cmp'";
    version = "777450fd0ae289463a14481673e26246b5e38bf2";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "777450fd0ae289463a14481673e26246b5e38bf2";
      fetchSubmodules = false;
      sha256 = "sha256-CoHGIiZrhRAHZ/Er0JSQMapI7jwllNF5OysLlx2QEik=";
    };
    date = "2023-03-17";
  };
  "'plugin-nvim-colorizer.lua'" = {
    pname = "'plugin-nvim-colorizer.lua'";
    version = "dde3084106a70b9a79d48f426f6d6fec6fd203f7";
    src = fetchFromGitHub {
      owner = "NvChad";
      repo = "nvim-colorizer.lua";
      rev = "dde3084106a70b9a79d48f426f6d6fec6fd203f7";
      fetchSubmodules = false;
      sha256 = "sha256-hShQabr+UafsP+yicWkHycWLTbPhOpRpoa9oTMMVZ9o=";
    };
    date = "2023-02-27";
  };
  "'plugin-nvim-dap'" = {
    pname = "'plugin-nvim-dap'";
    version = "debd7c2f80eaf20c5f5df25db8d8c1b9b18f4421";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap";
      rev = "debd7c2f80eaf20c5f5df25db8d8c1b9b18f4421";
      fetchSubmodules = false;
      sha256 = "sha256-7pPMW09KFZzLoDoV6NxAyQccwLSFL5GT6Hnlf3xjm0A=";
    };
    date = "2023-04-07";
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
    version = "972b8b8b65823c433ee834ed02a7f06edf590dfc";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap-python";
      rev = "972b8b8b65823c433ee834ed02a7f06edf590dfc";
      fetchSubmodules = false;
      sha256 = "sha256-e+CrBal4/uQxavtls8jscA9tjREocr/KBxrB7v3VjpQ=";
    };
    date = "2023-04-05";
  };
  "'plugin-nvim-dap-ui'" = {
    pname = "'plugin-nvim-dap-ui'";
    version = "286f682f366fbc652b38dff893569374e9433dd3";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-dap-ui";
      rev = "286f682f366fbc652b38dff893569374e9433dd3";
      fetchSubmodules = false;
      sha256 = "sha256-kQi9nEKVLaYUJqx2Cohilf9/hPhy3Y7jIaguGHckpc0=";
    };
    date = "2023-04-09";
  };
  "'plugin-nvim-dap-virtual-text'" = {
    pname = "'plugin-nvim-dap-virtual-text'";
    version = "9dc45a6eb33871f4c5cb2ba08fa307467657471e";
    src = fetchFromGitHub {
      owner = "theHamsta";
      repo = "nvim-dap-virtual-text";
      rev = "9dc45a6eb33871f4c5cb2ba08fa307467657471e";
      fetchSubmodules = false;
      sha256 = "sha256-JUnxQtnsUHiAdjr21udrvupmoP+uvDJqDIj+LJEKSBY=";
    };
    date = "2023-04-03";
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
    version = "e52efca5d4f5536533d447ec0d97e4d525b37ace";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "e52efca5d4f5536533d447ec0d97e4d525b37ace";
      fetchSubmodules = false;
      sha256 = "sha256-ZqCwGpSmLhfnWYNdgrkvGXOv44wmEUVhfuo+i/cUfck=";
    };
    date = "2023-04-14";
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
    version = "6ad5c26f4d44791699c5538d9773cb141ba033e7";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "6ad5c26f4d44791699c5538d9773cb141ba033e7";
      fetchSubmodules = false;
      sha256 = "sha256-+TqogQLx8IHGxEkkBVBm1g2CZgKzaG5G2GPICTJNA1A=";
    };
    date = "2023-04-15";
  };
  "'plugin-nvim-ts-autotag'" = {
    pname = "'plugin-nvim-ts-autotag'";
    version = "cac97f3b47bcb927db6d1d784c0c323056506ef3";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-ts-autotag";
      rev = "cac97f3b47bcb927db6d1d784c0c323056506ef3";
      fetchSubmodules = false;
      sha256 = "sha256-qi1PF75HeaAkHAvsinyXtfvggE12agUNnx7mrSsBiDo=";
    };
    date = "2023-04-13";
  };
  "'plugin-nvim-ts-context-commentstring'" = {
    pname = "'plugin-nvim-ts-context-commentstring'";
    version = "729d83ecb990dc2b30272833c213cc6d49ed5214";
    src = fetchFromGitHub {
      owner = "JoosepAlviste";
      repo = "nvim-ts-context-commentstring";
      rev = "729d83ecb990dc2b30272833c213cc6d49ed5214";
      fetchSubmodules = false;
      sha256 = "sha256-cJ8a6h6mh6v6fzRULPZBbdlbQi97ngjeoc4yzc63rrU=";
    };
    date = "2023-03-05";
  };
  "'plugin-nvim-ufo'" = {
    pname = "'plugin-nvim-ufo'";
    version = "9e829d5cfa3de6a2ff561d86399772b0339ae49d";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "nvim-ufo";
      rev = "9e829d5cfa3de6a2ff561d86399772b0339ae49d";
      fetchSubmodules = false;
      sha256 = "sha256-3tEC6JWqs32VrINH6YYrQzD6yDtiyTiMVPxWLSfOirs=";
    };
    date = "2023-03-03";
  };
  "'plugin-nvim-unception'" = {
    pname = "'plugin-nvim-unception'";
    version = "0cbf11a6c5c4314e88245b69d460f85f30885d2e";
    src = fetchFromGitHub {
      owner = "samjwill";
      repo = "nvim-unception";
      rev = "0cbf11a6c5c4314e88245b69d460f85f30885d2e";
      fetchSubmodules = false;
      sha256 = "sha256-DLRiD+N+RqE1ig/Tysfpe0/UqyrVhwm9R/y8BZkd3ok=";
    };
    date = "2023-04-11";
  };
  "'plugin-nvim-web-devicons'" = {
    pname = "'plugin-nvim-web-devicons'";
    version = "4ec26d67d419c12a4abaea02f1b6c57b40c08d7e";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "4ec26d67d419c12a4abaea02f1b6c57b40c08d7e";
      fetchSubmodules = false;
      sha256 = "sha256-lAjk2Kpyxabe21ut7xCvhE2+we8hsEZWpcJrYLbhWqM=";
    };
    date = "2023-04-11";
  };
  "'plugin-one-small-step-for-vimkind'" = {
    pname = "'plugin-one-small-step-for-vimkind'";
    version = "1a437dfe0dd306a52524e1e1a9dd8622edb20525";
    src = fetchFromGitHub {
      owner = "jbyuki";
      repo = "one-small-step-for-vimkind";
      rev = "1a437dfe0dd306a52524e1e1a9dd8622edb20525";
      fetchSubmodules = false;
      sha256 = "sha256-WYfHwFtj1sPgk/a4n64EjoIgLMsgzhIe0gMU5RLZjrg=";
    };
    date = "2023-04-12";
  };
  "'plugin-playground'" = {
    pname = "'plugin-playground'";
    version = "934cb4c4adc2e7f4f351846a63c9532018c996ed";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "playground";
      rev = "934cb4c4adc2e7f4f351846a63c9532018c996ed";
      fetchSubmodules = false;
      sha256 = "sha256-we9iq0Jqi5NzXr0Wx11J5uT7FeP26qJU7bVfnPto3Og=";
    };
    date = "2023-04-09";
  };
  "'plugin-plenary.nvim'" = {
    pname = "'plugin-plenary.nvim'";
    version = "9ac3e9541bbabd9d73663d757e4fe48a675bb054";
    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "9ac3e9541bbabd9d73663d757e4fe48a675bb054";
      fetchSubmodules = false;
      sha256 = "sha256-tG+BrCgE1L7QMbchSzjLfQfpI09uTQXbx7OeFuVEcDQ=";
    };
    date = "2023-04-10";
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
    version = "8c6bad7d22eef1b71144b401c9f74ed01526a4fb";
    src = fetchFromGitHub {
      owner = "ahmedkhalf";
      repo = "project.nvim";
      rev = "8c6bad7d22eef1b71144b401c9f74ed01526a4fb";
      fetchSubmodules = false;
      sha256 = "sha256-avV3wMiDbraxW4mqlEsKy0oeewaRj9Q33K8NzWoaptU=";
    };
    date = "2023-04-03";
  };
  "'plugin-promise-async'" = {
    pname = "'plugin-promise-async'";
    version = "e94f35161b8c5d4a4ca3b6ff93dd073eb9214c0e";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "promise-async";
      rev = "e94f35161b8c5d4a4ca3b6ff93dd073eb9214c0e";
      fetchSubmodules = false;
      sha256 = "sha256-TR8DbOJSZuIeqaOx6sMrs3mBc+yYnWyEzhbasQvvWzE=";
    };
    date = "2023-04-09";
  };
  "'plugin-rust-tools.nvim'" = {
    pname = "'plugin-rust-tools.nvim'";
    version = "71d2cf67b5ed120a0e31b2c8adb210dd2834242f";
    src = fetchFromGitHub {
      owner = "simrat39";
      repo = "rust-tools.nvim";
      rev = "71d2cf67b5ed120a0e31b2c8adb210dd2834242f";
      fetchSubmodules = false;
      sha256 = "sha256-Cuk/vdoviB9ibt2rrkNRmNFy4S+6czhbExmIjTJRdZM=";
    };
    date = "2023-02-20";
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
    version = "c789da6968337d2a61104a929880b5f144e02855";
    src = fetchFromGitHub {
      owner = "sQVe";
      repo = "sort.nvim";
      rev = "c789da6968337d2a61104a929880b5f144e02855";
      fetchSubmodules = false;
      sha256 = "sha256-xncv1vuSoxLEFoWUC2RR5wlzXvrPBd2Fpl2di+EGMTU=";
    };
    date = "2023-04-12";
  };
  "'plugin-telescope.nvim'" = {
    pname = "'plugin-telescope.nvim'";
    version = "6258d50b09f9ae087317e392efe7c05a7323492d";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "6258d50b09f9ae087317e392efe7c05a7323492d";
      fetchSubmodules = false;
      sha256 = "sha256-UMidzUf2nhG577Minzm3QYu0ZNPoK/rXEyUdvZ/5nFw=";
    };
    date = "2023-04-10";
  };
  "'plugin-trouble.nvim'" = {
    pname = "'plugin-trouble.nvim'";
    version = "2ae7237c2917d661f458443c9a88680f8ca2d7b2";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "2ae7237c2917d661f458443c9a88680f8ca2d7b2";
      fetchSubmodules = false;
      sha256 = "sha256-uw/wfMKoFN2sHw/99ZcqGKJ3jQVP9pkDHqDaXaYn3CA=";
    };
    date = "2023-03-26";
  };
  "'plugin-twilight.nvim'" = {
    pname = "'plugin-twilight.nvim'";
    version = "2e13bd1886562b737f38c418ed542677b41ef5cb";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "twilight.nvim";
      rev = "2e13bd1886562b737f38c418ed542677b41ef5cb";
      fetchSubmodules = false;
      sha256 = "sha256-5BbhpoaZPy8I9v1PBPiFbQMlzOUHr9iMsYG2n0bKbjw=";
    };
    date = "2023-03-19";
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
    version = "c7b1cf1dd6747cef5340d74455061461c0f2eab5";
    src = fetchFromGitHub {
      owner = "lervag";
      repo = "vimtex";
      rev = "c7b1cf1dd6747cef5340d74455061461c0f2eab5";
      fetchSubmodules = false;
      sha256 = "sha256-XFFLlcfFRnIYS2JiRb0kKwb9vvSw8eimbR4fa/G0a2k=";
    };
    date = "2023-04-14";
  };
  "'plugin-which-key.nvim'" = {
    pname = "'plugin-which-key.nvim'";
    version = "4b73390eec680b4c061ea175eb32c0ff3412271d";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "4b73390eec680b4c061ea175eb32c0ff3412271d";
      fetchSubmodules = false;
      sha256 = "sha256-R52U1Aa30KgNyyTxN3ZiWaoh86/Vsj5kmUmCCos5DjE=";
    };
    date = "2023-03-26";
  };
  "'plugin-zen-mode.nvim'" = {
    pname = "'plugin-zen-mode.nvim'";
    version = "d907e638c879642d226d27469b53db6925f69d4c";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "zen-mode.nvim";
      rev = "d907e638c879642d226d27469b53db6925f69d4c";
      fetchSubmodules = false;
      sha256 = "sha256-3Od9gplrEWvzdMYsiZQzxo9wgcLh/Onqrz+/ij1dLUo=";
    };
    date = "2023-03-19";
  };
  "'plugin-zoxide.vim'" = {
    pname = "'plugin-zoxide.vim'";
    version = "e50df0b0160363f5dcae60c4f633ade78e59bdc8";
    src = fetchFromGitHub {
      owner = "nanotee";
      repo = "zoxide.vim";
      rev = "e50df0b0160363f5dcae60c4f633ade78e59bdc8";
      fetchSubmodules = false;
      sha256 = "sha256-CGdq8VaoAiz2f8hefTGjhNa9eub9OhXKlyVp3ZbDcWM=";
    };
    date = "2023-02-22";
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
