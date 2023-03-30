# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  "'plugin-Comment.nvim'" = {
    pname = "'plugin-Comment.nvim'";
    version = "8d3aa5c22c2d45e788c7a5fe13ad77368b783c20";
    src = fetchFromGitHub {
      owner = "numToStr";
      repo = "Comment.nvim";
      rev = "8d3aa5c22c2d45e788c7a5fe13ad77368b783c20";
      fetchSubmodules = false;
      sha256 = "sha256-mVJJJ9fUJYgVyGZnW8e6P5QWB0K8nuhTwSWzlBvxv2M=";
    };
    date = "2023-03-10";
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
    version = "bc8ec05022743d3f08bda7a76c6bb5e9a9024581";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "bc8ec05022743d3f08bda7a76c6bb5e9a9024581";
      fetchSubmodules = false;
      sha256 = "sha256-aZ3q/x/c46010iDbynTREx/+bWOCw9Lbwx/wM47HLEY=";
    };
    date = "2023-03-27";
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
    version = "3677aceb9a72630b0613e56516c8f7151b86f95c";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "3677aceb9a72630b0613e56516c8f7151b86f95c";
      fetchSubmodules = false;
      sha256 = "sha256-tuGitJQ2eXB9/SIHAyPrEVgy2n++GOlBOPLvFv3Ds4E=";
    };
    date = "2023-03-02";
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
    version = "8fcc934a52af96120fe26358985c10c035984b53";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-cmdline";
      rev = "8fcc934a52af96120fe26358985c10c035984b53";
      fetchSubmodules = false;
      sha256 = "sha256-Yz2N7bzpQE4Qt89CAO3LEvBkhtgJR4OPN+734IayEK4=";
    };
    date = "2023-02-17";
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
    version = "9a75b7065d5790fb6bf467da761b295ae159a161";
    src = fetchFromGitHub {
      owner = "water-sucks";
      repo = "darkrose.nvim";
      rev = "9a75b7065d5790fb6bf467da761b295ae159a161";
      fetchSubmodules = false;
      sha256 = "sha256-dzNrCxeo63ZVgj2WDAQj/LGUtXOcJJ9ecOOcSHrhoxI=";
    };
    date = "2023-03-17";
  };
  "'plugin-dial.nvim'" = {
    pname = "'plugin-dial.nvim'";
    version = "0fb00f58591e6d28a8e344984403b3e390df2458";
    src = fetchFromGitHub {
      owner = "monaqa";
      repo = "dial.nvim";
      rev = "0fb00f58591e6d28a8e344984403b3e390df2458";
      fetchSubmodules = false;
      sha256 = "sha256-W35nenZeBEXa/mr9hRGMBlU8u9roTn9BpfjBkVgnrVY=";
    };
    date = "2023-03-28";
  };
  "'plugin-diffview.nvim'" = {
    pname = "'plugin-diffview.nvim'";
    version = "58035354fc79c6ec42fa7b218dab90bd3968615f";
    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "58035354fc79c6ec42fa7b218dab90bd3968615f";
      fetchSubmodules = false;
      sha256 = "sha256-HdXrbX5405ZrYqpAjPopaTA20kY+wIkQq7E858cnX1o=";
    };
    date = "2023-03-18";
  };
  "'plugin-dressing.nvim'" = {
    pname = "'plugin-dressing.nvim'";
    version = "5f44f829481640be0f96759c965ae22a3bcaf7ce";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "5f44f829481640be0f96759c965ae22a3bcaf7ce";
      fetchSubmodules = false;
      sha256 = "sha256-89HwP+zxMN5CPPN3dd3yMfCB07mtBhv6lcWuEWnedfw=";
    };
    date = "2023-02-23";
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
    version = "7751a10b4cedc3f38cde75520437177405fa9996";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "flutter-tools.nvim";
      rev = "7751a10b4cedc3f38cde75520437177405fa9996";
      fetchSubmodules = false;
      sha256 = "sha256-ucwPh0pLI26EIwQ5om/SwhtCyEm04G1pOh5t9toMows=";
    };
    date = "2023-03-29";
  };
  "'plugin-friendly-snippets'" = {
    pname = "'plugin-friendly-snippets'";
    version = "8d91ba2dc2421a54981115f61b914974f938fa77";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "8d91ba2dc2421a54981115f61b914974f938fa77";
      fetchSubmodules = false;
      sha256 = "sha256-2vO4PfwtpstVQtaOd63i3+/yzShM0zDUmC07kRXThUg=";
    };
    date = "2023-03-26";
  };
  "'plugin-gitsigns.nvim'" = {
    pname = "'plugin-gitsigns.nvim'";
    version = "ca473e28382f1524aa3d2b6f04bcf54f2e6a64cb";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "ca473e28382f1524aa3d2b6f04bcf54f2e6a64cb";
      fetchSubmodules = false;
      sha256 = "sha256-McgT3aQ21uiBRMbcHNf10frE2aJDO0TStSoc1Um0n20=";
    };
    date = "2023-03-22";
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
    version = "d6efc37b999981e8744c63c551be039d6eceae50";
    src = fetchFromGitHub {
      owner = "MrcJkb";
      repo = "haskell-tools.nvim";
      rev = "d6efc37b999981e8744c63c551be039d6eceae50";
      fetchSubmodules = false;
      sha256 = "sha256-F3gVwZC+ZTnowTjfSZMHTUuvIYT/IpPFVArSM9chttY=";
    };
    date = "2023-03-26";
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
    version = "f74473d23ebf60957e0db3ff8172349a82e5a442";
    src = fetchFromGitHub {
      owner = "ggandor";
      repo = "leap.nvim";
      rev = "f74473d23ebf60957e0db3ff8172349a82e5a442";
      fetchSubmodules = false;
      sha256 = "sha256-bzmsib8Qr2Whu1FqHzvrsIfSKf/CFutsaM3Sz8gaTLo=";
    };
    date = "2023-03-14";
  };
  "'plugin-lsp_signature.nvim'" = {
    pname = "'plugin-lsp_signature.nvim'";
    version = "1882019270be445a8cad4353f1530574f2b2d02d";
    src = fetchFromGitHub {
      owner = "ray-x";
      repo = "lsp_signature.nvim";
      rev = "1882019270be445a8cad4353f1530574f2b2d02d";
      fetchSubmodules = false;
      sha256 = "sha256-krQ0ihqbrsG4u8HdYlgaq0fOyIIDX4KDdffMRaJKQ78=";
    };
    date = "2023-03-23";
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
    version = "e80465d721bdafcd234e890d1677ca4afb905144";
    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "e80465d721bdafcd234e890d1677ca4afb905144";
      fetchSubmodules = false;
      sha256 = "sha256-nCJ7hi3YQcHr+01mrqNbsnwjcPko8AavZ4BlZZqObxo=";
    };
    date = "2023-03-30";
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
    version = "e26df50e856e671ce79db99449e1b015d6608673";
    src = fetchFromGitHub {
      owner = "rktjmp";
      repo = "lush.nvim";
      rev = "e26df50e856e671ce79db99449e1b015d6608673";
      fetchSubmodules = false;
      sha256 = "sha256-j8b7zW4HK6l/5X3F1kRU7PREV6w+sLYtRK+PNtJKOfk=";
    };
    date = "2023-03-27";
  };
  "'plugin-mini.surround'" = {
    pname = "'plugin-mini.surround'";
    version = "cbc884d4dc99ab0d0c843cdb7391aad3144fad3f";
    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "cbc884d4dc99ab0d0c843cdb7391aad3144fad3f";
      fetchSubmodules = false;
      sha256 = "sha256-f4QoqJEXecT7bUy9MzZVkGuHeAyRosFtYeyKe4/y11I=";
    };
    date = "2023-03-24";
  };
  "'plugin-neodev.nvim'" = {
    pname = "'plugin-neodev.nvim'";
    version = "7330427f9f71ac5aaa2d1a4c22ccd3914434e289";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "7330427f9f71ac5aaa2d1a4c22ccd3914434e289";
      fetchSubmodules = false;
      sha256 = "sha256-BQhyZcTzmqNTS0oTf7vcj28+u6ONXuJCQngqJHIjSg8=";
    };
    date = "2023-03-26";
  };
  "'plugin-neorg'" = {
    pname = "'plugin-neorg'";
    version = "01d8a9b2db38a28fd40851b894e9d146d279c892";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "01d8a9b2db38a28fd40851b894e9d146d279c892";
      fetchSubmodules = false;
      sha256 = "sha256-AKWKA8fzJks0opAfxeaC2jGLtmUGitm6eOXXfOffBqs=";
    };
    date = "2023-03-29";
  };
  "'plugin-neorg-telescope'" = {
    pname = "'plugin-neorg-telescope'";
    version = "197c59a572e4423642b5c5fb727ecefadffe9000";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg-telescope";
      rev = "197c59a572e4423642b5c5fb727ecefadffe9000";
      fetchSubmodules = false;
      sha256 = "sha256-gH7dbEurKWIH5y/ASgw782HQeQ5l0HEt90iWLX45680=";
    };
    date = "2023-03-13";
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
    version = "4eaec2ac66af2ca6ddddd3f665ad0909b90ae36a";
    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "4eaec2ac66af2ca6ddddd3f665ad0909b90ae36a";
      fetchSubmodules = false;
      sha256 = "sha256-pDroyXtkrBGbEZs0mcf+96ba72c0leNMW0AlM50RDJ8=";
    };
    date = "2023-03-30";
  };
  "'plugin-null-ls.nvim'" = {
    pname = "'plugin-null-ls.nvim'";
    version = "01e035ac1c0ba1cc7a688110e3a9f939cab1f454";
    src = fetchFromGitHub {
      owner = "jose-elias-alvarez";
      repo = "null-ls.nvim";
      rev = "01e035ac1c0ba1cc7a688110e3a9f939cab1f454";
      fetchSubmodules = false;
      sha256 = "sha256-81/2tpGLrsIz6MB5lF85cS+EfGQK9eBI9zYz3hRZH3o=";
    };
    date = "2023-03-29";
  };
  "'plugin-nvim-autopairs'" = {
    pname = "'plugin-nvim-autopairs'";
    version = "0fd6519d44eac3a6736aafdb3fe9da916c3701d4";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "0fd6519d44eac3a6736aafdb3fe9da916c3701d4";
      fetchSubmodules = false;
      sha256 = "sha256-G5D07KozNj48CxzcMevf1+ZqJEMXQql7VfWUseg6Rzc=";
    };
    date = "2023-03-27";
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
    version = "7389e85233e3483b31b6a1c4ba69cda77336b7a8";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap";
      rev = "7389e85233e3483b31b6a1c4ba69cda77336b7a8";
      fetchSubmodules = false;
      sha256 = "sha256-N/KOhU3SjRNo8Zeu9oOnAW+D85t9ewjCVDfhD2+ITiY=";
    };
    date = "2023-03-24";
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
    version = "af5e04c6eae97498258f84c61e1b22be6660763b";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap-python";
      rev = "af5e04c6eae97498258f84c61e1b22be6660763b";
      fetchSubmodules = false;
      sha256 = "sha256-NXhSynRUTB2CjTHdz0r+tTipMJemeVI9wMjLHcfWdXM=";
    };
    date = "2023-03-24";
  };
  "'plugin-nvim-dap-ui'" = {
    pname = "'plugin-nvim-dap-ui'";
    version = "56a2df0e96bfa64ebd6967e7cad877a1530633d5";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-dap-ui";
      rev = "56a2df0e96bfa64ebd6967e7cad877a1530633d5";
      fetchSubmodules = false;
      sha256 = "sha256-a2dqCEwRs9VpYbRBrDCvUZpFebgmv53R1cBDf4QwMD8=";
    };
    date = "2023-03-28";
  };
  "'plugin-nvim-dap-virtual-text'" = {
    pname = "'plugin-nvim-dap-virtual-text'";
    version = "8db23ea51203b5f00ad107a0cef7e0b2d7a0476c";
    src = fetchFromGitHub {
      owner = "theHamsta";
      repo = "nvim-dap-virtual-text";
      rev = "8db23ea51203b5f00ad107a0cef7e0b2d7a0476c";
      fetchSubmodules = false;
      sha256 = "sha256-PaIwpCkevGIWwTOqGIj6t66tjGh+5ndroGfb77TWwxw=";
    };
    date = "2023-02-15";
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
    version = "c34522092bee6e4abf68ed3b24dceee4bd5a48fc";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "c34522092bee6e4abf68ed3b24dceee4bd5a48fc";
      fetchSubmodules = false;
      sha256 = "sha256-CxT5wKRKgZJu6PBfz+S19+Qhey4hWqI+jC9E1I5C2eY=";
    };
    date = "2023-03-29";
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
    version = "45400cd7e02027937cd5e49845545e606ecf5a1f";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "45400cd7e02027937cd5e49845545e606ecf5a1f";
      fetchSubmodules = false;
      sha256 = "sha256-9e5kBw9cZX08uQAfFb/YP17a1biDR8PNg617PhkKJhk=";
    };
    date = "2023-03-28";
  };
  "'plugin-nvim-ts-autotag'" = {
    pname = "'plugin-nvim-ts-autotag'";
    version = "25698e4033cd6cd3745454bfc837dd670eba0480";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-ts-autotag";
      rev = "25698e4033cd6cd3745454bfc837dd670eba0480";
      fetchSubmodules = false;
      sha256 = "sha256-XNR09azYMviWt8aU8XuhS7q+AT5xRBK+FkeejlAAshg=";
    };
    date = "2023-03-17";
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
    version = "e8f068dc94112cca368ab7363583b24678fdf510";
    src = fetchFromGitHub {
      owner = "samjwill";
      repo = "nvim-unception";
      rev = "e8f068dc94112cca368ab7363583b24678fdf510";
      fetchSubmodules = false;
      sha256 = "sha256-9wpvw41xSN3Tc/Nn+O9M85yMqWGthnDJxegHKkhrrC8=";
    };
    date = "2023-03-20";
  };
  "'plugin-nvim-web-devicons'" = {
    pname = "'plugin-nvim-web-devicons'";
    version = "267af2d57e0f251d65b95bdfd1f382211b272417";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "267af2d57e0f251d65b95bdfd1f382211b272417";
      fetchSubmodules = false;
      sha256 = "sha256-KvUu6Hwlj3ZTdMQYRnf7N+bpC2GUuhVHz16is4c4rdI=";
    };
    date = "2023-03-28";
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
    version = "4044b53c4d4fcd7a78eae20b8627f78ce7dc6f56";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "playground";
      rev = "4044b53c4d4fcd7a78eae20b8627f78ce7dc6f56";
      fetchSubmodules = false;
      sha256 = "sha256-e8wqVyXfZ8qmURbCO/4pOVDSSHZEaRTGZLK5ZEh0AIY=";
    };
    date = "2023-02-17";
  };
  "'plugin-plenary.nvim'" = {
    pname = "'plugin-plenary.nvim'";
    version = "253d34830709d690f013daf2853a9d21ad7accab";
    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "253d34830709d690f013daf2853a9d21ad7accab";
      fetchSubmodules = false;
      sha256 = "sha256-z5JHuQcF1EvySnRBywl6EOrp8aRO0nd2dnkXJg2ge58=";
    };
    date = "2023-02-19";
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
    version = "1c2e9c93c7c85126c2197f5e770054f53b1926fb";
    src = fetchFromGitHub {
      owner = "ahmedkhalf";
      repo = "project.nvim";
      rev = "1c2e9c93c7c85126c2197f5e770054f53b1926fb";
      fetchSubmodules = false;
      sha256 = "sha256-69K+HAe9D6kYwoRm0TxNs66fW6cCeLz/svaRsp7FdOA=";
    };
    date = "2023-02-26";
  };
  "'plugin-promise-async'" = {
    pname = "'plugin-promise-async'";
    version = "7fa127fa80e7d4d447e0e2c78e99af4355f4247b";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "promise-async";
      rev = "7fa127fa80e7d4d447e0e2c78e99af4355f4247b";
      fetchSubmodules = false;
      sha256 = "sha256-ozjg+CkuypwEV3uErDszADpnfM1YujfapUS6dFahp4k=";
    };
    date = "2023-02-01";
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
    version = "942fe5faef47b21241e970551eba407bc10d9547";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "942fe5faef47b21241e970551eba407bc10d9547";
      fetchSubmodules = false;
      sha256 = "sha256-Kyw9ryb8YgAKFWLac9yl/fD3nNcu7mv7xzuNU6pDMkU=";
    };
    date = "2023-03-22";
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
    version = "1043b590d98fa3f069a0879c65293aa2c7c31b0d";
    src = fetchFromGitHub {
      owner = "lervag";
      repo = "vimtex";
      rev = "1043b590d98fa3f069a0879c65293aa2c7c31b0d";
      fetchSubmodules = false;
      sha256 = "sha256-dBbvVf/4OPISYNEnPmrzWKaxxDvHiUkzMj57KusKQPE=";
    };
    date = "2023-03-28";
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
