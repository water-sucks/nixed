# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  "'plugin-Comment.nvim'" = {
    pname = "'plugin-Comment.nvim'";
    version = "e1fe53117aab24c378d5e6deaad786789c360123";
    src = fetchFromGitHub {
      owner = "numToStr";
      repo = "Comment.nvim";
      rev = "e1fe53117aab24c378d5e6deaad786789c360123";
      fetchSubmodules = false;
      sha256 = "sha256-CMHkf+0T5FRMcqD6zGFo5IHrgT0xbZXe1UgOs+b1148=";
    };
    date = "2023-05-03";
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
    version = "2f78933799ef1a8558057ea7d06d6ccb11140711";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "2f78933799ef1a8558057ea7d06d6ccb11140711";
      fetchSubmodules = false;
      sha256 = "sha256-vmWCn6f4ihNwTswrxofjuC86C2FYF3wERNpvyiQGgz8=";
    };
    date = "2023-05-20";
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
    version = "1952c33e425ede785d26aa9e250addfe304a8510";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "1952c33e425ede785d26aa9e250addfe304a8510";
      fetchSubmodules = false;
      sha256 = "sha256-6viV/owYWbOOVqEJJs7+WE3lAGEmFBpjPsBSNKQSmWU=";
    };
    date = "2023-05-14";
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
    version = "5af1bb7d722ef8a96658f01d6eb219c4cf746b32";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-cmdline";
      rev = "5af1bb7d722ef8a96658f01d6eb219c4cf746b32";
      fetchSubmodules = false;
      sha256 = "sha256-s3T4fQt9RbtnIhmaeFsFb+8X0fARVke0oITFLVfrtws=";
    };
    date = "2023-04-24";
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
    version = "21864b9fc8d7ed29daafc070caf269f8607410c7";
    src = fetchFromGitHub {
      owner = "water-sucks";
      repo = "darkrose.nvim";
      rev = "21864b9fc8d7ed29daafc070caf269f8607410c7";
      fetchSubmodules = false;
      sha256 = "sha256-npQ9G9tl3/oeizqxoy0oHhBR8vh4LGFwQsLaSDG6iS0=";
    };
    date = "2023-05-18";
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
    version = "15861892ce62d8f4ab6e72bc4ff5b829f994430a";
    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "15861892ce62d8f4ab6e72bc4ff5b829f994430a";
      fetchSubmodules = false;
      sha256 = "sha256-ANNjhQgk6C0b6HKWL47Kbmcq3lNvyRwxbuYGWsA6ZTE=";
    };
    date = "2023-05-19";
  };
  "'plugin-dressing.nvim'" = {
    pname = "'plugin-dressing.nvim'";
    version = "66e4990240f92e31b0d5e4df6deb6bb0160ae832";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "66e4990240f92e31b0d5e4df6deb6bb0160ae832";
      fetchSubmodules = false;
      sha256 = "sha256-0mWNJVDg47QohtesJ6tJQcbxuh2QL2SiSb01giIrrmU=";
    };
    date = "2023-05-12";
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
  "'plugin-fidget.nvim'" = {
    pname = "'plugin-fidget.nvim'";
    version = "0ba1e16d07627532b6cae915cc992ecac249fb97";
    src = fetchFromGitHub {
      owner = "j-hui";
      repo = "fidget.nvim";
      rev = "0ba1e16d07627532b6cae915cc992ecac249fb97";
      fetchSubmodules = false;
      sha256 = "sha256-rmJgfrEr/PYBq0S7j3tzRZvxi7PMMaAo0k528miXOQc=";
    };
    date = "2023-03-27";
  };
  "'plugin-flutter-tools.nvim'" = {
    pname = "'plugin-flutter-tools.nvim'";
    version = "2b72017f369c5d80bb56bcf4379b3eccd69e2371";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "flutter-tools.nvim";
      rev = "2b72017f369c5d80bb56bcf4379b3eccd69e2371";
      fetchSubmodules = false;
      sha256 = "sha256-K6ny6GGa34H2wVKpQob1V7C7/KfcgJIpwn76sKZiNpI=";
    };
    date = "2023-05-14";
  };
  "'plugin-friendly-snippets'" = {
    pname = "'plugin-friendly-snippets'";
    version = "28ee6669ab36cab6ff7d3d7f17ecb045e0138e7f";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "28ee6669ab36cab6ff7d3d7f17ecb045e0138e7f";
      fetchSubmodules = false;
      sha256 = "sha256-LN5fDxYcbTSF/HzuzSNpm1wXa5WlmjsB05i2V/lZ44Y=";
    };
    date = "2023-05-20";
  };
  "'plugin-gitsigns.nvim'" = {
    pname = "'plugin-gitsigns.nvim'";
    version = "c18b7ca0b5b50596722f3a1572eb9b8eb520c0f1";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "c18b7ca0b5b50596722f3a1572eb9b8eb520c0f1";
      fetchSubmodules = false;
      sha256 = "sha256-XPOaQfPMCKPXpzt0JZUlHQj4TyrkDkhgieAnZIFW8Nk=";
    };
    date = "2023-05-19";
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
    version = "3b68740a9ea2eed4fafc3a05c81601ae5191892d";
    src = fetchFromGitHub {
      owner = "MrcJkb";
      repo = "haskell-tools.nvim";
      rev = "3b68740a9ea2eed4fafc3a05c81601ae5191892d";
      fetchSubmodules = false;
      sha256 = "sha256-Wm5fsy3HylQVTtxs3O2kIU6ghRXINgpVQeMJQx/51kE=";
    };
    date = "2023-05-21";
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
    version = "5f316cea4f0b5379e0094d6cfa5e1ee5e279f65a";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "5f316cea4f0b5379e0094d6cfa5e1ee5e279f65a";
      fetchSubmodules = false;
      sha256 = "sha256-jRIFOiWPFoOV9H67nuY1ljNrz1WsJQtN+/IsFqbhOWo=";
    };
    date = "2023-05-20";
  };
  "'plugin-leap.nvim'" = {
    pname = "'plugin-leap.nvim'";
    version = "2950d4826fb92ec3b56c59b5d4f2d575a84cb3fa";
    src = fetchFromGitHub {
      owner = "ggandor";
      repo = "leap.nvim";
      rev = "2950d4826fb92ec3b56c59b5d4f2d575a84cb3fa";
      fetchSubmodules = false;
      sha256 = "sha256-f/swwGxAvAJxSwR+mro3yz8EkDQWV21xgSZtBBOgK4k=";
    };
    date = "2023-05-18";
  };
  "'plugin-lsp_signature.nvim'" = {
    pname = "'plugin-lsp_signature.nvim'";
    version = "7a26ebaa7e36aa2aefa6c1994b2b866c96de32e6";
    src = fetchFromGitHub {
      owner = "ray-x";
      repo = "lsp_signature.nvim";
      rev = "7a26ebaa7e36aa2aefa6c1994b2b866c96de32e6";
      fetchSubmodules = false;
      sha256 = "sha256-5CMJsG7jyPc7cJ+SRrSxOBFjA1zgjkQNSZnBQ9KS7jg=";
    };
    date = "2023-05-03";
  };
  "'plugin-lspkind-nvim'" = {
    pname = "'plugin-lspkind-nvim'";
    version = "57610d5ab560c073c465d6faf0c19f200cb67e6e";
    src = fetchFromGitHub {
      owner = "onsails";
      repo = "lspkind-nvim";
      rev = "57610d5ab560c073c465d6faf0c19f200cb67e6e";
      fetchSubmodules = false;
      sha256 = "sha256-S+qZm51hw/cRujIfHV/1x1fYyCKI4XQ0utSL8uy4l6I=";
    };
    date = "2023-05-05";
  };
  "'plugin-ltex_extra.nvim'" = {
    pname = "'plugin-ltex_extra.nvim'";
    version = "3ceb2401ab70c132305b3dba4dcb418d97b567ad";
    src = fetchFromGitHub {
      owner = "barreiroleo";
      repo = "ltex_extra.nvim";
      rev = "3ceb2401ab70c132305b3dba4dcb418d97b567ad";
      fetchSubmodules = false;
      sha256 = "sha256-jpa3+0cLJICxdh/9XAaDnYeYNKjFHAbIHm6pf7/a91w=";
    };
    date = "2023-04-23";
  };
  "'plugin-lualine.nvim'" = {
    pname = "'plugin-lualine.nvim'";
    version = "05d78e9fd0cdfb4545974a5aa14b1be95a86e9c9";
    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "05d78e9fd0cdfb4545974a5aa14b1be95a86e9c9";
      fetchSubmodules = false;
      sha256 = "sha256-ltHE8UIquGo07BSlFGM1l3wmTNN43i8kx6QY7Fj2CNo=";
    };
    date = "2023-05-04";
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
    version = "fb148c0082488ba048f681792c4044e3229fd1a6";
    src = fetchFromGitHub {
      owner = "rktjmp";
      repo = "lush.nvim";
      rev = "fb148c0082488ba048f681792c4044e3229fd1a6";
      fetchSubmodules = false;
      sha256 = "sha256-hLShxquZls64uvJbt9hGImUMGF0vdXQ8p0JENbWFcFA=";
    };
    date = "2023-05-01";
  };
  "'plugin-mini.surround'" = {
    pname = "'plugin-mini.surround'";
    version = "ea2e9c4cdbddc826dc6eeac69b035f8220f65de5";
    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "ea2e9c4cdbddc826dc6eeac69b035f8220f65de5";
      fetchSubmodules = false;
      sha256 = "sha256-k+7GTBNaM+giGLOU++c3vtR/TtdHeNW0dekpmHdOTS0=";
    };
    date = "2023-05-05";
  };
  "'plugin-neodev.nvim'" = {
    pname = "'plugin-neodev.nvim'";
    version = "0c5d6c2ac2fadebedf08282d9403ef6c3dc31896";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "0c5d6c2ac2fadebedf08282d9403ef6c3dc31896";
      fetchSubmodules = false;
      sha256 = "sha256-z0o18eWHb8MN5+BeZVtsQCSyHjdKaQNbvczomZo50A4=";
    };
    date = "2023-05-15";
  };
  "'plugin-neorg'" = {
    pname = "'plugin-neorg'";
    version = "238152ab40ec1fb293fae75744942146876ed08f";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "238152ab40ec1fb293fae75744942146876ed08f";
      fetchSubmodules = false;
      sha256 = "sha256-BCji22JvaLtV24Jrf1lXJ3LHCMZ/5jZ2SKOg6LhrTvs=";
    };
    date = "2023-05-18";
  };
  "'plugin-neorg-telescope'" = {
    pname = "'plugin-neorg-telescope'";
    version = "d24f445c912451ddbf17cbe8da36561b51b10d39";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg-telescope";
      rev = "d24f445c912451ddbf17cbe8da36561b51b10d39";
      fetchSubmodules = false;
      sha256 = "sha256-xSaFfrZU7F2XbwOH5+oHdlhBtJ2e5DJ8aL+SJMQe1gI=";
    };
    date = "2023-05-20";
  };
  "'plugin-noice.nvim'" = {
    pname = "'plugin-noice.nvim'";
    version = "c2a745a26ae562f1faecbf6177ac53377d2658d5";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "noice.nvim";
      rev = "c2a745a26ae562f1faecbf6177ac53377d2658d5";
      fetchSubmodules = false;
      sha256 = "sha256-3A2UyXsvc+1XvhdeSVT01G9fCtcp8cueYjzLxhC0wAc=";
    };
    date = "2023-05-10";
  };
  "'plugin-nui.nvim'" = {
    pname = "'plugin-nui.nvim'";
    version = "698e75814cd7c56b0dd8af4936bcef2d13807f3c";
    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "698e75814cd7c56b0dd8af4936bcef2d13807f3c";
      fetchSubmodules = false;
      sha256 = "sha256-wVGshQpYx7lz6gl/MDSGkSQJriUbZ0J0OnTFALrXsxk=";
    };
    date = "2023-05-01";
  };
  "'plugin-null-ls.nvim'" = {
    pname = "'plugin-null-ls.nvim'";
    version = "77e53bc3bac34cc273be8ed9eb9ab78bcf67fa48";
    src = fetchFromGitHub {
      owner = "jose-elias-alvarez";
      repo = "null-ls.nvim";
      rev = "77e53bc3bac34cc273be8ed9eb9ab78bcf67fa48";
      fetchSubmodules = false;
      sha256 = "sha256-WHGIYU65YlbtdQFQVGzdcjrBQmu6aK0jgXEMTyKzdsA=";
    };
    date = "2023-05-17";
  };
  "'plugin-nvim-autopairs'" = {
    pname = "'plugin-nvim-autopairs'";
    version = "7747bbae60074acf0b9e3a4c13950be7a2dff444";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "7747bbae60074acf0b9e3a4c13950be7a2dff444";
      fetchSubmodules = false;
      sha256 = "sha256-EoAVYrBHUY0YAzgBfTyf7Dr8PS5+SULL2Az6dIa/E0g=";
    };
    date = "2023-05-01";
  };
  "'plugin-nvim-cmp'" = {
    pname = "'plugin-nvim-cmp'";
    version = "3ac8d6cd29c74ff482d8ea47d45e5081bfc3f5ad";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "3ac8d6cd29c74ff482d8ea47d45e5081bfc3f5ad";
      fetchSubmodules = false;
      sha256 = "sha256-5/6EFzKYSHxFwonBx5Yk2q7gevIgkAQzmva2KqMfD5o=";
    };
    date = "2023-05-17";
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
    version = "56118cee6af15cb9ddba9d080880949d8eeb0c9f";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap";
      rev = "56118cee6af15cb9ddba9d080880949d8eeb0c9f";
      fetchSubmodules = false;
      sha256 = "sha256-iY9FJkwLlWu8/WZy3Trgq9cV69ve0lBkfOKwgY+yfok=";
    };
    date = "2023-05-17";
  };
  "'plugin-nvim-dap-go'" = {
    pname = "'plugin-nvim-dap-go'";
    version = "279225336d5044ad8cfe95ec55d91a3b03fc6e9b";
    src = fetchFromGitHub {
      owner = "leoluz";
      repo = "nvim-dap-go";
      rev = "279225336d5044ad8cfe95ec55d91a3b03fc6e9b";
      fetchSubmodules = false;
      sha256 = "sha256-LFLk0fAUu7bFo6edarbU7qkvWBojFkwINH/5oIet40c=";
    };
    date = "2023-05-19";
  };
  "'plugin-nvim-dap-python'" = {
    pname = "'plugin-nvim-dap-python'";
    version = "51ecb08dbff57fca8add396b93dc765aba262e0a";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap-python";
      rev = "51ecb08dbff57fca8add396b93dc765aba262e0a";
      fetchSubmodules = false;
      sha256 = "sha256-EABQAic5bghq7B4Pv25/D8RvUFRVjmN0Jg2bDhNv/R4=";
    };
    date = "2023-05-08";
  };
  "'plugin-nvim-dap-ui'" = {
    pname = "'plugin-nvim-dap-ui'";
    version = "4ce7b97dd8f50b4f672948a34bf8f3a56214fdb8";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-dap-ui";
      rev = "4ce7b97dd8f50b4f672948a34bf8f3a56214fdb8";
      fetchSubmodules = false;
      sha256 = "sha256-4V5Ecxl5ap/p0vSGlMMV/7s2N5XgCD69HQhEou/T+qk=";
    };
    date = "2023-05-13";
  };
  "'plugin-nvim-dap-virtual-text'" = {
    pname = "'plugin-nvim-dap-virtual-text'";
    version = "10f858c402eb985739627b7e69a38f5b2d79076b";
    src = fetchFromGitHub {
      owner = "theHamsta";
      repo = "nvim-dap-virtual-text";
      rev = "10f858c402eb985739627b7e69a38f5b2d79076b";
      fetchSubmodules = false;
      sha256 = "sha256-9QRGImOOmvSlk4Zf8aRVIwq5IojzQyxbPptv2U4D2Z8=";
    };
    date = "2023-05-20";
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
    version = "ca5b44a8efffb5fec1963ccd21f25ec04cc778b7";
    src = fetchFromGitHub {
      owner = "kosayoda";
      repo = "nvim-lightbulb";
      rev = "ca5b44a8efffb5fec1963ccd21f25ec04cc778b7";
      fetchSubmodules = false;
      sha256 = "sha256-vMFl6Nzc0ZxTa4lQ5FEnE9GkxbPuu5/skufgsR34BSE=";
    };
    date = "2023-04-15";
  };
  "'plugin-nvim-lspconfig'" = {
    pname = "'plugin-nvim-lspconfig'";
    version = "6f1d124bbcf03c4c410c093143a86415f46d16a0";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "6f1d124bbcf03c4c410c093143a86415f46d16a0";
      fetchSubmodules = false;
      sha256 = "sha256-KUysqbNzLHOOfcZVWTDIrtcZaRNL2MIRaz4kqIspR08=";
    };
    date = "2023-05-19";
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
    version = "b1e074d2b52d45c8327b5b43a498b3d7e6c93b97";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "b1e074d2b52d45c8327b5b43a498b3d7e6c93b97";
      fetchSubmodules = false;
      sha256 = "sha256-bhq0Fe6GGoYYSvP0mUrlCw+rlHlYG/PeuFGxNK5lzEg=";
    };
    date = "2023-05-21";
  };
  "'plugin-nvim-treesitter'" = {
    pname = "'plugin-nvim-treesitter'";
    version = "18c393108eb61c2d5157815b9af0e8f5b75c5109";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter";
      rev = "18c393108eb61c2d5157815b9af0e8f5b75c5109";
      fetchSubmodules = false;
      sha256 = "sha256-EHzBg3/3SbCNnB2WB+eyEy8Pk4DuKT67U1X2ncDNUCg=";
    };
    date = "2023-05-21";
  };
  "'plugin-nvim-treesitter-refactor'" = {
    pname = "'plugin-nvim-treesitter-refactor'";
    version = "65ad2eca822dfaec2a3603119ec3cc8826a7859e";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter-refactor";
      rev = "65ad2eca822dfaec2a3603119ec3cc8826a7859e";
      fetchSubmodules = false;
      sha256 = "sha256-yzSkoH690qIEqvhiv0exeH7pS+J5ZVkqidEUOn0kb5M=";
    };
    date = "2023-04-04";
  };
  "'plugin-nvim-treesitter-textobjects'" = {
    pname = "'plugin-nvim-treesitter-textobjects'";
    version = "35a60f093fa15a303874975f963428a5cd24e4a0";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter-textobjects";
      rev = "35a60f093fa15a303874975f963428a5cd24e4a0";
      fetchSubmodules = false;
      sha256 = "sha256-SToGKAoZRFSeIrIlzw1FhBRlpgpBmjwoumndWxTW3Zs=";
    };
    date = "2023-05-07";
  };
  "'plugin-nvim-ts-autotag'" = {
    pname = "'plugin-nvim-ts-autotag'";
    version = "40615e96075c743ef47aaf9de966dc348bec6459";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-ts-autotag";
      rev = "40615e96075c743ef47aaf9de966dc348bec6459";
      fetchSubmodules = false;
      sha256 = "sha256-zv3m7IvDbWOOESZL3+8DcNt9vNT9fSfz2X7EOD6rqHQ=";
    };
    date = "2023-04-28";
  };
  "'plugin-nvim-ts-context-commentstring'" = {
    pname = "'plugin-nvim-ts-context-commentstring'";
    version = "0bf8fbc2ca8f8cdb6efbd0a9e32740d7a991e4c3";
    src = fetchFromGitHub {
      owner = "JoosepAlviste";
      repo = "nvim-ts-context-commentstring";
      rev = "0bf8fbc2ca8f8cdb6efbd0a9e32740d7a991e4c3";
      fetchSubmodules = false;
      sha256 = "sha256-Wv5WZcELaNqfgdFvvj2E/rBUiyHHPeN9hJVLN+4mm6Q=";
    };
    date = "2023-04-18";
  };
  "'plugin-nvim-ufo'" = {
    pname = "'plugin-nvim-ufo'";
    version = "45aede6f5c4981156df3ddeeae01c4290e43e104";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "nvim-ufo";
      rev = "45aede6f5c4981156df3ddeeae01c4290e43e104";
      fetchSubmodules = false;
      sha256 = "sha256-apH6u9AwliU/05lbCMYrmvXRgaQ9zcjGGrtC+sSjn6A=";
    };
    date = "2023-05-06";
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
    version = "986875b7364095d6535e28bd4aac3a9357e91bbe";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "986875b7364095d6535e28bd4aac3a9357e91bbe";
      fetchSubmodules = false;
      sha256 = "sha256-+UH04+Bu167fthQntUATik9wl/vRfkMJ/A9JheaHx9w=";
    };
    date = "2023-05-07";
  };
  "'plugin-one-small-step-for-vimkind'" = {
    pname = "'plugin-one-small-step-for-vimkind'";
    version = "f239ca0dc772f214e7ff0627ccbd45bceae88bf8";
    src = fetchFromGitHub {
      owner = "jbyuki";
      repo = "one-small-step-for-vimkind";
      rev = "f239ca0dc772f214e7ff0627ccbd45bceae88bf8";
      fetchSubmodules = false;
      sha256 = "sha256-eACRCRXDrkpPP4lq6n0PRK+LumhAFrktZ5DE+J7Q288=";
    };
    date = "2023-05-02";
  };
  "'plugin-playground'" = {
    pname = "'plugin-playground'";
    version = "2b81a018a49f8e476341dfcb228b7b808baba68b";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "playground";
      rev = "2b81a018a49f8e476341dfcb228b7b808baba68b";
      fetchSubmodules = false;
      sha256 = "sha256-2wSTVSkuEvTAq3tB5yLw13WWpp1lAycCL4U1BKMm8Kw=";
    };
    date = "2023-04-15";
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
    version = "066bdcf97a8634560428241c9176b9e6ef038055";
    src = fetchFromGitHub {
      owner = "tiagovla";
      repo = "scope.nvim";
      rev = "066bdcf97a8634560428241c9176b9e6ef038055";
      fetchSubmodules = false;
      sha256 = "sha256-pbBQ1ZbQjhED5ZE4acJW1zn2ogVkZDJhYhi4Zo3s53o=";
    };
    date = "2023-05-09";
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
    version = "40c31fdde93bcd85aeb3447bb3e2a3208395a868";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "40c31fdde93bcd85aeb3447bb3e2a3208395a868";
      fetchSubmodules = false;
      sha256 = "sha256-he+kggJjzupbmNeje27QV8h6p74IpgJreokKb9sMNAw=";
    };
    date = "2023-05-16";
  };
  "'plugin-trouble.nvim'" = {
    pname = "'plugin-trouble.nvim'";
    version = "2173dffe91fc0914b3b833c6a2f6fe1d3fac2e17";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "2173dffe91fc0914b3b833c6a2f6fe1d3fac2e17";
      fetchSubmodules = false;
      sha256 = "sha256-UZU35Nai+HFKyuXSRwtsKKIOUXkOs9hpRvTQOWb1Y3Y=";
    };
    date = "2023-05-19";
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
    version = "e9ad2be22855523f95f564302e72e2ef3d1f2386";
    src = fetchFromGitHub {
      owner = "lervag";
      repo = "vimtex";
      rev = "e9ad2be22855523f95f564302e72e2ef3d1f2386";
      fetchSubmodules = false;
      sha256 = "sha256-97Tu0Ae4r3x+3DdlJJ/cRyCXm2jdQZ2LnZORHeh06y4=";
    };
    date = "2023-05-19";
  };
  "'plugin-which-key.nvim'" = {
    pname = "'plugin-which-key.nvim'";
    version = "5a6c954a5a46023c19acc03a8b6d7c3e57964fc5";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "5a6c954a5a46023c19acc03a8b6d7c3e57964fc5";
      fetchSubmodules = false;
      sha256 = "sha256-XMqfkXCJV/rKn0ZqVzUV4ajEvnY992efQsJ14qJj6Gc=";
    };
    date = "2023-05-11";
  };
  "'plugin-zen-mode.nvim'" = {
    pname = "'plugin-zen-mode.nvim'";
    version = "6e6c963d70a8e47854fa656987666bfb863f9c4e";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "zen-mode.nvim";
      rev = "6e6c963d70a8e47854fa656987666bfb863f9c4e";
      fetchSubmodules = false;
      sha256 = "sha256-g5uyTD1BoAMS2QH003OMVzbS/vxsPSvEHcBb3PrafO4=";
    };
    date = "2023-04-17";
  };
  "'plugin-zoxide.vim'" = {
    pname = "'plugin-zoxide.vim'";
    version = "7582d5441f68c46b8fbd42a8721cde0c0dfe344b";
    src = fetchFromGitHub {
      owner = "nanotee";
      repo = "zoxide.vim";
      rev = "7582d5441f68c46b8fbd42a8721cde0c0dfe344b";
      fetchSubmodules = false;
      sha256 = "sha256-ejJBMs2S30GRXX42ajryYn4XV/JNp2GhT2LWMorjdj0=";
    };
    date = "2023-04-20";
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
