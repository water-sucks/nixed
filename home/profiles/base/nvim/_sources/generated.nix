# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  plugin-Comment-nvim = {
    pname = "plugin-Comment-nvim";
    version = "e30b7f2008e52442154b66f7c519bfd2f1e32acb";
    src = fetchFromGitHub {
      owner = "numToStr";
      repo = "Comment.nvim";
      rev = "e30b7f2008e52442154b66f7c519bfd2f1e32acb";
      fetchSubmodules = false;
      sha256 = "sha256-h0kPue5Eqd5aeu4VoLH45pF0DmWWo1d8SnLICSQ63zc=";
    };
    pretty-name = "Comment.nvim";
    date = "2024-06-09";
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
    version = "8d7aa7a7b7c0875e4878d1d2590924bc1c229305";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "8d7aa7a7b7c0875e4878d1d2590924bc1c229305";
      fetchSubmodules = false;
      sha256 = "sha256-gDCmhOoTnLDrv0owOqaqa0e4wkA2rvuatVBsepaMEyI=";
    };
    pretty-name = "LuaSnip";
    date = "2024-10-30";
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
  plugin-baleia-nvim = {
    pname = "plugin-baleia-nvim";
    version = "1b25eac3ac03659c3d3af75c7455e179e5f197f7";
    src = fetchFromGitHub {
      owner = "m00qek";
      repo = "baleia.nvim";
      rev = "1b25eac3ac03659c3d3af75c7455e179e5f197f7";
      fetchSubmodules = false;
      sha256 = "sha256-qA1x5kplP2I8bURO0I4R0gt/zeznu9hQQ+XHptLGuwc=";
    };
    pretty-name = "baleia.nvim";
    date = "2024-07-24";
  };
  plugin-bufferline-nvim = {
    pname = "plugin-bufferline-nvim";
    version = "5cc447cb2b463cb499c82eaeabbed4f5fa6a0a44";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "5cc447cb2b463cb499c82eaeabbed4f5fa6a0a44";
      fetchSubmodules = false;
      sha256 = "sha256-MpSX8a51Avc9O1XxfWIDOVLiqD7omwAFIwSa02oXNs0=";
    };
    pretty-name = "bufferline.nvim";
    date = "2024-10-24";
  };
  plugin-cellular-automaton-nvim = {
    pname = "plugin-cellular-automaton-nvim";
    version = "11aea08aa084f9d523b0142c2cd9441b8ede09ed";
    src = fetchFromGitHub {
      owner = "Eandrju";
      repo = "cellular-automaton.nvim";
      rev = "11aea08aa084f9d523b0142c2cd9441b8ede09ed";
      fetchSubmodules = false;
      sha256 = "sha256-nIv7ISRk0+yWd1lGEwAV6u1U7EFQj/T9F8pU6O0Wf0s=";
    };
    pretty-name = "cellular-automaton.nvim";
    date = "2024-06-30";
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
    version = "5947b412da67306c5b68698a02a846760059be2e";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-calc";
      rev = "5947b412da67306c5b68698a02a846760059be2e";
      fetchSubmodules = false;
      sha256 = "sha256-TI1FR0EjzPcjsFdJQ9vXVleQwyXkmqs4TvYyZ8A6cS0=";
    };
    pretty-name = "cmp-calc";
    date = "2024-05-18";
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
    version = "39e2eda76828d88b773cc27a3f61d2ad782c922d";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-nvim-lsp";
      rev = "39e2eda76828d88b773cc27a3f61d2ad782c922d";
      fetchSubmodules = false;
      sha256 = "sha256-CT1+Z4XJBVsl/RqvJeGmyitD6x7So0ylXvvef5jh7I8=";
    };
    pretty-name = "cmp-nvim-lsp";
    date = "2024-05-17";
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
  plugin-conform-nvim = {
    pname = "plugin-conform-nvim";
    version = "4dd429fe3f47077f4e50cdaf03f7877ce9b213e0";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "conform.nvim";
      rev = "4dd429fe3f47077f4e50cdaf03f7877ce9b213e0";
      fetchSubmodules = false;
      sha256 = "sha256-4RPxMLxAAZqNohWiza5TxTucTMbMKDnf4lGReYKLDZM=";
    };
    pretty-name = "conform.nvim";
    date = "2024-10-31";
  };
  plugin-darkrose-nvim = {
    pname = "plugin-darkrose-nvim";
    version = "ce6ceb55332862e180264fa534d2ce4d70f02db2";
    src = fetchFromGitHub {
      owner = "water-sucks";
      repo = "darkrose.nvim";
      rev = "ce6ceb55332862e180264fa534d2ce4d70f02db2";
      fetchSubmodules = false;
      sha256 = "sha256-UDD0M1g3gbPIG4IyPKfcLxkeFEEZ0ZWcUrCAyzTDNs8=";
    };
    pretty-name = "darkrose.nvim";
    date = "2024-08-31";
  };
  plugin-dial-nvim = {
    pname = "plugin-dial-nvim";
    version = "ed4d6a5bbd5e479b4c4a3019d148561a2e6c1490";
    src = fetchFromGitHub {
      owner = "monaqa";
      repo = "dial.nvim";
      rev = "ed4d6a5bbd5e479b4c4a3019d148561a2e6c1490";
      fetchSubmodules = false;
      sha256 = "sha256-tTrmSqLFvCOqItHsHqirj9iQevWCk+RNi4bE9iIaEJc=";
    };
    pretty-name = "dial.nvim";
    date = "2024-07-15";
  };
  plugin-diffview-nvim = {
    pname = "plugin-diffview-nvim";
    version = "4516612fe98ff56ae0415a259ff6361a89419b0a";
    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "4516612fe98ff56ae0415a259ff6361a89419b0a";
      fetchSubmodules = false;
      sha256 = "sha256-SX+ybIzL/w6uyCy4iZKnWnzTFwqB1oXSgyYVAdpdKi8=";
    };
    pretty-name = "diffview.nvim";
    date = "2024-06-13";
  };
  plugin-dressing-nvim = {
    pname = "plugin-dressing-nvim";
    version = "1b7921eecc65af1baf8ac1dc06f0794934cbcfb2";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "1b7921eecc65af1baf8ac1dc06f0794934cbcfb2";
      fetchSubmodules = false;
      sha256 = "sha256-EtLYhAwoSoHyGiGrHAVYL4/CqcgO4rSbV6otO3V08hM=";
    };
    pretty-name = "dressing.nvim";
    date = "2024-09-17";
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
    version = "7e6d8611d8606efca64cb8cf1ca07550b7087d1c";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "flutter-tools.nvim";
      rev = "7e6d8611d8606efca64cb8cf1ca07550b7087d1c";
      fetchSubmodules = false;
      sha256 = "sha256-fKsC+ouSfW07dLipXP+RPMzQfCQ70oGknSdVo7dMAxw=";
    };
    pretty-name = "flutter-tools.nvim";
    date = "2024-10-30";
  };
  plugin-friendly-snippets = {
    pname = "plugin-friendly-snippets";
    version = "de8fce94985873666bd9712ea3e49ee17aadb1ed";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "de8fce94985873666bd9712ea3e49ee17aadb1ed";
      fetchSubmodules = false;
      sha256 = "sha256-H94Ryad0ZsSg/gioUgW+7sowij7GgtEUMNFi1IOZAys=";
    };
    pretty-name = "friendly-snippets";
    date = "2024-10-07";
  };
  plugin-gitsigns-nvim = {
    pname = "plugin-gitsigns-nvim";
    version = "7c27a30450130cd59c4994a6755e3c5d74d83e76";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "7c27a30450130cd59c4994a6755e3c5d74d83e76";
      fetchSubmodules = false;
      sha256 = "sha256-Z4KALX2NRdxykfW3OzSbz17+kuloU4kX8Qz9Wphrnmc=";
    };
    pretty-name = "gitsigns.nvim";
    date = "2024-10-30";
  };
  plugin-guess-indent-nvim = {
    pname = "plugin-guess-indent-nvim";
    version = "6cd61f7a600bb756e558627cd2e740302c58e32d";
    src = fetchFromGitHub {
      owner = "NMAC427";
      repo = "guess-indent.nvim";
      rev = "6cd61f7a600bb756e558627cd2e740302c58e32d";
      fetchSubmodules = false;
      sha256 = "sha256-mzX9LgG2+9aj2lMPlSZh3zP3wphHQdecXe7RHP1baT0=";
    };
    pretty-name = "guess-indent.nvim";
    date = "2024-07-06";
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
    version = "04e44b09ee3ff189c69ab082edac1ef7ae2e256c";
    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "indent-blankline.nvim";
      rev = "04e44b09ee3ff189c69ab082edac1ef7ae2e256c";
      fetchSubmodules = false;
      sha256 = "sha256-odv43EyZ3gMg410eBFAkye/SdAj+LcVVZPaZm8w0biM=";
    };
    pretty-name = "indent-blankline.nvim";
    date = "2024-10-29";
  };
  plugin-lazy-nvim = {
    pname = "plugin-lazy-nvim";
    version = "cf8ecc2c5e4332760431a33534240b0cbc6680ab";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "cf8ecc2c5e4332760431a33534240b0cbc6680ab";
      fetchSubmodules = false;
      sha256 = "sha256-TIE7jK172t5eKLqMo/cNnRmXce5rp4qQMlF1lAQFnv4=";
    };
    pretty-name = "lazy.nvim";
    date = "2024-10-22";
  };
  plugin-lazydev-nvim = {
    pname = "plugin-lazydev-nvim";
    version = "d5800897d9180cea800023f2429bce0a94ed6064";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazydev.nvim";
      rev = "d5800897d9180cea800023f2429bce0a94ed6064";
      fetchSubmodules = false;
      sha256 = "sha256-Xgeb2ABoCkWIr1Pfh41vp1hmbgQJY9vCAkztamdzrTk=";
    };
    pretty-name = "lazydev.nvim";
    date = "2024-11-01";
  };
  plugin-leap-nvim = {
    pname = "plugin-leap-nvim";
    version = "c6bfb191f1161fbabace1f36f578a20ac6c7642c";
    src = fetchFromGitHub {
      owner = "ggandor";
      repo = "leap.nvim";
      rev = "c6bfb191f1161fbabace1f36f578a20ac6c7642c";
      fetchSubmodules = false;
      sha256 = "sha256-PFD/UliAHKk2ga+7p/GmoZGqZFWenIVLkzmO+FkhvrY=";
    };
    pretty-name = "leap.nvim";
    date = "2024-07-30";
  };
  plugin-lspkind-nvim = {
    pname = "plugin-lspkind-nvim";
    version = "a700f1436d4a938b1a1a93c9962dc796afbaef4d";
    src = fetchFromGitHub {
      owner = "onsails";
      repo = "lspkind-nvim";
      rev = "a700f1436d4a938b1a1a93c9962dc796afbaef4d";
      fetchSubmodules = false;
      sha256 = "sha256-/ifgjqqCQw67l3+gUs00tt860pa92M1WYdjdZ0lhxak=";
    };
    pretty-name = "lspkind-nvim";
    date = "2024-10-26";
  };
  plugin-ltex_extra-nvim = {
    pname = "plugin-ltex_extra-nvim";
    version = "24acd044ce7a26b3cdb537cbd094de37c3e1ac45";
    src = fetchFromGitHub {
      owner = "barreiroleo";
      repo = "ltex_extra.nvim";
      rev = "24acd044ce7a26b3cdb537cbd094de37c3e1ac45";
      fetchSubmodules = false;
      sha256 = "sha256-OGeeEIF+z03DdJO2d2kzQ0lZnIYLabp6irYPqYgbCbc=";
    };
    pretty-name = "ltex_extra.nvim";
    date = "2024-06-15";
  };
  plugin-lualine-nvim = {
    pname = "plugin-lualine-nvim";
    version = "640260d7c2d98779cab89b1e7088ab14ea354a02";
    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "640260d7c2d98779cab89b1e7088ab14ea354a02";
      fetchSubmodules = false;
      sha256 = "sha256-BLqmjS24Tsgz0uAvEdn8tAiKkhlvk0Iiylq93+uxqW0=";
    };
    pretty-name = "lualine.nvim";
    date = "2024-11-01";
  };
  plugin-luarocks-nvim = {
    pname = "plugin-luarocks-nvim";
    version = "1db9093915eb16ba2473cfb8d343ace5ee04130a";
    src = fetchFromGitHub {
      owner = "vhyrro";
      repo = "luarocks.nvim";
      rev = "1db9093915eb16ba2473cfb8d343ace5ee04130a";
      fetchSubmodules = false;
      sha256 = "sha256-siqpyQLpxWYfZKxoPrflnCg8V5oTQcIXKrezjCgZfMM=";
    };
    pretty-name = "luarocks.nvim";
    date = "2024-05-28";
  };
  plugin-luasnip-latex-snippets-nvim = {
    pname = "plugin-luasnip-latex-snippets-nvim";
    version = "4b91f28d91979f61a3e8aef1cee5b7c7f2c7beb8";
    src = fetchFromGitHub {
      owner = "iurimateus";
      repo = "luasnip-latex-snippets.nvim";
      rev = "4b91f28d91979f61a3e8aef1cee5b7c7f2c7beb8";
      fetchSubmodules = false;
      sha256 = "sha256-Y8TZCu5iBfnW6GuKZMOaynHs57U6Qa0YBycG8MIW2Qs=";
    };
    pretty-name = "luasnip-latex-snippets.nvim";
    date = "2024-05-09";
  };
  plugin-mini-move = {
    pname = "plugin-mini-move";
    version = "4caa1c212f5ca3d1633d21cfb184808090ed74b1";
    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.move";
      rev = "4caa1c212f5ca3d1633d21cfb184808090ed74b1";
      fetchSubmodules = false;
      sha256 = "sha256-nX0eAlhMnKhAftgM6qeHUuawagumLQMPKDkqZNPLljg=";
    };
    pretty-name = "mini.move";
    date = "2024-08-15";
  };
  plugin-mini-surround = {
    pname = "plugin-mini-surround";
    version = "48a9795c9d352c771e1ab5dedab6063c0a2df037";
    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "48a9795c9d352c771e1ab5dedab6063c0a2df037";
      fetchSubmodules = false;
      sha256 = "sha256-Rzg2yYbOAjOPVNEiUv5qOBObqO1bcDsAgc5ned9HZQw=";
    };
    pretty-name = "mini.surround";
    date = "2024-10-15";
  };
  plugin-neocord = {
    pname = "plugin-neocord";
    version = "587e03390a355e9c364d48638e0e0db2a8431d73";
    src = fetchFromGitHub {
      owner = "IogaMaster";
      repo = "neocord";
      rev = "587e03390a355e9c364d48638e0e0db2a8431d73";
      fetchSubmodules = false;
      sha256 = "sha256-4dVaxigJ8eOXpgiqcxUYIF4SoC1CPFvNHYKT0zxIYo0=";
    };
    pretty-name = "neocord";
    date = "2024-10-19";
  };
  plugin-neorg = {
    pname = "plugin-neorg";
    version = "488507bb996f75ee29073f50dec32fa220867ca5";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "488507bb996f75ee29073f50dec32fa220867ca5";
      fetchSubmodules = false;
      sha256 = "sha256-qTo8rxwvANrgP8UccFhzsNsH+Jbmqv2iOlw0ccLNYm4=";
    };
    pretty-name = "neorg";
    date = "2024-10-30";
  };
  plugin-neorg-telescope = {
    pname = "plugin-neorg-telescope";
    version = "ddb2556644cae922699a239bbb0fe16e25b084b7";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg-telescope";
      rev = "ddb2556644cae922699a239bbb0fe16e25b084b7";
      fetchSubmodules = false;
      sha256 = "sha256-ei4uUqpIQjGKzu5ryu0Hlmis9TS9FJsYnjt4J4QdWlw=";
    };
    pretty-name = "neorg-telescope";
    date = "2024-07-30";
  };
  plugin-neorg-templates = {
    pname = "plugin-neorg-templates";
    version = "2808ec9796e0ba89377e1eeb73bd25af3d10ef7f";
    src = fetchFromGitHub {
      owner = "pysan3";
      repo = "neorg-templates";
      rev = "2808ec9796e0ba89377e1eeb73bd25af3d10ef7f";
      fetchSubmodules = false;
      sha256 = "sha256-nZOAxXSHTUDBpUBS/Esq5HHwEaTB01dI7x5CQFB3pcw=";
    };
    pretty-name = "neorg-templates";
    date = "2024-02-11";
  };
  plugin-noice-nvim = {
    pname = "plugin-noice-nvim";
    version = "5a78b42bec5e775f2db03bf93f6d1e0f3636306c";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "noice.nvim";
      rev = "5a78b42bec5e775f2db03bf93f6d1e0f3636306c";
      fetchSubmodules = false;
      sha256 = "sha256-khOtNCP+8YDmYeOeeYEvFpHR9VaXC+3wlx/lFQ3fyq8=";
    };
    pretty-name = "noice.nvim";
    date = "2024-11-02";
  };
  plugin-nui-nvim = {
    pname = "plugin-nui-nvim";
    version = "b58e2bfda5cea347c9d58b7f11cf3012c7b3953f";
    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "b58e2bfda5cea347c9d58b7f11cf3012c7b3953f";
      fetchSubmodules = false;
      sha256 = "sha256-90Wq+vT361mTaGU/SvAezqJkX9HHmZ2GI2fKBDxPn04=";
    };
    pretty-name = "nui.nvim";
    date = "2024-09-15";
  };
  plugin-nvim-autopairs = {
    pname = "plugin-nvim-autopairs";
    version = "ee297f215e95a60b01fde33275cc3c820eddeebe";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "ee297f215e95a60b01fde33275cc3c820eddeebe";
      fetchSubmodules = false;
      sha256 = "sha256-pqYOaEjKUd5YLVWX0Bf/kYT+sBlN1D24rOBuIz2BIqk=";
    };
    pretty-name = "nvim-autopairs";
    date = "2024-10-01";
  };
  plugin-nvim-cmp = {
    pname = "plugin-nvim-cmp";
    version = "f17d9b4394027ff4442b298398dfcaab97e40c4f";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "f17d9b4394027ff4442b298398dfcaab97e40c4f";
      fetchSubmodules = false;
      sha256 = "sha256-iNEoMl/X0nh2sAio1h+dkuobeOXRBXKFJCcElUyyW54=";
    };
    pretty-name = "nvim-cmp";
    date = "2024-11-02";
  };
  plugin-nvim-colorizer-lua = {
    pname = "plugin-nvim-colorizer-lua";
    version = "0671e0eabc6842676d3310370e8fae4e1c51d7f9";
    src = fetchFromGitHub {
      owner = "NvChad";
      repo = "nvim-colorizer.lua";
      rev = "0671e0eabc6842676d3310370e8fae4e1c51d7f9";
      fetchSubmodules = false;
      sha256 = "sha256-Ffi1Q5+AI+Ysi2T56myGWmAzzyq6wW0J/Pwoc3B0ncY=";
    };
    pretty-name = "nvim-colorizer.lua";
    date = "2024-09-11";
  };
  plugin-nvim-dap = {
    pname = "plugin-nvim-dap";
    version = "7ff6936010b7222fea2caea0f67ed77f1b7c60dd";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap";
      rev = "7ff6936010b7222fea2caea0f67ed77f1b7c60dd";
      fetchSubmodules = false;
      sha256 = "sha256-zN0GTcnUBDfSmvmZd9kBrgW/k3aqbzUlVzgf7wNih40=";
    };
    pretty-name = "nvim-dap";
    date = "2024-09-28";
  };
  plugin-nvim-dap-go = {
    pname = "plugin-nvim-dap-go";
    version = "6aa88167ea1224bcef578e8c7160fe8afbb44848";
    src = fetchFromGitHub {
      owner = "leoluz";
      repo = "nvim-dap-go";
      rev = "6aa88167ea1224bcef578e8c7160fe8afbb44848";
      fetchSubmodules = false;
      sha256 = "sha256-wcGp5df1ER5T5oLVitWE02OywgJs3V4pazcGU5qVaUY=";
    };
    pretty-name = "nvim-dap-go";
    date = "2024-10-02";
  };
  plugin-nvim-dap-python = {
    pname = "plugin-nvim-dap-python";
    version = "3e3dd98d4d83715c9e0e429b4a5da7bd706e6ceb";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap-python";
      rev = "3e3dd98d4d83715c9e0e429b4a5da7bd706e6ceb";
      fetchSubmodules = false;
      sha256 = "sha256-Ck7OErQRcK4Udfzon8b+UgTO1PY0OF2LceJieDdXypw=";
    };
    pretty-name = "nvim-dap-python";
    date = "2024-10-24";
  };
  plugin-nvim-dap-ui = {
    pname = "plugin-nvim-dap-ui";
    version = "ffa89839f97bad360e78428d5c740fdad9a0ff02";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-dap-ui";
      rev = "ffa89839f97bad360e78428d5c740fdad9a0ff02";
      fetchSubmodules = false;
      sha256 = "sha256-kg7lyVBeuBqPCVzvt3pBoonQupgf1nGh3EvCF/astf4=";
    };
    pretty-name = "nvim-dap-ui";
    date = "2024-10-02";
  };
  plugin-nvim-dap-virtual-text = {
    pname = "plugin-nvim-dap-virtual-text";
    version = "76d80c3d171224315b61c006502a1e30c213a9ab";
    src = fetchFromGitHub {
      owner = "theHamsta";
      repo = "nvim-dap-virtual-text";
      rev = "76d80c3d171224315b61c006502a1e30c213a9ab";
      fetchSubmodules = false;
      sha256 = "sha256-YWreRe0uXslyzeW9M8/3jFgN49fnwPUiq5NgLCjoyUY=";
    };
    pretty-name = "nvim-dap-virtual-text";
    date = "2024-11-01";
  };
  plugin-nvim-jdtls = {
    pname = "plugin-nvim-jdtls";
    version = "a9b5fc8cfda32df2bae94db91b4f111374a27807";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-jdtls";
      rev = "a9b5fc8cfda32df2bae94db91b4f111374a27807";
      fetchSubmodules = false;
      sha256 = "sha256-76DMx4Q4z4/G6zmUSoqUCPrj7dbI3QP8fbA17AigHdA=";
    };
    pretty-name = "nvim-jdtls";
    date = "2024-10-31";
  };
  plugin-nvim-lightbulb = {
    pname = "plugin-nvim-lightbulb";
    version = "33d4c95e0e853956bc9468b70b3064c87d5abaca";
    src = fetchFromGitHub {
      owner = "kosayoda";
      repo = "nvim-lightbulb";
      rev = "33d4c95e0e853956bc9468b70b3064c87d5abaca";
      fetchSubmodules = false;
      sha256 = "sha256-JfXSuOBwyxgH/PzzcBQ7OqoXHkLGZSCYutYHLocbTto=";
    };
    pretty-name = "nvim-lightbulb";
    date = "2024-10-16";
  };
  plugin-nvim-lspconfig = {
    pname = "plugin-nvim-lspconfig";
    version = "54617a18f4cf46f0c2f6d024fa6feb7515fe036d";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "54617a18f4cf46f0c2f6d024fa6feb7515fe036d";
      fetchSubmodules = false;
      sha256 = "sha256-dtxOSupsrxOUTLhizKNcGHKR9oa7EZySvjONfrdBvcM=";
    };
    pretty-name = "nvim-lspconfig";
    date = "2024-10-31";
  };
  plugin-nvim-nio = {
    pname = "plugin-nvim-nio";
    version = "a428f309119086dc78dd4b19306d2d67be884eee";
    src = fetchFromGitHub {
      owner = "nvim-neotest";
      repo = "nvim-nio";
      rev = "a428f309119086dc78dd4b19306d2d67be884eee";
      fetchSubmodules = false;
      sha256 = "sha256-i6imNTb1xrfBlaeOyxyIwAZ/+o6ew9C4/z34a7/BgFg=";
    };
    pretty-name = "nvim-nio";
    date = "2024-07-11";
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
    version = "82ab19ebf79c1839d7351f2fed213d1af13a598e";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "82ab19ebf79c1839d7351f2fed213d1af13a598e";
      fetchSubmodules = false;
      sha256 = "sha256-pby+XKxBSUoFjC4erWoeKLgrnaxHfSFClcM9+B9sY5g=";
    };
    pretty-name = "nvim-tree.lua";
    date = "2024-11-02";
  };
  plugin-nvim-ts-autotag = {
    pname = "plugin-nvim-ts-autotag";
    version = "e239a560f338be31337e7abc3ee42515daf23f5e";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-ts-autotag";
      rev = "e239a560f338be31337e7abc3ee42515daf23f5e";
      fetchSubmodules = false;
      sha256 = "sha256-QEzUKvT+ChYSa9F4zg3Lw+7Sj0JzJem9nh2mWmS8Y+I=";
    };
    pretty-name = "nvim-ts-autotag";
    date = "2024-08-27";
  };
  plugin-nvim-ts-context-commentstring = {
    pname = "plugin-nvim-ts-context-commentstring";
    version = "9c74db656c3d0b1c4392fc89a016b1910539e7c0";
    src = fetchFromGitHub {
      owner = "JoosepAlviste";
      repo = "nvim-ts-context-commentstring";
      rev = "9c74db656c3d0b1c4392fc89a016b1910539e7c0";
      fetchSubmodules = false;
      sha256 = "sha256-uJDuxc6iDo/fCtfRUpUmE4HIaH9YBs44+vXzw/yFP64=";
    };
    pretty-name = "nvim-ts-context-commentstring";
    date = "2024-10-06";
  };
  plugin-nvim-ufo = {
    pname = "plugin-nvim-ufo";
    version = "522d719d421fc42b95577d9624048d8348d326ea";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "nvim-ufo";
      rev = "522d719d421fc42b95577d9624048d8348d326ea";
      fetchSubmodules = false;
      sha256 = "sha256-++DAY+swQmClk8jSikT12qdwE4/IfBl0T0NxznCOxSc=";
    };
    pretty-name = "nvim-ufo";
    date = "2024-10-29";
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
    version = "19d257cf889f79f4022163c3fbb5e08639077bd8";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "19d257cf889f79f4022163c3fbb5e08639077bd8";
      fetchSubmodules = false;
      sha256 = "sha256-SUWEOp+QcfHjYaqqr4Zwvh0x91IAJXvrdMkQtuWMlGc=";
    };
    pretty-name = "nvim-web-devicons";
    date = "2024-10-11";
  };
  plugin-one-small-step-for-vimkind = {
    pname = "plugin-one-small-step-for-vimkind";
    version = "ad065ad2c814249cfb9e344ce5b2b35d36fbc09f";
    src = fetchFromGitHub {
      owner = "jbyuki";
      repo = "one-small-step-for-vimkind";
      rev = "ad065ad2c814249cfb9e344ce5b2b35d36fbc09f";
      fetchSubmodules = false;
      sha256 = "sha256-KIxEjUutHkPRUubZQO3ZaFUm9Lm3mUJ6p6HB6hLuJEM=";
    };
    pretty-name = "one-small-step-for-vimkind";
    date = "2024-10-15";
  };
  plugin-overseer-nvim = {
    pname = "plugin-overseer-nvim";
    version = "c416be50c2715a7f631d67e21154b8e6cd873ca3";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "overseer.nvim";
      rev = "c416be50c2715a7f631d67e21154b8e6cd873ca3";
      fetchSubmodules = false;
      sha256 = "sha256-QI8do5IZcdMxNJV8UCs534QtXHCPb0Pk8TJN8FNmNkY=";
    };
    pretty-name = "overseer.nvim";
    date = "2024-10-25";
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
    version = "2d9b06177a975543726ce5c73fca176cedbffe9d";
    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "2d9b06177a975543726ce5c73fca176cedbffe9d";
      fetchSubmodules = false;
      sha256 = "sha256-bmmPekAvuBvLQmrnnX0n+FRBqfVxBsObhxIEkDGAla4=";
    };
    pretty-name = "plenary.nvim";
    date = "2024-09-17";
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
    version = "119e8961014c9bfaf1487bf3c2a393d254f337e2";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "promise-async";
      rev = "119e8961014c9bfaf1487bf3c2a393d254f337e2";
      fetchSubmodules = false;
      sha256 = "sha256-9eM66brPjiFlY64vmBetRYrKnpDyN7+/URMm4GsGimA=";
    };
    pretty-name = "promise-async";
    date = "2024-08-05";
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
    version = "932102696ead2b7ab9ff65017767b57e2722fdde";
    src = fetchFromGitHub {
      owner = "tiagovla";
      repo = "scope.nvim";
      rev = "932102696ead2b7ab9ff65017767b57e2722fdde";
      fetchSubmodules = false;
      sha256 = "sha256-2eM+KXsF66ocdaV4zVHy8afgP1v+Gj85R3XBhmDORtU=";
    };
    pretty-name = "scope.nvim";
    date = "2024-09-17";
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
    version = "85922dde3767e01d42a08e750a773effbffaea3e";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "85922dde3767e01d42a08e750a773effbffaea3e";
      fetchSubmodules = false;
      sha256 = "sha256-Qa/f+0asQvA8mhIUajC4BGZCI92OqA6ySVoQSC3ZY3s=";
    };
    pretty-name = "telescope.nvim";
    date = "2024-10-29";
  };
  plugin-todo-comments-nvim = {
    pname = "plugin-todo-comments-nvim";
    version = "ae0a2afb47cf7395dc400e5dc4e05274bf4fb9e0";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "todo-comments.nvim";
      rev = "ae0a2afb47cf7395dc400e5dc4e05274bf4fb9e0";
      fetchSubmodules = false;
      sha256 = "sha256-EH4Sy7qNkzOgA1INFzrtsRfD79TgMqSbKUdundyw22w=";
    };
    pretty-name = "todo-comments.nvim";
    date = "2024-09-16";
  };
  plugin-trouble-nvim = {
    pname = "plugin-trouble-nvim";
    version = "2f3b537f2207ce32f4459f9d56746ee013b5e01b";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "2f3b537f2207ce32f4459f9d56746ee013b5e01b";
      fetchSubmodules = false;
      sha256 = "sha256-J0Gor5thMqe6T/4PYC8I1RAywfec0eWU1O+GoHUiHnI=";
    };
    pretty-name = "trouble.nvim";
    date = "2024-10-23";
  };
  plugin-twilight-nvim = {
    pname = "plugin-twilight-nvim";
    version = "1584c0b0a979b71fd86b18d302ba84e9aba85b1b";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "twilight.nvim";
      rev = "1584c0b0a979b71fd86b18d302ba84e9aba85b1b";
      fetchSubmodules = false;
      sha256 = "sha256-sC9DSgkQw+jHvi+xUP+iWSSLV0kIWWmrom2Mq5q+RJo=";
    };
    pretty-name = "twilight.nvim";
    date = "2024-07-22";
  };
  plugin-typst-vim = {
    pname = "plugin-typst-vim";
    version = "50e89f481102d5c9ef6990b9f8086c0c7d64bff6";
    src = fetchFromGitHub {
      owner = "kaarmu";
      repo = "typst.vim";
      rev = "50e89f481102d5c9ef6990b9f8086c0c7d64bff6";
      fetchSubmodules = false;
      sha256 = "sha256-dfxwl1Yw0EyN9h1OjZsrOeiTLYrdZ6DA3CUxNCX+DpQ=";
    };
    pretty-name = "typst.vim";
    date = "2024-11-02";
  };
  plugin-vim-eunuch = {
    pname = "plugin-vim-eunuch";
    version = "6c6af39aa0a25223389607338ae965c5dfc7c972";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-eunuch";
      rev = "6c6af39aa0a25223389607338ae965c5dfc7c972";
      fetchSubmodules = false;
      sha256 = "sha256-aXRX2q8iphnCxccqJYydTCn+R5y1QXxmRPtH85O9Dwc=";
    };
    pretty-name = "vim-eunuch";
    date = "2024-10-13";
  };
  plugin-vim-repeat = {
    pname = "plugin-vim-repeat";
    version = "65846025c15494983dafe5e3b46c8f88ab2e9635";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-repeat";
      rev = "65846025c15494983dafe5e3b46c8f88ab2e9635";
      fetchSubmodules = false;
      sha256 = "sha256-G/dmkq1KtSHIl+I5p3LfO6mGPS3eyLRbEEsuLbTpGlk=";
    };
    pretty-name = "vim-repeat";
    date = "2024-07-08";
  };
  plugin-vimtex = {
    pname = "plugin-vimtex";
    version = "0785fd98af20f308ce6856f75a70a4ece9abab29";
    src = fetchFromGitHub {
      owner = "lervag";
      repo = "vimtex";
      rev = "0785fd98af20f308ce6856f75a70a4ece9abab29";
      fetchSubmodules = false;
      sha256 = "sha256-f4n3t8XqaQbbMDkMtjCoJj8tfq1Nmcl3Z2YFSIsFBLw=";
    };
    pretty-name = "vimtex";
    date = "2024-10-26";
  };
  plugin-which-key-nvim = {
    pname = "plugin-which-key-nvim";
    version = "8badb359f7ab8711e2575ef75dfe6fbbd87e4821";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "8badb359f7ab8711e2575ef75dfe6fbbd87e4821";
      fetchSubmodules = false;
      sha256 = "sha256-crECQnWpptz1A/hOndHPEduK6MqWQH8kyf58h+4snHo=";
    };
    pretty-name = "which-key.nvim";
    date = "2024-10-02";
  };
  plugin-zen-mode-nvim = {
    pname = "plugin-zen-mode-nvim";
    version = "29b292bdc58b76a6c8f294c961a8bf92c5a6ebd6";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "zen-mode.nvim";
      rev = "29b292bdc58b76a6c8f294c961a8bf92c5a6ebd6";
      fetchSubmodules = false;
      sha256 = "sha256-iHGsnFG1PBup3/+JbSwXf/TerQ7PNXkp9gKVznmRbTE=";
    };
    pretty-name = "zen-mode.nvim";
    date = "2024-07-22";
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
    version = "1014d2fd6396856c312054d6c30df4d78b62966c";
    src = fetchFromGitHub {
      owner = "IndianBoy42";
      repo = "tree-sitter-just";
      rev = "1014d2fd6396856c312054d6c30df4d78b62966c";
      fetchSubmodules = false;
      sha256 = "sha256-8vr55zhJOJxZhc8bXZpvO6a/eEYUJQ+HBWC4xRYbrgk=";
    };
    pretty-name = "tree-sitter-just";
    date = "2024-10-27";
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
