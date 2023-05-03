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
    version = "a46ab6f8bce6bbddd8ce3e287e1a517c1f5e348e";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "a46ab6f8bce6bbddd8ce3e287e1a517c1f5e348e";
      fetchSubmodules = false;
      sha256 = "sha256-VPG8+KSTpcprTQtFMnjzuKZ39UDz+5JVp7CmmEbEJyo=";
    };
    date = "2023-05-01";
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
    version = "41660189da6951d14436147dff30ed7f0d12ed01";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "41660189da6951d14436147dff30ed7f0d12ed01";
      fetchSubmodules = false;
      sha256 = "sha256-KiJ/jyqNCW28dazs6ex7Ng5TjRetZFjQunsmG5Wp5C8=";
    };
    date = "2023-05-03";
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
    version = "8c1702470fd5186cb401b21f9bf8bdfad6d5cc87";
    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "8c1702470fd5186cb401b21f9bf8bdfad6d5cc87";
      fetchSubmodules = false;
      sha256 = "sha256-6RDVUVLFqSws7ouZ1bRWsGfBpyVOHO+9yEiMFVWUbC0=";
    };
    date = "2023-04-28";
  };
  "'plugin-dressing.nvim'" = {
    pname = "'plugin-dressing.nvim'";
    version = "f5d7fa1fa5ce6bcebc8f07922f39b1eda4d01e37";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "f5d7fa1fa5ce6bcebc8f07922f39b1eda4d01e37";
      fetchSubmodules = false;
      sha256 = "sha256-4BW6D7zlOeZU2EV8m323vJ3/cUeArWOAGbb5mPa/wpY=";
    };
    date = "2023-04-21";
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
    version = "97f9bdea0374c3553a3a11b8e4d2b21f11855463";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "flutter-tools.nvim";
      rev = "97f9bdea0374c3553a3a11b8e4d2b21f11855463";
      fetchSubmodules = false;
      sha256 = "sha256-ttSm44zNwX95jh0lPI7WPDIznUbtYrHbKuWwLJDjkys=";
    };
    date = "2023-04-28";
  };
  "'plugin-friendly-snippets'" = {
    pname = "'plugin-friendly-snippets'";
    version = "2308366ad625f61284e51d249ede4f795394b186";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "2308366ad625f61284e51d249ede4f795394b186";
      fetchSubmodules = false;
      sha256 = "sha256-1ZDjBkQxkv+1nzJA/3/oX/edq52Db+l+SEhsoRDDdO8=";
    };
    date = "2023-05-01";
  };
  "'plugin-gitsigns.nvim'" = {
    pname = "'plugin-gitsigns.nvim'";
    version = "e5edefd9976039f5352e0c900f35206770b33a2d";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "e5edefd9976039f5352e0c900f35206770b33a2d";
      fetchSubmodules = false;
      sha256 = "sha256-4ZDiDF3qTWKViFgiCqhvqKRtubO2P/pcu9Unxf+AfLw=";
    };
    date = "2023-04-28";
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
    version = "1a2f39087306ff14c2d668a2b19335362bcd27af";
    src = fetchFromGitHub {
      owner = "MrcJkb";
      repo = "haskell-tools.nvim";
      rev = "1a2f39087306ff14c2d668a2b19335362bcd27af";
      fetchSubmodules = false;
      sha256 = "sha256-tCvHA5GSPdW1UpXQbkfk6sZdF/icrEmbd92jJ7Lhzpk=";
    };
    date = "2023-04-23";
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
    version = "ceb413678dfcf3d5455208959185e3db1f7892c7";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "ceb413678dfcf3d5455208959185e3db1f7892c7";
      fetchSubmodules = false;
      sha256 = "sha256-fPbtjiByn5+yylwHc7TtPboRu+0e2HN5xJ/tpPiOv3k=";
    };
    date = "2023-05-02";
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
    version = "98a320e0a0c40a878aa0f79c872e29df3b4e375f";
    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "98a320e0a0c40a878aa0f79c872e29df3b4e375f";
      fetchSubmodules = false;
      sha256 = "sha256-VecbU9ftsOu6EoAK1fHsg69QLvCdgvYTZ15PCGUFkqA=";
    };
    date = "2023-04-30";
  };
  "'plugin-neodev.nvim'" = {
    pname = "'plugin-neodev.nvim'";
    version = "ab4c68129b5fefe5c6bb6d7e92283d3f8bdf8566";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "ab4c68129b5fefe5c6bb6d7e92283d3f8bdf8566";
      fetchSubmodules = false;
      sha256 = "sha256-d4GPt/fAsDwEBuJEicDK+Lrg8pxDO7UhijJrz8ol6Kw=";
    };
    date = "2023-05-03";
  };
  "'plugin-neorg'" = {
    pname = "'plugin-neorg'";
    version = "a295adf945a215d84e7a6252faf1b7a4dc9db8f7";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "a295adf945a215d84e7a6252faf1b7a4dc9db8f7";
      fetchSubmodules = false;
      sha256 = "sha256-QPqW+lpVRwatVPu6XlX0Z4snzf83sFMV9Pimmc7z4o8=";
    };
    date = "2023-05-02";
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
    version = "d31fe940e0866686718822aaac45527412c45134";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "noice.nvim";
      rev = "d31fe940e0866686718822aaac45527412c45134";
      fetchSubmodules = false;
      sha256 = "sha256-erGyYNEEbMOBkutujNp9NL/eYjWeGDxmbb6xBriiWG4=";
    };
    date = "2023-05-02";
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
    version = "33b853a3933eed3137cd055aac4e539e69832ad0";
    src = fetchFromGitHub {
      owner = "jose-elias-alvarez";
      repo = "null-ls.nvim";
      rev = "33b853a3933eed3137cd055aac4e539e69832ad0";
      fetchSubmodules = false;
      sha256 = "sha256-cwpfhYcoD+biMgyAXkf9gE89yRSQnNyAowIeuyUKqmI=";
    };
    date = "2023-04-26";
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
    version = "c7189282199d6f92d3becb91d4f44fc734f75f98";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "c7189282199d6f92d3becb91d4f44fc734f75f98";
      fetchSubmodules = false;
      sha256 = "sha256-bDLnCPh0co8C6EUJkcriTRzQpe2nDU5zcm/J1b/jCAE=";
    };
    date = "2023-05-03";
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
    version = "749bfe12d1447703899fa823c1c075fbe2d42c24";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-dap-ui";
      rev = "749bfe12d1447703899fa823c1c075fbe2d42c24";
      fetchSubmodules = false;
      sha256 = "sha256-8TavZqkTCr2/jaO3C8fp+r7qfN6mCzVvidbHGtJGLfs=";
    };
    date = "2023-05-02";
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
    version = "3bd4ca412982afa6f88bb7ef890660cee51c3e58";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "3bd4ca412982afa6f88bb7ef890660cee51c3e58";
      fetchSubmodules = false;
      sha256 = "sha256-OkS6DAXkY40xkR+v1FZEL8ujMWM421ZQdB9My0vG3+Y=";
    };
    date = "2023-05-03";
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
    version = "53295de04d265fba695ec5a21912bdf36647dbad";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "53295de04d265fba695ec5a21912bdf36647dbad";
      fetchSubmodules = false;
      sha256 = "sha256-8kJUyYaXZ42uBkwI+pfeikUNfF1sBBjB2AZeUtrpKSY=";
    };
    date = "2023-05-03";
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
    version = "b34362b20a4942b3245f958e73ebe1b09b020ad1";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "b34362b20a4942b3245f958e73ebe1b09b020ad1";
      fetchSubmodules = false;
      sha256 = "sha256-dYiG5uBSBU0b5MMZp6xKd8gB79nNdHGuq2UfcWnv2Es=";
    };
    date = "2023-05-01";
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
    version = "6c5d5d73701e45b1fad50fa821fe9bf88ab2eec6";
    src = fetchFromGitHub {
      owner = "tiagovla";
      repo = "scope.nvim";
      rev = "6c5d5d73701e45b1fad50fa821fe9bf88ab2eec6";
      fetchSubmodules = false;
      sha256 = "sha256-9WY0Nky/olWvAK7HmB8XOnU4UkoLRRErwIqgAai0zuc=";
    };
    date = "2023-04-24";
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
    version = "713d26b98583b160b50fb827adb751f768238ed3";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "713d26b98583b160b50fb827adb751f768238ed3";
      fetchSubmodules = false;
      sha256 = "sha256-K3jhTlB9Win94oLMXTB4WGl5QY9mE8YrFtLudHlhKj0=";
    };
    date = "2023-04-26";
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
    version = "871ac461e9314598b5b26c3a1a9f5e36c17dff14";
    src = fetchFromGitHub {
      owner = "lervag";
      repo = "vimtex";
      rev = "871ac461e9314598b5b26c3a1a9f5e36c17dff14";
      fetchSubmodules = false;
      sha256 = "sha256-yP7QCuYttk3zEJ/yrMYE3npdIWV4qeJNQBJlssvzONg=";
    };
    date = "2023-05-01";
  };
  "'plugin-which-key.nvim'" = {
    pname = "'plugin-which-key.nvim'";
    version = "4acffc92953a90a790603bfdab7c92319ab167b1";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "4acffc92953a90a790603bfdab7c92319ab167b1";
      fetchSubmodules = false;
      sha256 = "sha256-vnpSvaW7GLHQBdvtRYmX4nmXvpLvUthZf71Vq/vFUdc=";
    };
    date = "2023-04-27";
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
