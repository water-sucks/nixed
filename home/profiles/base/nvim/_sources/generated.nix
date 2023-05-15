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
    version = "b4bc24c4925aeb05fd47d2ee9b24b7f73f5d7e32";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "b4bc24c4925aeb05fd47d2ee9b24b7f73f5d7e32";
      fetchSubmodules = false;
      sha256 = "sha256-pGPIFHLyDE44ZOWrrCPKDW9fiCbU9T0cFCbZ3r7Ycrk=";
    };
    date = "2023-05-06";
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
    version = "0257ea8d2981e748cfbcebe38d21e28fe8892e08";
    src = fetchFromGitHub {
      owner = "water-sucks";
      repo = "darkrose.nvim";
      rev = "0257ea8d2981e748cfbcebe38d21e28fe8892e08";
      fetchSubmodules = false;
      sha256 = "sha256-RCTl3T/FU6WgkXBRSHoWLri+QFqBwAtjRc10RkrUQW4=";
    };
    date = "2023-04-27";
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
    version = "1fc42e67dfb2da7946edbc9a30cb98ed371b8dde";
    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "1fc42e67dfb2da7946edbc9a30cb98ed371b8dde";
      fetchSubmodules = false;
      sha256 = "sha256-U5dyf6THkPsOMcCrKuONg0N1Rz7hrOAaBzr5vqbAoHU=";
    };
    date = "2023-05-15";
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
    version = "1d0dac346de7c6895ac72528df3276386c6b149b";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "1d0dac346de7c6895ac72528df3276386c6b149b";
      fetchSubmodules = false;
      sha256 = "sha256-rKCvo9bb/XEDJu+7t8KRlmknxViL7n8Ree+NE+Wpi9o=";
    };
    date = "2023-05-11";
  };
  "'plugin-gitsigns.nvim'" = {
    pname = "'plugin-gitsigns.nvim'";
    version = "814158f6c4b1724c039fcefe79b0be72c9131c2d";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "814158f6c4b1724c039fcefe79b0be72c9131c2d";
      fetchSubmodules = false;
      sha256 = "sha256-OEtr7SbCGoKcZmDcbw6nUoc8QDxgwexh6M4gGg4CRek=";
    };
    date = "2023-05-10";
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
    version = "f75225d30e1a122c70e713f7c4aa4da4c44b278f";
    src = fetchFromGitHub {
      owner = "MrcJkb";
      repo = "haskell-tools.nvim";
      rev = "f75225d30e1a122c70e713f7c4aa4da4c44b278f";
      fetchSubmodules = false;
      sha256 = "sha256-6iHgXA/ND3a/jawLQGBLitNjwKSETB0WUFvLaRro2C4=";
    };
    date = "2023-05-14";
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
    version = "aba872ec78ffe7f7367764ab0fff6f0170421fde";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "aba872ec78ffe7f7367764ab0fff6f0170421fde";
      fetchSubmodules = false;
      sha256 = "sha256-Xfs6vtawPz9i+KREQnPpyPj3etS2oxCqZP9w+73b4t4=";
    };
    date = "2023-05-13";
  };
  "'plugin-leap.nvim'" = {
    pname = "'plugin-leap.nvim'";
    version = "6f2912755c9c4ae790abd829f0cf1b07c037b2a4";
    src = fetchFromGitHub {
      owner = "ggandor";
      repo = "leap.nvim";
      rev = "6f2912755c9c4ae790abd829f0cf1b07c037b2a4";
      fetchSubmodules = false;
      sha256 = "sha256-8/fxeAE53whU7k0Ak05nJ+7l2UUgi4rXEFS8rkffU/U=";
    };
    date = "2023-04-28";
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
    version = "a7291f4662664d0c3be3016adff6767dc52f907d";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "a7291f4662664d0c3be3016adff6767dc52f907d";
      fetchSubmodules = false;
      sha256 = "sha256-nGiUXiL/JNeWYfjwOYWpNHdR0T/6QyZcmOs+IL+kTmM=";
    };
    date = "2023-05-15";
  };
  "'plugin-neorg-telescope'" = {
    pname = "'plugin-neorg-telescope'";
    version = "787f95c527d4f3fe1c25600e92d939456967e944";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg-telescope";
      rev = "787f95c527d4f3fe1c25600e92d939456967e944";
      fetchSubmodules = false;
      sha256 = "sha256-G2Bk5VOLG6f6LWhrvk8y765GChs3kkpU37sTXpY9j4o=";
    };
    date = "2023-04-19";
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
    version = "08bb00c7c2cd58c72e02cf54e4b9cbfe14b03e09";
    src = fetchFromGitHub {
      owner = "jose-elias-alvarez";
      repo = "null-ls.nvim";
      rev = "08bb00c7c2cd58c72e02cf54e4b9cbfe14b03e09";
      fetchSubmodules = false;
      sha256 = "sha256-LThRysXgyM/MzLBQakpzPBVyS1r9AL/w1dOyy4qo/3k=";
    };
    date = "2023-05-10";
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
    version = "d153771162bd9795d9f7142df5c674b61066a585";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "d153771162bd9795d9f7142df5c674b61066a585";
      fetchSubmodules = false;
      sha256 = "sha256-c7CqAdS/ag+sfZxAdUnKbWvJQe5u5KoKCoe1yabysRc=";
    };
    date = "2023-05-12";
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
    version = "6cedcb527e264c8f25e86afa8dae74c6692dee51";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap";
      rev = "6cedcb527e264c8f25e86afa8dae74c6692dee51";
      fetchSubmodules = false;
      sha256 = "sha256-l5sJ6PKW10CtOzSBKzWasWVMZq/mAkgpgWOecIVuV+0=";
    };
    date = "2023-04-21";
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
    version = "ab988dbb7d20cdaebf9b3ef7554a89f6895de042";
    src = fetchFromGitHub {
      owner = "theHamsta";
      repo = "nvim-dap-virtual-text";
      rev = "ab988dbb7d20cdaebf9b3ef7554a89f6895de042";
      fetchSubmodules = false;
      sha256 = "sha256-1Uu1X2OExFzkhzcqK8dD6NJ7C12Y26ufTlTCRBrPkFU=";
    };
    date = "2023-04-27";
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
    version = "df58d91c9351a9dc5be6cf8d54f49ab0d9a64e73";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "df58d91c9351a9dc5be6cf8d54f49ab0d9a64e73";
      fetchSubmodules = false;
      sha256 = "sha256-d89JHM+g93GUQKPodK56ufNacoDT4G6TNvIOfj2+5sk=";
    };
    date = "2023-05-12";
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
    version = "736c7ff59065275f0483af4b7f07a9bc41449ad0";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "736c7ff59065275f0483af4b7f07a9bc41449ad0";
      fetchSubmodules = false;
      sha256 = "sha256-g0Pq4pCJLZYRMJaYVel92wBEh3FiiTsdyAY4i6mhPz0=";
    };
    date = "2023-05-15";
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
    version = "ebf93395e79e5d026e3867d9e5e158b2bbe1499c";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "ebf93395e79e5d026e3867d9e5e158b2bbe1499c";
      fetchSubmodules = false;
      sha256 = "sha256-+0zzthMr5VRownfbGJS/pkXXU2Ni5GmG3TuoYmympA4=";
    };
    date = "2023-05-14";
  };
  "'plugin-trouble.nvim'" = {
    pname = "'plugin-trouble.nvim'";
    version = "d56bfc0c501ced4002a57cb60433362fb2ce9c4d";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "d56bfc0c501ced4002a57cb60433362fb2ce9c4d";
      fetchSubmodules = false;
      sha256 = "sha256-kW5vRqKRUG3I5/DgWnMpXeQHbaFBcYDlzEpg2bvKAUA=";
    };
    date = "2023-04-18";
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
    version = "3fe5c67ccb83476886867b8fcacf41ce5a5f9904";
    src = fetchFromGitHub {
      owner = "lervag";
      repo = "vimtex";
      rev = "3fe5c67ccb83476886867b8fcacf41ce5a5f9904";
      fetchSubmodules = false;
      sha256 = "sha256-wwZfj2TjHoxuk7aLitobLy6qnasqg7tWWQgJLTjM0BI=";
    };
    date = "2023-05-14";
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
