# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  "'plugin-Comment.nvim'" = {
    pname = "'plugin-Comment.nvim'";
    version = "c8043290f2d77f61025494d839d88e414608c460";
    src = fetchFromGitHub {
      owner = "numToStr";
      repo = "Comment.nvim";
      rev = "c8043290f2d77f61025494d839d88e414608c460";
      fetchSubmodules = false;
      sha256 = "sha256-au/jG2jhRKQwLxCTODNmLcy5aJBFfg5j9wtQvWhby4g=";
    };
    date = "2023-06-01";
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
    version = "51ebb4b6637290e1b8e0fb0d6f38b605d3c24940";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "51ebb4b6637290e1b8e0fb0d6f38b605d3c24940";
      fetchSubmodules = false;
      sha256 = "sha256-eJi5BE/hCa3y7lGIDla9Wvyp/RLDhaBi0mi4H83Jjdk=";
    };
    date = "2023-05-31";
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
    version = "32d74d5d044f7cc89892d4781a83d55ee4ed552a";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "32d74d5d044f7cc89892d4781a83d55ee4ed552a";
      fetchSubmodules = false;
      sha256 = "sha256-WM8/dHqiEykuw0qEQtenM5Rcv/Jr3Jxj5vulC/IKfAE=";
    };
    date = "2023-05-21";
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
    version = "9436e6cdd7c5dfa24a99a60d9280b24dbdea3649";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-omni";
      rev = "9436e6cdd7c5dfa24a99a60d9280b24dbdea3649";
      fetchSubmodules = false;
      sha256 = "sha256-rXOPRu6jWbC0HSU71qtA8VPSKdS7TllWKwXf5Iv+10s=";
    };
    date = "2023-05-26";
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
    version = "bff58a6ea3e081ca50049700f9848b2f84ea57be";
    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "bff58a6ea3e081ca50049700f9848b2f84ea57be";
      fetchSubmodules = false;
      sha256 = "sha256-nW2LxAgLD98zCeZwmgIvvTEzz9BV78PMTMLt3SSKiUY=";
    };
    date = "2023-05-26";
  };
  "'plugin-dressing.nvim'" = {
    pname = "'plugin-dressing.nvim'";
    version = "f19cbd56f7f8cad212c58a7285d09c5d9c273896";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "f19cbd56f7f8cad212c58a7285d09c5d9c273896";
      fetchSubmodules = false;
      sha256 = "sha256-vSEFngLWzXgye4DLm7xxr12CZvvow7F5CJJXjCnU4u4=";
    };
    date = "2023-05-24";
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
    version = "0dd6114bea08276d9111d58c5dce5e256bbc8921";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "0dd6114bea08276d9111d58c5dce5e256bbc8921";
      fetchSubmodules = false;
      sha256 = "sha256-Pi1EqCyLn5ryNZQMz16ny7O8dbTx5Yf/tJgowQbLfTs=";
    };
    date = "2023-05-31";
  };
  "'plugin-gitsigns.nvim'" = {
    pname = "'plugin-gitsigns.nvim'";
    version = "f868d82a36f7f7f5e110eb0a9659993984f59875";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "f868d82a36f7f7f5e110eb0a9659993984f59875";
      fetchSubmodules = false;
      sha256 = "sha256-R7ayrNWGJLKYAOg+P/On9i8nk7GQpY28N2mFb/yped0=";
    };
    date = "2023-05-25";
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
    version = "811d616fdbe2087cd63848dfa7b3bc8785de7dcd";
    src = fetchFromGitHub {
      owner = "MrcJkb";
      repo = "haskell-tools.nvim";
      rev = "811d616fdbe2087cd63848dfa7b3bc8785de7dcd";
      fetchSubmodules = false;
      sha256 = "sha256-ixN6MyCxeh6v2b1gObw6FlfdWToaI1W68k1FRp5zRKE=";
    };
    date = "2023-05-29";
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
    version = "7075d7861f7a6bbf0de0298c83f8a13195e6ec01";
    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "indent-blankline.nvim";
      rev = "7075d7861f7a6bbf0de0298c83f8a13195e6ec01";
      fetchSubmodules = false;
      sha256 = "sha256-2AgkwADQetmFAc+cYU2USmTXMngXHo7021KrTVTIkkE=";
    };
    date = "2023-05-30";
  };
  "'plugin-lazy.nvim'" = {
    pname = "'plugin-lazy.nvim'";
    version = "e6bf3a0d9c4899dcf832270f79bb1cee8fbc506e";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "e6bf3a0d9c4899dcf832270f79bb1cee8fbc506e";
      fetchSubmodules = false;
      sha256 = "sha256-0lLuALPFcIxIknGLKcm1Qdloj1n1cB8vr2qze/PxOZs=";
    };
    date = "2023-05-30";
  };
  "'plugin-leap.nvim'" = {
    pname = "'plugin-leap.nvim'";
    version = "ecb6b6eaafc761e3eaee3c0b7ea37674c038c8d6";
    src = fetchFromGitHub {
      owner = "ggandor";
      repo = "leap.nvim";
      rev = "ecb6b6eaafc761e3eaee3c0b7ea37674c038c8d6";
      fetchSubmodules = false;
      sha256 = "sha256-leDD5g3kEH/nKRmEKBQcAzTqWQXH0+wusLA6de8tTxU=";
    };
    date = "2023-06-01";
  };
  "'plugin-lsp_signature.nvim'" = {
    pname = "'plugin-lsp_signature.nvim'";
    version = "17ff7a405fea8376b015b8ea7910d2e59958bf68";
    src = fetchFromGitHub {
      owner = "ray-x";
      repo = "lsp_signature.nvim";
      rev = "17ff7a405fea8376b015b8ea7910d2e59958bf68";
      fetchSubmodules = false;
      sha256 = "sha256-Fxgsdgi4ubeOhE07UHt3y7ELuOypIBzQcHwsoJIc9OE=";
    };
    date = "2023-06-01";
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
    version = "eeaf96562947f75afa51a6266e066529369ca7ef";
    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "eeaf96562947f75afa51a6266e066529369ca7ef";
      fetchSubmodules = false;
      sha256 = "sha256-nOOdrMpiUfZWmiNZwZXlLMKOzfqtiDOyj/wH4f5vqjI=";
    };
    date = "2023-05-30";
  };
  "'plugin-neodev.nvim'" = {
    pname = "'plugin-neodev.nvim'";
    version = "358f11c585fdccfcb5e8eae720c423fbed6d92de";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "358f11c585fdccfcb5e8eae720c423fbed6d92de";
      fetchSubmodules = false;
      sha256 = "sha256-tZbMoLFdYKMTWEAgKaat1WT9VnunBWVanoGLKE2XBEg=";
    };
    date = "2023-05-30";
  };
  "'plugin-neorg'" = {
    pname = "'plugin-neorg'";
    version = "e0fcf254fbdb95fa0918692aee1c93b938e883f8";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "e0fcf254fbdb95fa0918692aee1c93b938e883f8";
      fetchSubmodules = false;
      sha256 = "sha256-6jeN6FTeSBi2rq4+vTWVb4ywZVZ6tjcMvUPOWCQtqyE=";
    };
    date = "2023-05-31";
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
    version = "7e358170cea2314d9768b3f63616e8fad186195e";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "noice.nvim";
      rev = "7e358170cea2314d9768b3f63616e8fad186195e";
      fetchSubmodules = false;
      sha256 = "sha256-FGxpAZ8srLxdXitR1lYyWtWgLi9+WInyJXF6d1GJynU=";
    };
    date = "2023-05-28";
  };
  "'plugin-nui.nvim'" = {
    pname = "'plugin-nui.nvim'";
    version = "2b2732528e4a79eb8542568bd51d25f710395bd6";
    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "2b2732528e4a79eb8542568bd51d25f710395bd6";
      fetchSubmodules = false;
      sha256 = "sha256-3wbIWsDjR1T8PrAQmiq2++BeGwMgCMx7Rb3qLb/zTy8=";
    };
    date = "2023-05-27";
  };
  "'plugin-null-ls.nvim'" = {
    pname = "'plugin-null-ls.nvim'";
    version = "c89333e034a8daba654ebfcf9a4ec9f87765f01e";
    src = fetchFromGitHub {
      owner = "jose-elias-alvarez";
      repo = "null-ls.nvim";
      rev = "c89333e034a8daba654ebfcf9a4ec9f87765f01e";
      fetchSubmodules = false;
      sha256 = "sha256-ELMTBAo0d1zcDfOn+uxaOL6R2PyKpcr2+oqBW3yA/s4=";
    };
    date = "2023-05-30";
  };
  "'plugin-nvim-autopairs'" = {
    pname = "'plugin-nvim-autopairs'";
    version = "59df87a84c80a357ca8d8fe86e451b93ac476ccc";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "59df87a84c80a357ca8d8fe86e451b93ac476ccc";
      fetchSubmodules = false;
      sha256 = "sha256-maSCppPEOFbkEfTYFKLq3M6Dg+fRjnqbCtsyWO9SILA=";
    };
    date = "2023-05-26";
  };
  "'plugin-nvim-cmp'" = {
    pname = "'plugin-nvim-cmp'";
    version = "fc0f694af1a742ada77e5b1c91ff405c746f4a26";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "fc0f694af1a742ada77e5b1c91ff405c746f4a26";
      fetchSubmodules = false;
      sha256 = "sha256-54CffrodPKKkZxgf389KCzqtnfQXwT8FztqenjdRuu4=";
    };
    date = "2023-05-30";
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
    version = "d234b0a77fc98a550dbaecdb5cd3dc5cd17147be";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap";
      rev = "d234b0a77fc98a550dbaecdb5cd3dc5cd17147be";
      fetchSubmodules = false;
      sha256 = "sha256-sATLAWaFpPQuc3EwHAqTEhRzdY/+f1TpOIYrN2+uRIM=";
    };
    date = "2023-06-01";
  };
  "'plugin-nvim-dap-go'" = {
    pname = "'plugin-nvim-dap-go'";
    version = "cdf604a5703838f65fdee7c198f6cb59b563ef6f";
    src = fetchFromGitHub {
      owner = "leoluz";
      repo = "nvim-dap-go";
      rev = "cdf604a5703838f65fdee7c198f6cb59b563ef6f";
      fetchSubmodules = false;
      sha256 = "sha256-yTj8nGmsRFovWl9/b7xeoPZDB491bLToSoO3Ru70nEc=";
    };
    date = "2023-05-23";
  };
  "'plugin-nvim-dap-python'" = {
    pname = "'plugin-nvim-dap-python'";
    version = "37b4cba02e337a95cb62ad1609b3d1dccb2e5d42";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap-python";
      rev = "37b4cba02e337a95cb62ad1609b3d1dccb2e5d42";
      fetchSubmodules = false;
      sha256 = "sha256-wT1OLg4gpKaeqcrSgef/aKmB3+IFPB5fF0OOUtVuyqA=";
    };
    date = "2023-05-23";
  };
  "'plugin-nvim-dap-ui'" = {
    pname = "'plugin-nvim-dap-ui'";
    version = "c020f660b02772f9f3d11f599fefad3268628a9e";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-dap-ui";
      rev = "c020f660b02772f9f3d11f599fefad3268628a9e";
      fetchSubmodules = false;
      sha256 = "sha256-47mqwiepEOUoCkjFyxwWqNUqXU3dh5+Z4uad8hCWxHA=";
    };
    date = "2023-05-29";
  };
  "'plugin-nvim-dap-virtual-text'" = {
    pname = "'plugin-nvim-dap-virtual-text'";
    version = "57f1dbd0458dd84a286b27768c142e1567f3ce3b";
    src = fetchFromGitHub {
      owner = "theHamsta";
      repo = "nvim-dap-virtual-text";
      rev = "57f1dbd0458dd84a286b27768c142e1567f3ce3b";
      fetchSubmodules = false;
      sha256 = "sha256-yzMRudA8Wag881ewzw82uXPzHoxaB6kAapPElKN6G6E=";
    };
    date = "2023-05-25";
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
    version = "9166622781a39a829878d1fd24c174529d996838";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "9166622781a39a829878d1fd24c174529d996838";
      fetchSubmodules = false;
      sha256 = "sha256-KwXWEUXSe9FlaNRJGid+jCKrO5oj68obYpWFHVdLuuY=";
    };
    date = "2023-05-29";
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
    version = "e2a4c9d09d205ebe5f071264f43f73a0077c43a3";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "e2a4c9d09d205ebe5f071264f43f73a0077c43a3";
      fetchSubmodules = false;
      sha256 = "sha256-TZNibkRvpKBTxWwrziJMfVqbEOt4VGiuXjD/+bZhloE=";
    };
    date = "2023-05-27";
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
    version = "2a125024a137677930efcfdf720f205504c97268";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "2a125024a137677930efcfdf720f205504c97268";
      fetchSubmodules = false;
      sha256 = "sha256-bryHxQZQ75wQXHLqYVh5zSkgLijdPvVAZPDYnv+JTkI=";
    };
    date = "2023-05-27";
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
    version = "499e0743cf5e8075cd32af68baa3946a1c76adf1";
    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "499e0743cf5e8075cd32af68baa3946a1c76adf1";
      fetchSubmodules = false;
      sha256 = "sha256-5qtGxspjtCnkuoaE2gDnti58U4r34O1bBvjvUdTgKmU=";
    };
    date = "2023-05-31";
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
    version = "6d3fbffe426794296a77bb0b37b6ae0f4f14f807";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "6d3fbffe426794296a77bb0b37b6ae0f4f14f807";
      fetchSubmodules = false;
      sha256 = "sha256-FIAN3NQrD7PhrtCKnlrr//bZ259qcvGogL45nC8tLpw=";
    };
    date = "2023-05-25";
  };
  "'plugin-trouble.nvim'" = {
    pname = "'plugin-trouble.nvim'";
    version = "324c977cfeacb8498ca9ba1c74cc35bd18858a8d";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "324c977cfeacb8498ca9ba1c74cc35bd18858a8d";
      fetchSubmodules = false;
      sha256 = "sha256-SybmV5wqIcTYSTCvgE3fHII0dsxyFU8qzXE3adCRYsI=";
    };
    date = "2023-05-26";
  };
  "'plugin-twilight.nvim'" = {
    pname = "'plugin-twilight.nvim'";
    version = "a4843e6e67092a1e6fa9666f02bf0ab59174c1df";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "twilight.nvim";
      rev = "a4843e6e67092a1e6fa9666f02bf0ab59174c1df";
      fetchSubmodules = false;
      sha256 = "sha256-D0QlkDPYxcG+1KCVU7+pjcJkHg6VqEplod6Wguc5LLU=";
    };
    date = "2023-05-22";
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
    version = "ed5c5eafe47dc8e0212f2ecafc0676a550a849e4";
    src = fetchFromGitHub {
      owner = "lervag";
      repo = "vimtex";
      rev = "ed5c5eafe47dc8e0212f2ecafc0676a550a849e4";
      fetchSubmodules = false;
      sha256 = "sha256-VXmieHiPc7HhaYJ4NPtvZhVE5Rsyucy0Balq+gsbdqE=";
    };
    date = "2023-05-25";
  };
  "'plugin-which-key.nvim'" = {
    pname = "'plugin-which-key.nvim'";
    version = "e271c28118998c93a14d189af3395812a1aa646c";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "e271c28118998c93a14d189af3395812a1aa646c";
      fetchSubmodules = false;
      sha256 = "sha256-wJo9XAUiru2WCeojL7aZuj0RDhkB5oClIpF/fGnXX6o=";
    };
    date = "2023-05-22";
  };
  "'plugin-zen-mode.nvim'" = {
    pname = "'plugin-zen-mode.nvim'";
    version = "68f554702de63f4b7b6b6d4bcb10178f41a0acc7";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "zen-mode.nvim";
      rev = "68f554702de63f4b7b6b6d4bcb10178f41a0acc7";
      fetchSubmodules = false;
      sha256 = "sha256-B75JHeXV2zCnBc+M+UHh0w+2uVaOE0bygahkGGUv+yo=";
    };
    date = "2023-05-22";
  };
  "'plugin-zoxide.vim'" = {
    pname = "'plugin-zoxide.vim'";
    version = "cc5b702cacbcbb4192b2a619c0f9cf6ab6e76936";
    src = fetchFromGitHub {
      owner = "nanotee";
      repo = "zoxide.vim";
      rev = "cc5b702cacbcbb4192b2a619c0f9cf6ab6e76936";
      fetchSubmodules = false;
      sha256 = "sha256-ddA0srgvvXpkr1ASLA6VwIaYQ02oIbpTUY061NOrgTU=";
    };
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
    version = "a479d1ca05848d0b51dd25bc9f71a17e0108b240";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "tree-sitter-norg-meta";
      rev = "a479d1ca05848d0b51dd25bc9f71a17e0108b240";
      fetchSubmodules = false;
      sha256 = "sha256-7tCmYem8vpgG+9HM92cbQH1r+h+iRDf7wfrxQGoadO8=";
    };
    date = "2023-05-28";
  };
}
