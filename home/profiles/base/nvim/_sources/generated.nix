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
    version = "45db5addf8d0a201e1cf247cae4cdce605ad3768";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "45db5addf8d0a201e1cf247cae4cdce605ad3768";
      fetchSubmodules = false;
      sha256 = "sha256-1b9hT6+wUoH31JUjWHaBOJMg2juMxoA1vPfme3zBEYg=";
    };
    pretty-name = "LuaSnip";
    date = "2024-08-28";
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
    version = "0b2fd861eee7595015b6561dade52fb060be10c4";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "0b2fd861eee7595015b6561dade52fb060be10c4";
      fetchSubmodules = false;
      sha256 = "sha256-VjusgJ3nEc+P/3bRjdS93qAErn6PZh7YkAAjxFF6Dxk=";
    };
    pretty-name = "bufferline.nvim";
    date = "2024-07-18";
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
  plugin-darkrose-nvim = {
    pname = "plugin-darkrose-nvim";
    version = "c252ea0010b4dc7539f4b64bcaf64f9101a1cf16";
    src = fetchFromGitHub {
      owner = "water-sucks";
      repo = "darkrose.nvim";
      rev = "c252ea0010b4dc7539f4b64bcaf64f9101a1cf16";
      fetchSubmodules = false;
      sha256 = "sha256-8lyrRZBYHLXcWX8MrSU4bZ+vBHU6IeelknBMuRFgaJQ=";
    };
    pretty-name = "darkrose.nvim";
    date = "2024-06-28";
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
    version = "c5775a888adbc50652cb370073fcfec963eca93e";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "c5775a888adbc50652cb370073fcfec963eca93e";
      fetchSubmodules = false;
      sha256 = "sha256-6T2p0hI7/WqaDFQodaDq7uiyuplVqeekayQ2equ/mC0=";
    };
    pretty-name = "dressing.nvim";
    date = "2024-08-16";
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
    version = "ea1d398f543a54ba95357c3b8bb9d6f68eaec36c";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "flutter-tools.nvim";
      rev = "ea1d398f543a54ba95357c3b8bb9d6f68eaec36c";
      fetchSubmodules = false;
      sha256 = "sha256-tnn92uwjxhQ/DSrWlHbLBxTRBfu6dHC4QGYvRHUXZs4=";
    };
    pretty-name = "flutter-tools.nvim";
    date = "2024-08-30";
  };
  plugin-friendly-snippets = {
    pname = "plugin-friendly-snippets";
    version = "00ebcaa159e817150bd83bfe2d51fa3b3377d5c4";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "00ebcaa159e817150bd83bfe2d51fa3b3377d5c4";
      fetchSubmodules = false;
      sha256 = "sha256-kwGyfXZ+jZ3PIniESUGBltBm2fRXV5ArNhSo+zosdco=";
    };
    pretty-name = "friendly-snippets";
    date = "2024-07-14";
  };
  plugin-gitsigns-nvim = {
    pname = "plugin-gitsigns-nvim";
    version = "899e993850084ea33d001ec229d237bc020c19ae";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "899e993850084ea33d001ec229d237bc020c19ae";
      fetchSubmodules = false;
      sha256 = "sha256-dy5Hc2yQMZ150G4mRyfSJe9nCMlW+4l548IQfzgoGUM=";
    };
    pretty-name = "gitsigns.nvim";
    date = "2024-08-28";
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
    version = "db926997af951da38e5004ec7b9fbdc480b48f5d";
    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "indent-blankline.nvim";
      rev = "db926997af951da38e5004ec7b9fbdc480b48f5d";
      fetchSubmodules = false;
      sha256 = "sha256-EVhwfPQIuR7Ec3PmXIyrrWpcVTuOAeEAZ7q4QV+V6Xc=";
    };
    pretty-name = "indent-blankline.nvim";
    date = "2024-08-20";
  };
  plugin-lazy-nvim = {
    pname = "plugin-lazy-nvim";
    version = "48b52b5cfcf8f88ed0aff8fde573a5cc20b1306d";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "48b52b5cfcf8f88ed0aff8fde573a5cc20b1306d";
      fetchSubmodules = false;
      sha256 = "sha256-qERgCq8exkdVQok72TAU1+xvTiy2wxcjsVwoHE59kOc=";
    };
    pretty-name = "lazy.nvim";
    date = "2024-08-31";
  };
  plugin-lazydev-nvim = {
    pname = "plugin-lazydev-nvim";
    version = "491452cf1ca6f029e90ad0d0368848fac717c6d2";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazydev.nvim";
      rev = "491452cf1ca6f029e90ad0d0368848fac717c6d2";
      fetchSubmodules = false;
      sha256 = "sha256-D5gP2rVPYoWc8hslTrH7Z90cE7XEu+tfkD6FZzY/iPk=";
    };
    pretty-name = "lazydev.nvim";
    date = "2024-07-25";
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
    version = "cff4ae321a91ee3473a92ea1a8c637e3a9510aec";
    src = fetchFromGitHub {
      owner = "onsails";
      repo = "lspkind-nvim";
      rev = "cff4ae321a91ee3473a92ea1a8c637e3a9510aec";
      fetchSubmodules = false;
      sha256 = "sha256-1KK6JhQUtA5mxwRSKU5e3pTQzZwaoAjzycBLx5X/xlA=";
    };
    pretty-name = "lspkind-nvim";
    date = "2024-07-25";
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
    version = "b431d228b7bbcdaea818bdc3e25b8cdbe861f056";
    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "b431d228b7bbcdaea818bdc3e25b8cdbe861f056";
      fetchSubmodules = false;
      sha256 = "sha256-gCm7m96PkZyrgjmt7Efc+NMZKStAq1zr7JRCYOgGDuE=";
    };
    pretty-name = "lualine.nvim";
    date = "2024-08-12";
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
  plugin-lush-nvim = {
    pname = "plugin-lush-nvim";
    version = "45a79ec4acb5af783a6a29673a999ce37f00497e";
    src = fetchFromGitHub {
      owner = "rktjmp";
      repo = "lush.nvim";
      rev = "45a79ec4acb5af783a6a29673a999ce37f00497e";
      fetchSubmodules = false;
      sha256 = "sha256-meUCXjJ9kHOOpRd4TR2dc7Ai97zOQX35hYFEDZseiSk=";
    };
    pretty-name = "lush.nvim";
    date = "2024-08-16";
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
    version = "d8913ed23be0a1a4585ae34414821cc343a46174";
    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "d8913ed23be0a1a4585ae34414821cc343a46174";
      fetchSubmodules = false;
      sha256 = "sha256-sRq2LJELknAVS7Dd7lacYnVa3j46Rz8iMchG1EgQW6A=";
    };
    pretty-name = "mini.surround";
    date = "2024-08-17";
  };
  plugin-neocord = {
    pname = "plugin-neocord";
    version = "aa7a58023166533da83ca7b11c0d2569e45d7381";
    src = fetchFromGitHub {
      owner = "IogaMaster";
      repo = "neocord";
      rev = "aa7a58023166533da83ca7b11c0d2569e45d7381";
      fetchSubmodules = false;
      sha256 = "sha256-oVWdnQlgXIMzMiybMq7yR/WfEW+Fm5RmhWx0RWprlfQ=";
    };
    pretty-name = "neocord";
    date = "2024-04-24";
  };
  plugin-neorg = {
    pname = "plugin-neorg";
    version = "85f15f033d8c56366ac1e6ae93c940db8ad067ca";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "85f15f033d8c56366ac1e6ae93c940db8ad067ca";
      fetchSubmodules = false;
      sha256 = "sha256-emIQ0DtsCG3m8d7zEe5DDAz7b1I4wOnuXEClAXnWTlQ=";
    };
    pretty-name = "neorg";
    date = "2024-08-17";
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
    version = "448bb9c524a7601035449210838e374a30153172";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "noice.nvim";
      rev = "448bb9c524a7601035449210838e374a30153172";
      fetchSubmodules = false;
      sha256 = "sha256-86oWl3XGuuVhaWVe6egjc7Mt8Pp7qpTMJ2EZiNlztt8=";
    };
    pretty-name = "noice.nvim";
    date = "2024-07-25";
  };
  plugin-nui-nvim = {
    pname = "plugin-nui-nvim";
    version = "61574ce6e60c815b0a0c4b5655b8486ba58089a1";
    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "61574ce6e60c815b0a0c4b5655b8486ba58089a1";
      fetchSubmodules = false;
      sha256 = "sha256-o2iNktcWxL0oCtCkbARMiWnTlZA8QWQHy2qeOanBlO4=";
    };
    pretty-name = "nui.nvim";
    date = "2024-06-26";
  };
  plugin-nvim-autopairs = {
    pname = "plugin-nvim-autopairs";
    version = "19606af7c039271d5aa96bceff101e7523af3136";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "19606af7c039271d5aa96bceff101e7523af3136";
      fetchSubmodules = false;
      sha256 = "sha256-e+67etOnK98WUVNy/NsMm51X2xLQMjGuQvp765o9PNA=";
    };
    pretty-name = "nvim-autopairs";
    date = "2024-08-19";
  };
  plugin-nvim-cmp = {
    pname = "plugin-nvim-cmp";
    version = "ae644feb7b67bf1ce4260c231d1d4300b19c6f30";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "ae644feb7b67bf1ce4260c231d1d4300b19c6f30";
      fetchSubmodules = false;
      sha256 = "sha256-NcodgUp8obTsjgc+5j2dKr0f3FelYikQTJngfZXRZzo=";
    };
    pretty-name = "nvim-cmp";
    date = "2024-08-01";
  };
  plugin-nvim-colorizer-lua = {
    pname = "plugin-nvim-colorizer-lua";
    version = "194ec600488f7c7229668d0e80bd197f3a2b84ff";
    src = fetchFromGitHub {
      owner = "NvChad";
      repo = "nvim-colorizer.lua";
      rev = "194ec600488f7c7229668d0e80bd197f3a2b84ff";
      fetchSubmodules = false;
      sha256 = "sha256-Qw7IcfM3N+7ml98ExMPBszDz9FwJPtmrVqrVDa0TJKQ=";
    };
    pretty-name = "nvim-colorizer.lua";
    date = "2024-07-25";
  };
  plugin-nvim-dap = {
    pname = "plugin-nvim-dap";
    version = "281a2e4cd1e7a17cea7ecb1745d84a8ab1249925";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap";
      rev = "281a2e4cd1e7a17cea7ecb1745d84a8ab1249925";
      fetchSubmodules = false;
      sha256 = "sha256-GcAZXPaJfxz3boQhCOnn/aayUJ3XSVp7VaU9Qv1I5OA=";
    };
    pretty-name = "nvim-dap";
    date = "2024-08-18";
  };
  plugin-nvim-dap-go = {
    pname = "plugin-nvim-dap-go";
    version = "5511788255c92bdd845f8d9690f88e2e0f0ff9f2";
    src = fetchFromGitHub {
      owner = "leoluz";
      repo = "nvim-dap-go";
      rev = "5511788255c92bdd845f8d9690f88e2e0f0ff9f2";
      fetchSubmodules = false;
      sha256 = "sha256-VYRq1c3/83gcc/6jyHfQaLlS4LlTXhYlZrq0Y/1S9SE=";
    };
    pretty-name = "nvim-dap-go";
    date = "2024-08-05";
  };
  plugin-nvim-dap-python = {
    pname = "plugin-nvim-dap-python";
    version = "7c427e2bbc72d46ea3c9602bede6465ef61b8c19";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap-python";
      rev = "7c427e2bbc72d46ea3c9602bede6465ef61b8c19";
      fetchSubmodules = false;
      sha256 = "sha256-OXAMFIi83lEOtKJ6/bkmaus23GKtYeRkx2Wv+Yvb67g=";
    };
    pretty-name = "nvim-dap-python";
    date = "2024-08-19";
  };
  plugin-nvim-dap-ui = {
    pname = "plugin-nvim-dap-ui";
    version = "1c351e4e417d4691da12948b6ecf966936a56d28";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-dap-ui";
      rev = "1c351e4e417d4691da12948b6ecf966936a56d28";
      fetchSubmodules = false;
      sha256 = "sha256-2ysLTiX2664QhFtEmpqM/sdao1+MLSTukxmaRTQv6UE=";
    };
    pretty-name = "nvim-dap-ui";
    date = "2024-08-26";
  };
  plugin-nvim-dap-virtual-text = {
    pname = "plugin-nvim-dap-virtual-text";
    version = "484995d573c0f0563f6a66ebdd6c67b649489615";
    src = fetchFromGitHub {
      owner = "theHamsta";
      repo = "nvim-dap-virtual-text";
      rev = "484995d573c0f0563f6a66ebdd6c67b649489615";
      fetchSubmodules = false;
      sha256 = "sha256-+f30i+Z/eQQk9v59BxwEgVWEqCevNgstoQSo6KdMCF0=";
    };
    pretty-name = "nvim-dap-virtual-text";
    date = "2024-07-02";
  };
  plugin-nvim-jdtls = {
    pname = "plugin-nvim-jdtls";
    version = "99e4b2081de1d9162666cc7b563cbeb01c26b66b";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-jdtls";
      rev = "99e4b2081de1d9162666cc7b563cbeb01c26b66b";
      fetchSubmodules = false;
      sha256 = "sha256-c/8s3lBHd2NRTq0HKWx05D/8pci8GYESnLzaXBw74z8=";
    };
    pretty-name = "nvim-jdtls";
    date = "2024-08-05";
  };
  plugin-nvim-lightbulb = {
    pname = "plugin-nvim-lightbulb";
    version = "1cae7b7153ae98dcf1b11173a443ac1b6d8e3d49";
    src = fetchFromGitHub {
      owner = "kosayoda";
      repo = "nvim-lightbulb";
      rev = "1cae7b7153ae98dcf1b11173a443ac1b6d8e3d49";
      fetchSubmodules = false;
      sha256 = "sha256-KfldlEwrYiZJZ0j7du/JWXx+ZOKH1XRT3fDYfaW7xfE=";
    };
    pretty-name = "nvim-lightbulb";
    date = "2024-08-16";
  };
  plugin-nvim-lspconfig = {
    pname = "plugin-nvim-lspconfig";
    version = "3ad562700d0615818bf358268ac8914f6ce2b079";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "3ad562700d0615818bf358268ac8914f6ce2b079";
      fetchSubmodules = false;
      sha256 = "sha256-ScIkXVAEA90hPH6PzJcdbBcUJj3kElHiXTO/H4Yoj8s=";
    };
    pretty-name = "nvim-lspconfig";
    date = "2024-08-30";
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
    version = "d43ab67d0eb4317961c5e9d15fffe908519debe0";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "d43ab67d0eb4317961c5e9d15fffe908519debe0";
      fetchSubmodules = false;
      sha256 = "sha256-/1qj0L/d/iZk+zn0JIUkdHSYp2etciMo35fhV28J5Kw=";
    };
    pretty-name = "nvim-tree.lua";
    date = "2024-08-25";
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
    version = "375c2d86cee6674afd75b4f727ce3a80065552f7";
    src = fetchFromGitHub {
      owner = "JoosepAlviste";
      repo = "nvim-ts-context-commentstring";
      rev = "375c2d86cee6674afd75b4f727ce3a80065552f7";
      fetchSubmodules = false;
      sha256 = "sha256-Cpl2SXpOIO7Gz99MM0u4pSCl1RNQTZjF+biNIcZv8lw=";
    };
    pretty-name = "nvim-ts-context-commentstring";
    date = "2024-08-15";
  };
  plugin-nvim-ufo = {
    pname = "plugin-nvim-ufo";
    version = "b23a46aa06f5f653d107efbc67fd2aa3877ac344";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "nvim-ufo";
      rev = "b23a46aa06f5f653d107efbc67fd2aa3877ac344";
      fetchSubmodules = false;
      sha256 = "sha256-mCAOve2XT1CNPd2LZWNfbcQL7FNj9KCPtzELinz6fdY=";
    };
    pretty-name = "nvim-ufo";
    date = "2024-08-23";
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
    version = "3722e3d1fb5fe1896a104eb489e8f8651260b520";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "3722e3d1fb5fe1896a104eb489e8f8651260b520";
      fetchSubmodules = false;
      sha256 = "sha256-TeWMlfNTA5+tiPq6D2TVWjdfJVr3FOwpqUDU8kfFZ8E=";
    };
    pretty-name = "nvim-web-devicons";
    date = "2024-08-04";
  };
  plugin-one-small-step-for-vimkind = {
    pname = "plugin-one-small-step-for-vimkind";
    version = "0f0d5bc67786c36edc2cb6fb5faa5c09dd1a6e10";
    src = fetchFromGitHub {
      owner = "jbyuki";
      repo = "one-small-step-for-vimkind";
      rev = "0f0d5bc67786c36edc2cb6fb5faa5c09dd1a6e10";
      fetchSubmodules = false;
      sha256 = "sha256-8z4uKZV1mFWL7JGnVZPd76AMA272/I27BchUQx/Vj/w=";
    };
    pretty-name = "one-small-step-for-vimkind";
    date = "2024-08-11";
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
    version = "ec289423a1693aeae6cd0d503bac2856af74edaa";
    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "ec289423a1693aeae6cd0d503bac2856af74edaa";
      fetchSubmodules = false;
      sha256 = "sha256-6Gm+4zZ80quI5iAW6qPAWTq9h1csPWkZFZ9KnFgYRM0=";
    };
    pretty-name = "plenary.nvim";
    date = "2024-08-19";
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
    version = "5e3f5ead970317b2f276d38dc031cb4bc5742cd4";
    src = fetchFromGitHub {
      owner = "tiagovla";
      repo = "scope.nvim";
      rev = "5e3f5ead970317b2f276d38dc031cb4bc5742cd4";
      fetchSubmodules = false;
      sha256 = "sha256-JisbhQ5oRPBl+C33xbRu6GzK71DstSOHrHwLwpecnVA=";
    };
    pretty-name = "scope.nvim";
    date = "2024-07-30";
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
    version = "5972437de807c3bc101565175da66a1aa4f8707a";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "5972437de807c3bc101565175da66a1aa4f8707a";
      fetchSubmodules = false;
      sha256 = "sha256-rNzfnORvbKoglt20i/rKmlkysPUBlB89F6dRKgB5MKU=";
    };
    pretty-name = "telescope.nvim";
    date = "2024-08-15";
  };
  plugin-todo-comments-nvim = {
    pname = "plugin-todo-comments-nvim";
    version = "319c01b99b7a8c9ac2066bf0efd4d6ec68fef444";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "todo-comments.nvim";
      rev = "319c01b99b7a8c9ac2066bf0efd4d6ec68fef444";
      fetchSubmodules = false;
      sha256 = "sha256-gZzd+M9WcrBPucSFd/6MOmGqWm9X89+zPGKmF7ggW1k=";
    };
    pretty-name = "todo-comments.nvim";
    date = "2024-08-31";
  };
  plugin-trouble-nvim = {
    pname = "plugin-trouble-nvim";
    version = "6efc446226679fda0547c0fd6a7892fd5f5b15d8";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "6efc446226679fda0547c0fd6a7892fd5f5b15d8";
      fetchSubmodules = false;
      sha256 = "sha256-db/riM3Kq+QgGUqRxJHA4HYXJE31276hrUrDj4UhC2g=";
    };
    pretty-name = "trouble.nvim";
    date = "2024-07-22";
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
    version = "4d18ced62599ffe5b3c0e5e49566d5456121bc02";
    src = fetchFromGitHub {
      owner = "kaarmu";
      repo = "typst.vim";
      rev = "4d18ced62599ffe5b3c0e5e49566d5456121bc02";
      fetchSubmodules = false;
      sha256 = "sha256-YujkzuojPDzA8MVKXXinLaEu0n73nrAsuks87IReMwQ=";
    };
    pretty-name = "typst.vim";
    date = "2024-07-01";
  };
  plugin-vim-eunuch = {
    pname = "plugin-vim-eunuch";
    version = "8fb3904be27b6b60d086f87c2570085902414069";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-eunuch";
      rev = "8fb3904be27b6b60d086f87c2570085902414069";
      fetchSubmodules = false;
      sha256 = "sha256-JJga94MKWUSmsdAqwl2KeD0pcNpG6CvuJxKCfjXJkcU=";
    };
    pretty-name = "vim-eunuch";
    date = "2024-02-04";
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
    version = "76ef99f73a5ff10be59836a4af4f928eaa8ad284";
    src = fetchFromGitHub {
      owner = "lervag";
      repo = "vimtex";
      rev = "76ef99f73a5ff10be59836a4af4f928eaa8ad284";
      fetchSubmodules = false;
      sha256 = "sha256-aXG7J44Fz1HzXhLlqOWeRD+qnnJl7YEm/7GKdM8qCRc=";
    };
    pretty-name = "vimtex";
    date = "2024-08-20";
  };
  plugin-which-key-nvim = {
    pname = "plugin-which-key-nvim";
    version = "bfec3d6bc0a9b0b2cb11644642f78c2c3915eef0";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "bfec3d6bc0a9b0b2cb11644642f78c2c3915eef0";
      fetchSubmodules = false;
      sha256 = "sha256-FY0KM0F2keMCqB5QhwfGS4w2wQOOeCXgZEa3U7Q1Bek=";
    };
    pretty-name = "which-key.nvim";
    date = "2024-08-31";
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
    version = "6648ac1c0cdadaec8ee8bcf9a4ca6ace5102cf21";
    src = fetchFromGitHub {
      owner = "IndianBoy42";
      repo = "tree-sitter-just";
      rev = "6648ac1c0cdadaec8ee8bcf9a4ca6ace5102cf21";
      fetchSubmodules = false;
      sha256 = "sha256-EVISh9r+aJ6Og1UN8bGCLk4kVjS/cEOYyhqHF40ztqg=";
    };
    pretty-name = "tree-sitter-just";
    date = "2024-07-30";
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
