# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  plugin-Comment-nvim = {
    pname = "plugin-Comment-nvim";
    version = "176e85eeb63f1a5970d6b88f1725039d85ca0055";
    src = fetchFromGitHub {
      owner = "numToStr";
      repo = "Comment.nvim";
      rev = "176e85eeb63f1a5970d6b88f1725039d85ca0055";
      fetchSubmodules = false;
      sha256 = "sha256-XM9yhp+SGxfAOdN/eDunzM0TMoCJhVth3wpFKNCGf3g=";
    };
    pretty-name = "Comment.nvim";
    date = "2023-06-12";
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
    version = "0b4950a237ce441a6a3a947d501622453f6860ea";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "0b4950a237ce441a6a3a947d501622453f6860ea";
      fetchSubmodules = false;
      sha256 = "sha256-bgQMU9hjqymzoIg+Ov+Ks18WrJPhwMIVCL3nDQkIdkM=";
    };
    pretty-name = "LuaSnip";
    date = "2023-07-18";
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
    version = "d24378edc14a675c820a303b4512af3bbc5761e9";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "d24378edc14a675c820a303b4512af3bbc5761e9";
      fetchSubmodules = false;
      sha256 = "sha256-0BJXUDGeUhPALEnPgO4ix+GgI/3P/Foiqi0tf2mgUXg=";
    };
    pretty-name = "bufferline.nvim";
    date = "2023-07-18";
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
    version = "50792f34a628ea6eb31d2c90e8df174671e4e7a0";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-calc";
      rev = "50792f34a628ea6eb31d2c90e8df174671e4e7a0";
      fetchSubmodules = false;
      sha256 = "sha256-GqTY4/Puk4pikjeyyMcJ8wzgb1IC7Cf4gcXx/XXmgP4=";
    };
    pretty-name = "cmp-calc";
    date = "2022-11-16";
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
    version = "c6657df5453a6cbe4e8356e1675e9652cadc332f";
    src = fetchFromGitHub {
      owner = "monaqa";
      repo = "dial.nvim";
      rev = "c6657df5453a6cbe4e8356e1675e9652cadc332f";
      fetchSubmodules = false;
      sha256 = "sha256-gwntE9DiwmEs+ATDOecVQmpLrS2rKO2RITJ0l8/75b8=";
    };
    pretty-name = "dial.nvim";
    date = "2023-07-10";
  };
  plugin-diffview-nvim = {
    pname = "plugin-diffview-nvim";
    version = "e91110d2a7f8e2f667666aba6ea089ff823f8748";
    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "e91110d2a7f8e2f667666aba6ea089ff823f8748";
      fetchSubmodules = false;
      sha256 = "sha256-0tsgwI/qZm8Gj3NyN9CA+YHf3qim7vGXI+vbEcFBKbQ=";
    };
    pretty-name = "diffview.nvim";
    date = "2023-07-19";
  };
  plugin-dressing-nvim = {
    pname = "plugin-dressing-nvim";
    version = "39611852fd7bbac117e939a26759bb37361f0c90";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "39611852fd7bbac117e939a26759bb37361f0c90";
      fetchSubmodules = false;
      sha256 = "sha256-Z4KARj3GBfIMjRspyni3lhREhjP6MHoM2FH27FdiRqY=";
    };
    pretty-name = "dressing.nvim";
    date = "2023-07-17";
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
    version = "7850a771c4e773dc49d63081f508d004b416c13e";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "flutter-tools.nvim";
      rev = "7850a771c4e773dc49d63081f508d004b416c13e";
      fetchSubmodules = false;
      sha256 = "sha256-kSP0Gc+FeQI4LQFqkCCi/gwfvbBFtX5z+p3UBbyGVm4=";
    };
    pretty-name = "flutter-tools.nvim";
    date = "2023-07-06";
  };
  plugin-friendly-snippets = {
    pname = "plugin-friendly-snippets";
    version = "4aed1a0ca605cb1c87f59799a0cc4afe00a40272";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "4aed1a0ca605cb1c87f59799a0cc4afe00a40272";
      fetchSubmodules = false;
      sha256 = "sha256-WNFpBrGB4vFuKRlF/6v/MwW17a7b1FFs2L/Cg6WWV4g=";
    };
    pretty-name = "friendly-snippets";
    date = "2023-07-21";
  };
  plugin-gitsigns-nvim = {
    pname = "plugin-gitsigns-nvim";
    version = "adcf2c7f2f495f5df148683764bf7cba6a70f34c";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "adcf2c7f2f495f5df148683764bf7cba6a70f34c";
      fetchSubmodules = false;
      sha256 = "sha256-+V7muSHLr60IRo9qxExzzWoIoOLk9LMXLDSULaL2DNI=";
    };
    pretty-name = "gitsigns.nvim";
    date = "2023-07-18";
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
    version = "9bc54093737c100c78c6c51ec0478b14e2d8f2fd";
    src = fetchFromGitHub {
      owner = "MrcJkb";
      repo = "haskell-tools.nvim";
      rev = "9bc54093737c100c78c6c51ec0478b14e2d8f2fd";
      fetchSubmodules = false;
      sha256 = "sha256-0rdi5keTfIh1ekAlT2jgAtiKjw4B2mQMOwoAfUHPiVo=";
    };
    pretty-name = "haskell-tools.nvim";
    date = "2023-07-17";
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
    version = "4541d690816cb99a7fc248f1486aa87f3abce91c";
    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "indent-blankline.nvim";
      rev = "4541d690816cb99a7fc248f1486aa87f3abce91c";
      fetchSubmodules = false;
      sha256 = "sha256-efMRkxjbr6o7kSKAEn0Kaw8lsDubRmc1N0Kd1BZ3A7k=";
    };
    pretty-name = "indent-blankline.nvim";
    date = "2023-07-07";
  };
  plugin-lazy-nvim = {
    pname = "plugin-lazy-nvim";
    version = "3ad55ae678876516156cca2f361c51f7952a924b";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "3ad55ae678876516156cca2f361c51f7952a924b";
      fetchSubmodules = false;
      sha256 = "sha256-L8x23jox8fLZTt17sDG21N2sqsSdmtLeUUp0h2Py7fs=";
    };
    pretty-name = "lazy.nvim";
    date = "2023-07-22";
  };
  plugin-leap-nvim = {
    pname = "plugin-leap-nvim";
    version = "7eeeb3ff74ff8cabd583a061492e76c1c6d2bac8";
    src = fetchFromGitHub {
      owner = "ggandor";
      repo = "leap.nvim";
      rev = "7eeeb3ff74ff8cabd583a061492e76c1c6d2bac8";
      fetchSubmodules = false;
      sha256 = "sha256-ZK89REI7AhZ8LolHvBrpWiTNn2shS91PFkaS3nqmFzc=";
    };
    pretty-name = "leap.nvim";
    date = "2023-07-17";
  };
  plugin-lsp_signature-nvim = {
    pname = "plugin-lsp_signature-nvim";
    version = "17ff7a405fea8376b015b8ea7910d2e59958bf68";
    src = fetchFromGitHub {
      owner = "ray-x";
      repo = "lsp_signature.nvim";
      rev = "17ff7a405fea8376b015b8ea7910d2e59958bf68";
      fetchSubmodules = false;
      sha256 = "sha256-Fxgsdgi4ubeOhE07UHt3y7ELuOypIBzQcHwsoJIc9OE=";
    };
    pretty-name = "lsp_signature.nvim";
    date = "2023-06-01";
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
    version = "f32a4ca33857a61a8cf8dcd4177fa1d02e16dee0";
    src = fetchFromGitHub {
      owner = "barreiroleo";
      repo = "ltex_extra.nvim";
      rev = "f32a4ca33857a61a8cf8dcd4177fa1d02e16dee0";
      fetchSubmodules = false;
      sha256 = "sha256-taKsTJEzQhIT3ppBpbdo19tANWFflbQ2s/Iy23iHACI=";
    };
    pretty-name = "ltex_extra.nvim";
    date = "2023-06-24";
  };
  plugin-lualine-nvim = {
    pname = "plugin-lualine-nvim";
    version = "05d78e9fd0cdfb4545974a5aa14b1be95a86e9c9";
    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "05d78e9fd0cdfb4545974a5aa14b1be95a86e9c9";
      fetchSubmodules = false;
      sha256 = "sha256-ltHE8UIquGo07BSlFGM1l3wmTNN43i8kx6QY7Fj2CNo=";
    };
    pretty-name = "lualine.nvim";
    date = "2023-05-04";
  };
  plugin-luasnip-latex-snippets-nvim = {
    pname = "plugin-luasnip-latex-snippets-nvim";
    version = "8fe303e70f31e24d5e165c8e3e0775d00f96007a";
    src = fetchFromGitHub {
      owner = "iurimateus";
      repo = "luasnip-latex-snippets.nvim";
      rev = "8fe303e70f31e24d5e165c8e3e0775d00f96007a";
      fetchSubmodules = false;
      sha256 = "sha256-gIYDDX7oSm/czuhCVSWDFR/xPEz73aGpkBPXglaNr3M=";
    };
    pretty-name = "luasnip-latex-snippets.nvim";
    date = "2023-03-19";
  };
  plugin-lush-nvim = {
    pname = "plugin-lush-nvim";
    version = "b10ef2bfff0647e701b691019ade3edd5e44eb50";
    src = fetchFromGitHub {
      owner = "rktjmp";
      repo = "lush.nvim";
      rev = "b10ef2bfff0647e701b691019ade3edd5e44eb50";
      fetchSubmodules = false;
      sha256 = "sha256-0VjrCKW4dJw1H8K4B83iVS8hboaWWGOLDP2MZwV4V40=";
    };
    pretty-name = "lush.nvim";
    date = "2023-07-03";
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
    version = "866b6b6e687a93ba98851a03a74bf6d9211b7299";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "866b6b6e687a93ba98851a03a74bf6d9211b7299";
      fetchSubmodules = false;
      sha256 = "sha256-mnzE317uJ+MfIYo3igvgY5/9AVnRq8FdKQiSYYUwKak=";
    };
    pretty-name = "neodev.nvim";
    date = "2023-07-22";
  };
  plugin-neorg = {
    pname = "plugin-neorg";
    version = "774f5dd80d15aa11d0221aba767da699f9533e32";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "774f5dd80d15aa11d0221aba767da699f9533e32";
      fetchSubmodules = false;
      sha256 = "sha256-0IOscwsGLKC4m4EGFIesRkVVC2//DK42u/AUGMyJhuA=";
    };
    pretty-name = "neorg";
    date = "2023-07-18";
  };
  plugin-neorg-telescope = {
    pname = "plugin-neorg-telescope";
    version = "d24f445c912451ddbf17cbe8da36561b51b10d39";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg-telescope";
      rev = "d24f445c912451ddbf17cbe8da36561b51b10d39";
      fetchSubmodules = false;
      sha256 = "sha256-xSaFfrZU7F2XbwOH5+oHdlhBtJ2e5DJ8aL+SJMQe1gI=";
    };
    pretty-name = "neorg-telescope";
    date = "2023-05-20";
  };
  plugin-noice-nvim = {
    pname = "plugin-noice-nvim";
    version = "c7969e3c25530087b3a52128030163280a7cf679";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "noice.nvim";
      rev = "c7969e3c25530087b3a52128030163280a7cf679";
      fetchSubmodules = false;
      sha256 = "sha256-n1u57c95pI3NXEaDjtFJPDiRSb3hSO9a4s4ZpeUp9kM=";
    };
    pretty-name = "noice.nvim";
    date = "2023-07-22";
  };
  plugin-nui-nvim = {
    pname = "plugin-nui-nvim";
    version = "9e3916e784660f55f47daa6f26053ad044db5d6a";
    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "9e3916e784660f55f47daa6f26053ad044db5d6a";
      fetchSubmodules = false;
      sha256 = "sha256-nSUs9zAX7hQ3PuFrH4zQblMfTY6ALDNggmqaQnkbR5E=";
    };
    pretty-name = "nui.nvim";
    date = "2023-07-20";
  };
  plugin-null-ls-nvim = {
    pname = "plugin-null-ls-nvim";
    version = "db09b6c691def0038c456551e4e2772186449f35";
    src = fetchFromGitHub {
      owner = "jose-elias-alvarez";
      repo = "null-ls.nvim";
      rev = "db09b6c691def0038c456551e4e2772186449f35";
      fetchSubmodules = false;
      sha256 = "sha256-6KJtj9pbvBm6fOVpnyzO2fEVC+cVrw2XtZHOgq9ieIw=";
    };
    pretty-name = "null-ls.nvim";
    date = "2023-07-06";
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
    version = "c4e491a87eeacf0408902c32f031d802c7eafce8";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "c4e491a87eeacf0408902c32f031d802c7eafce8";
      fetchSubmodules = false;
      sha256 = "sha256-Hq6YUfMQo1rHoay3/NieGCne7U/f06GwUPhN2HO0PdQ=";
    };
    pretty-name = "nvim-cmp";
    date = "2023-07-10";
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
    version = "d17d1bba23ec72a157bd183c57840c39e323f515";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap";
      rev = "d17d1bba23ec72a157bd183c57840c39e323f515";
      fetchSubmodules = false;
      sha256 = "sha256-M7YIUAJLdaU0J0t3a35W/X6Y6jtuJlK0ArbXHOjnXJw=";
    };
    pretty-name = "nvim-dap";
    date = "2023-07-17";
  };
  plugin-nvim-dap-go = {
    pname = "plugin-nvim-dap-go";
    version = "eab43d63cef832801a701812913e4d1d726725e5";
    src = fetchFromGitHub {
      owner = "leoluz";
      repo = "nvim-dap-go";
      rev = "eab43d63cef832801a701812913e4d1d726725e5";
      fetchSubmodules = false;
      sha256 = "sha256-SBxLArDO9U5Xm+iE5Sah9UU1zOggOGM2jPqqEPofceQ=";
    };
    pretty-name = "nvim-dap-go";
    date = "2023-07-18";
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
    version = "dd11ba7b3c8f82d51b6d4dd7d68fce2d78bf78a0";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "dd11ba7b3c8f82d51b6d4dd7d68fce2d78bf78a0";
      fetchSubmodules = false;
      sha256 = "sha256-UaP7FHTooy2FGKMCMD5ukQIcg6oFkHhFkSdQ0/gqa2I=";
    };
    pretty-name = "nvim-lspconfig";
    date = "2023-07-21";
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
    version = "3b62c6bf2c3f2973036aed609d02fd0ca9c3af35";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "3b62c6bf2c3f2973036aed609d02fd0ca9c3af35";
      fetchSubmodules = false;
      sha256 = "sha256-L22nG31WbaigZNZcDCTDjetEc3DsqnxdgaZ2jNAClkw=";
    };
    pretty-name = "nvim-tree.lua";
    date = "2023-07-16";
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
    version = "7f625207f225eea97ef7a6abe7611e556c396d2f";
    src = fetchFromGitHub {
      owner = "JoosepAlviste";
      repo = "nvim-ts-context-commentstring";
      rev = "7f625207f225eea97ef7a6abe7611e556c396d2f";
      fetchSubmodules = false;
      sha256 = "sha256-xVxUGBav94dChK8uuBC24dIMO5q1cB1GTu6KTTKeIGc=";
    };
    pretty-name = "nvim-ts-context-commentstring";
    date = "2023-06-22";
  };
  plugin-nvim-ufo = {
    pname = "plugin-nvim-ufo";
    version = "43e39ec74cd57c45ca9d8229a796750f6083b850";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "nvim-ufo";
      rev = "43e39ec74cd57c45ca9d8229a796750f6083b850";
      fetchSubmodules = false;
      sha256 = "sha256-hA7KrWgeEodoCuv8DdFesQo+r2dNYsRRWiRov5d1CGs=";
    };
    pretty-name = "nvim-ufo";
    date = "2023-06-21";
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
    version = "efbfed0567ef4bfac3ce630524a0f6c8451c5534";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "efbfed0567ef4bfac3ce630524a0f6c8451c5534";
      fetchSubmodules = false;
      sha256 = "sha256-FtEJBhqvs+c/Rvy4qXf3iyoMTTKrDBvQw5g63n4KEYo=";
    };
    pretty-name = "nvim-web-devicons";
    date = "2023-07-16";
  };
  plugin-one-small-step-for-vimkind = {
    pname = "plugin-one-small-step-for-vimkind";
    version = "5cacc816153c66a50de92c9cee29077b4a380254";
    src = fetchFromGitHub {
      owner = "jbyuki";
      repo = "one-small-step-for-vimkind";
      rev = "5cacc816153c66a50de92c9cee29077b4a380254";
      fetchSubmodules = false;
      sha256 = "sha256-FY8poLO4MEG41GVrzCuCsWQdmtjlQhwpP8xoCA/9nGk=";
    };
    pretty-name = "one-small-step-for-vimkind";
    date = "2023-07-08";
  };
  plugin-playground = {
    pname = "plugin-playground";
    version = "2b81a018a49f8e476341dfcb228b7b808baba68b";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "playground";
      rev = "2b81a018a49f8e476341dfcb228b7b808baba68b";
      fetchSubmodules = false;
      sha256 = "sha256-2wSTVSkuEvTAq3tB5yLw13WWpp1lAycCL4U1BKMm8Kw=";
    };
    pretty-name = "playground";
    date = "2023-04-15";
  };
  plugin-plenary-nvim = {
    pname = "plugin-plenary-nvim";
    version = "267282a9ce242bbb0c5dc31445b6d353bed978bb";
    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "267282a9ce242bbb0c5dc31445b6d353bed978bb";
      fetchSubmodules = false;
      sha256 = "sha256-oRtNcURQzrIRS3D88tWAl3HuFHxVJr8m/zzL7xoa/II=";
    };
    pretty-name = "plenary.nvim";
    date = "2023-07-17";
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
    version = "4a67c3e16867b2b241f5f2db2ab291497b76bece";
    src = fetchFromGitHub {
      owner = "tiagovla";
      repo = "scope.nvim";
      rev = "4a67c3e16867b2b241f5f2db2ab291497b76bece";
      fetchSubmodules = false;
      sha256 = "sha256-Ii1k+tiA/K1Yx2Cm/P5ayQLWjtXJVVvmXGfpADkfSKI=";
    };
    pretty-name = "scope.nvim";
    date = "2023-06-28";
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
    version = "7bb2fcecdcfe7d7975c0e59c276033740cd45d38";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "7bb2fcecdcfe7d7975c0e59c276033740cd45d38";
      fetchSubmodules = false;
      sha256 = "sha256-M++3fbcI9XpB0usMcexwlzpZndUHJpppKbwmw+GoEbA=";
    };
    pretty-name = "telescope.nvim";
    date = "2023-07-21";
  };
  plugin-trouble-nvim = {
    pname = "plugin-trouble-nvim";
    version = "d572f59aaf7eef670d6ddc331032a7d5e59d634e";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "d572f59aaf7eef670d6ddc331032a7d5e59d634e";
      fetchSubmodules = false;
      sha256 = "sha256-/rHU7NesEkBzGyuE925qt/U4FsEFWxc2He97PqvsDHA=";
    };
    pretty-name = "trouble.nvim";
    date = "2023-07-22";
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
    version = "6a99324a138c2da69589a8ab2e49375774e43d77";
    src = fetchFromGitHub {
      owner = "kaarmu";
      repo = "typst.vim";
      rev = "6a99324a138c2da69589a8ab2e49375774e43d77";
      fetchSubmodules = false;
      sha256 = "sha256-vqeJRS/TwwfxVDuO503jZEv7enhLeSHqHomLW1PVsyA=";
    };
    pretty-name = "typst.vim";
    date = "2023-07-18";
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
    version = "95579267d48a6b4e8e99c4f32456cba992565ea2";
    src = fetchFromGitHub {
      owner = "lervag";
      repo = "vimtex";
      rev = "95579267d48a6b4e8e99c4f32456cba992565ea2";
      fetchSubmodules = false;
      sha256 = "sha256-AZIycwSbtIGH0WiWO5w31GbHTcTojjJsf0P31ombqS8=";
    };
    pretty-name = "vimtex";
    date = "2023-07-21";
  };
  plugin-which-key-nvim = {
    pname = "plugin-which-key-nvim";
    version = "38b990f6eabf62014018b4aae70a97d7a6c2eb88";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "38b990f6eabf62014018b4aae70a97d7a6c2eb88";
      fetchSubmodules = false;
      sha256 = "sha256-13aa6QQ4hkWQaliQmICTng/nxutCqlzCWzAoOZhERSI=";
    };
    pretty-name = "which-key.nvim";
    date = "2023-07-16";
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
