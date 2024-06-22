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
    version = "50fcf17db7c75af80e6b6109acfbfb4504768780";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "50fcf17db7c75af80e6b6109acfbfb4504768780";
      fetchSubmodules = false;
      sha256 = "sha256-QgK/tI4KU+ZrVl7NFCP8lX7LWjes1pKvt2Eti/UZna8=";
    };
    pretty-name = "LuaSnip";
    date = "2024-06-07";
  };
  plugin-Nvim-R = {
    pname = "plugin-Nvim-R";
    version = "378364731b6e7e2189642d27e479d9e1feb15efa";
    src = fetchFromGitHub {
      owner = "jamespeapen";
      repo = "Nvim-R";
      rev = "378364731b6e7e2189642d27e479d9e1feb15efa";
      fetchSubmodules = false;
      sha256 = "sha256-qD2fI2yc3PZFyJUTdic/VdOY1fpdVccKRRhC3cyX2iU=";
    };
    pretty-name = "Nvim-R";
    date = "2024-03-23";
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
    version = "99337f63f0a3c3ab9519f3d1da7618ca4f91cffe";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "99337f63f0a3c3ab9519f3d1da7618ca4f91cffe";
      fetchSubmodules = false;
      sha256 = "sha256-8PCkY1zrlMrPGnQOb7MjqDXNlkeX46jrT4ScIL+MOwM=";
    };
    pretty-name = "bufferline.nvim";
    date = "2024-05-24";
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
    version = "54f8f6e2ea85c04dcd21af5b6f2eda95b29982a8";
    src = fetchFromGitHub {
      owner = "water-sucks";
      repo = "darkrose.nvim";
      rev = "54f8f6e2ea85c04dcd21af5b6f2eda95b29982a8";
      fetchSubmodules = false;
      sha256 = "sha256-woAImqnROnTMNUZXMywg4HK/Py98bVfW0ndHITpyzH0=";
    };
    pretty-name = "darkrose.nvim";
    date = "2024-03-11";
  };
  plugin-dial-nvim = {
    pname = "plugin-dial-nvim";
    version = "7af2daaaf933b0617ded0f78b49f4d5fc45f9f64";
    src = fetchFromGitHub {
      owner = "monaqa";
      repo = "dial.nvim";
      rev = "7af2daaaf933b0617ded0f78b49f4d5fc45f9f64";
      fetchSubmodules = false;
      sha256 = "sha256-wZriwgcldUATMqPGuaCPiKDaQ73DTU6+OPi1by82MIw=";
    };
    pretty-name = "dial.nvim";
    date = "2024-05-19";
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
    version = "6741f1062d3dc6e4755367a7e9b347b553623f04";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "6741f1062d3dc6e4755367a7e9b347b553623f04";
      fetchSubmodules = false;
      sha256 = "sha256-LlcE/1/IT6QW/o5gks80BFnrIdBd4GjW4M9o+84/j1c=";
    };
    pretty-name = "dressing.nvim";
    date = "2024-06-18";
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
    version = "990a1349c29f7d474a0cd51355aba773ccc9deea";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "flutter-tools.nvim";
      rev = "990a1349c29f7d474a0cd51355aba773ccc9deea";
      fetchSubmodules = false;
      sha256 = "sha256-dRcWCqFHtDMOEGjKji3lxYQZKBhlhss/i51pX6FZxuI=";
    };
    pretty-name = "flutter-tools.nvim";
    date = "2024-05-19";
  };
  plugin-friendly-snippets = {
    pname = "plugin-friendly-snippets";
    version = "682157939e57bd6a2c86277dfd4d6fbfce63dbac";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "682157939e57bd6a2c86277dfd4d6fbfce63dbac";
      fetchSubmodules = false;
      sha256 = "sha256-Eaeq3NrYRU/IAEDxxAGmzWVawpUdPYkfmPrvVO3b0Zk=";
    };
    pretty-name = "friendly-snippets";
    date = "2024-06-16";
  };
  plugin-gitsigns-nvim = {
    pname = "plugin-gitsigns-nvim";
    version = "8df63f2ddc615feb71fd4aee45a4cee022876df1";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "8df63f2ddc615feb71fd4aee45a4cee022876df1";
      fetchSubmodules = false;
      sha256 = "sha256-e0UFZJimSPAnCqUZeHQBh4heij+zYWh1tJt3Onf9+vo=";
    };
    pretty-name = "gitsigns.nvim";
    date = "2024-06-21";
  };
  plugin-guess-indent-nvim = {
    pname = "plugin-guess-indent-nvim";
    version = "6c75506e71836f34fe5c5efa322dfce3e0494e7b";
    src = fetchFromGitHub {
      owner = "NMAC427";
      repo = "guess-indent.nvim";
      rev = "6c75506e71836f34fe5c5efa322dfce3e0494e7b";
      fetchSubmodules = false;
      sha256 = "sha256-PMP2qQzK+Whmk8Ca12pXI7WQS1fx+eeD1wa2reeS4l0=";
    };
    pretty-name = "guess-indent.nvim";
    date = "2024-06-19";
  };
  plugin-haskell-tools-nvim = {
    pname = "plugin-haskell-tools-nvim";
    version = "574bf4b45d4246559f6a8a9b8cd2aa7b206915eb";
    src = fetchFromGitHub {
      owner = "MrcJkb";
      repo = "haskell-tools.nvim";
      rev = "574bf4b45d4246559f6a8a9b8cd2aa7b206915eb";
      fetchSubmodules = false;
      sha256 = "sha256-DWUHNUheJ9vOh4e1/ZrHPkEOhfcrTHbwYqdHA0AXCDg=";
    };
    pretty-name = "haskell-tools.nvim";
    date = "2024-06-21";
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
    version = "d98f537c3492e87b6dc6c2e3f66ac517528f406f";
    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "indent-blankline.nvim";
      rev = "d98f537c3492e87b6dc6c2e3f66ac517528f406f";
      fetchSubmodules = false;
      sha256 = "sha256-K5y0UQAXc0N6+1kqncX2eClpvZb7jlg7GhSerHQVZX0=";
    };
    pretty-name = "indent-blankline.nvim";
    date = "2024-05-23";
  };
  plugin-lazy-nvim = {
    pname = "plugin-lazy-nvim";
    version = "bc620783663ab09d16bff9fdecc07da65b2a1528";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "bc620783663ab09d16bff9fdecc07da65b2a1528";
      fetchSubmodules = false;
      sha256 = "sha256-7N/QydTaiLPHsSjOcMZOtEKRu/+PwxrtO+zslfzdGaA=";
    };
    pretty-name = "lazy.nvim";
    date = "2024-06-18";
  };
  plugin-leap-nvim = {
    pname = "plugin-leap-nvim";
    version = "eca8108dcd5f41fbde2a674dceb58b81ed887dc8";
    src = fetchFromGitHub {
      owner = "ggandor";
      repo = "leap.nvim";
      rev = "eca8108dcd5f41fbde2a674dceb58b81ed887dc8";
      fetchSubmodules = false;
      sha256 = "sha256-LYZ/DZXQeFPakR+iR4SVKMoN6VZKcyU4/vposmm4Tws=";
    };
    pretty-name = "leap.nvim";
    date = "2024-06-20";
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
    version = "0a5a66803c7407767b799067986b4dc3036e1983";
    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "0a5a66803c7407767b799067986b4dc3036e1983";
      fetchSubmodules = false;
      sha256 = "sha256-WcH2dWdRDgMkwBQhcgT+Z/ArMdm+VbRhmQftx4t2kNI=";
    };
    pretty-name = "lualine.nvim";
    date = "2024-04-05";
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
    version = "7c0e27f50901481fe83b974493c4ea67a4296aeb";
    src = fetchFromGitHub {
      owner = "rktjmp";
      repo = "lush.nvim";
      rev = "7c0e27f50901481fe83b974493c4ea67a4296aeb";
      fetchSubmodules = false;
      sha256 = "sha256-GVGIZPBrunaWexwdnkbc0LxM3xMHslrwON2FunN3TDE=";
    };
    pretty-name = "lush.nvim";
    date = "2024-04-18";
  };
  plugin-mini-surround = {
    pname = "plugin-mini-surround";
    version = "c40ac9c0060467a82430fab12d30395c5768b5e4";
    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "c40ac9c0060467a82430fab12d30395c5768b5e4";
      fetchSubmodules = false;
      sha256 = "sha256-/yP86md8zWBp/esiLpJvDu+az3P0/CkINGQ8nIVYw0c=";
    };
    pretty-name = "mini.surround";
    date = "2024-06-20";
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
  plugin-neodev-nvim = {
    pname = "plugin-neodev-nvim";
    version = "02893eeb9d6e8503817bd52385e111cba9a90500";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "02893eeb9d6e8503817bd52385e111cba9a90500";
      fetchSubmodules = false;
      sha256 = "sha256-vkgy2w6NvzOPlo23WKweGybEqqk4wiwdgXU1LjYkWW0=";
    };
    pretty-name = "neodev.nvim";
    date = "2024-06-04";
  };
  plugin-neorg = {
    pname = "plugin-neorg";
    version = "ebf75f57fa8dadd8747a678724b273b398143dc4";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "ebf75f57fa8dadd8747a678724b273b398143dc4";
      fetchSubmodules = false;
      sha256 = "sha256-umVsUYC9o34PfaNKL876rt8u+0zgcp98apCEjxBG+Bc=";
    };
    pretty-name = "neorg";
    date = "2024-06-13";
  };
  plugin-neorg-telescope = {
    pname = "plugin-neorg-telescope";
    version = "fe255a3432ce639de7a374ccfb8602f517244dcd";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg-telescope";
      rev = "fe255a3432ce639de7a374ccfb8602f517244dcd";
      fetchSubmodules = false;
      sha256 = "sha256-VZbmetQyPHiduMlmHTaFQJZUt4bYPS5vxMc5dwHUBnE=";
    };
    pretty-name = "neorg-telescope";
    date = "2024-06-19";
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
    version = "88ac36864b5976a64b14a8f156c616f41b32f228";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "noice.nvim";
      rev = "88ac36864b5976a64b14a8f156c616f41b32f228";
      fetchSubmodules = false;
      sha256 = "sha256-Cdxfr3Tk+PWuXBGMGu1yFtQ/ZDrPzvn0es0rV80rdWI=";
    };
    pretty-name = "noice.nvim";
    date = "2024-06-18";
  };
  plugin-nui-nvim = {
    pname = "plugin-nui-nvim";
    version = "322978c734866996274467de084a95e4f9b5e0b1";
    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "322978c734866996274467de084a95e4f9b5e0b1";
      fetchSubmodules = false;
      sha256 = "sha256-tZNe1EA7sMnXCL4KtDlIhPaKry8uSubMW/4aof79L9A=";
    };
    pretty-name = "nui.nvim";
    date = "2024-06-05";
  };
  plugin-nvim-autopairs = {
    pname = "plugin-nvim-autopairs";
    version = "c15de7e7981f1111642e7e53799e1211d4606cb9";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "c15de7e7981f1111642e7e53799e1211d4606cb9";
      fetchSubmodules = false;
      sha256 = "sha256-YEAqjlzVrS/VLrkwGo3L7cNOE1LuyLYlBtkR2HA5oVk=";
    };
    pretty-name = "nvim-autopairs";
    date = "2024-05-20";
  };
  plugin-nvim-cmp = {
    pname = "plugin-nvim-cmp";
    version = "a110e12d0b58eefcf5b771f533fc2cf3050680ac";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "a110e12d0b58eefcf5b771f533fc2cf3050680ac";
      fetchSubmodules = false;
      sha256 = "sha256-7tEfEjWH5pneI10jLYpenoysRQPa2zPGLTNcbMX3x2I=";
    };
    pretty-name = "nvim-cmp";
    date = "2024-06-08";
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
    version = "6f79b822997f2e8a789c6034e147d42bc6706770";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap";
      rev = "6f79b822997f2e8a789c6034e147d42bc6706770";
      fetchSubmodules = false;
      sha256 = "sha256-MSH4pIUcAJBT8L1kBsU+D+7v6pMCMHKWz5lLug5VKgE=";
    };
    pretty-name = "nvim-dap";
    date = "2024-06-03";
  };
  plugin-nvim-dap-go = {
    pname = "plugin-nvim-dap-go";
    version = "a0c5a2b991d7e9304a9a032cf177e22a4b0acda1";
    src = fetchFromGitHub {
      owner = "leoluz";
      repo = "nvim-dap-go";
      rev = "a0c5a2b991d7e9304a9a032cf177e22a4b0acda1";
      fetchSubmodules = false;
      sha256 = "sha256-B8A+ven18YgePLxAN3Q/j5NFb0FeTHCQak1uzaNDX9c=";
    };
    pretty-name = "nvim-dap-go";
    date = "2024-05-26";
  };
  plugin-nvim-dap-python = {
    pname = "plugin-nvim-dap-python";
    version = "ae0225d0d4a46e18e6057ab3701ef87bbbd6aaad";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap-python";
      rev = "ae0225d0d4a46e18e6057ab3701ef87bbbd6aaad";
      fetchSubmodules = false;
      sha256 = "sha256-outtOua2ik+0TwO9iM4bpm5MDI+p8Qa8ktfXdjOwD7w=";
    };
    pretty-name = "nvim-dap-python";
    date = "2024-06-03";
  };
  plugin-nvim-dap-ui = {
    pname = "plugin-nvim-dap-ui";
    version = "b7267003ba4dd860350be86f75b9d9ea287cedca";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-dap-ui";
      rev = "b7267003ba4dd860350be86f75b9d9ea287cedca";
      fetchSubmodules = false;
      sha256 = "sha256-lmK4MO+ci0QWUF/4rms66bYbvpPXeDP3qoE/VCy65ms=";
    };
    pretty-name = "nvim-dap-ui";
    date = "2024-05-28";
  };
  plugin-nvim-dap-virtual-text = {
    pname = "plugin-nvim-dap-virtual-text";
    version = "d7c695ea39542f6da94ee4d66176f5d660ab0a77";
    src = fetchFromGitHub {
      owner = "theHamsta";
      repo = "nvim-dap-virtual-text";
      rev = "d7c695ea39542f6da94ee4d66176f5d660ab0a77";
      fetchSubmodules = false;
      sha256 = "sha256-Ec6xE+HvbzcBU04jbBqUV0nTa2IEiNuxMBYfDwXmFsM=";
    };
    pretty-name = "nvim-dap-virtual-text";
    date = "2024-05-22";
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
    version = "40e8494e04c1bcd5dd6c0d0bc187d2d10965017d";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-jdtls";
      rev = "40e8494e04c1bcd5dd6c0d0bc187d2d10965017d";
      fetchSubmodules = false;
      sha256 = "sha256-/J1w0ZlG7J7UJp7kiY0IHAWOt+NywelpM82LNpTpeak=";
    };
    pretty-name = "nvim-jdtls";
    date = "2024-06-06";
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
    version = "3c8346db23033fa49ce0eef2e89dbe91cfd54f21";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "3c8346db23033fa49ce0eef2e89dbe91cfd54f21";
      fetchSubmodules = false;
      sha256 = "sha256-KMUgBU+BVXD8MI1G+j23uTvSFO2N2/HBR+VLUUI0llM=";
    };
    pretty-name = "nvim-lspconfig";
    date = "2024-06-22";
  };
  plugin-nvim-nio = {
    pname = "plugin-nvim-nio";
    version = "7969e0a8ffabdf210edd7978ec954a47a737bbcc";
    src = fetchFromGitHub {
      owner = "nvim-neotest";
      repo = "nvim-nio";
      rev = "7969e0a8ffabdf210edd7978ec954a47a737bbcc";
      fetchSubmodules = false;
      sha256 = "sha256-gAbqGPNBYkj+x+wR6WN2x7kqKaxlBzVXPmRXm8sM40Y=";
    };
    pretty-name = "nvim-nio";
    date = "2024-06-09";
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
    version = "2086e564c4d23fea714e8a6d63b881e551af2f41";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "2086e564c4d23fea714e8a6d63b881e551af2f41";
      fetchSubmodules = false;
      sha256 = "sha256-7KO3wPW65IH4m0jEoyFScNiAVwrlNHU+p0H55AuwlWk=";
    };
    pretty-name = "nvim-tree.lua";
    date = "2024-06-09";
  };
  plugin-nvim-ts-autotag = {
    pname = "plugin-nvim-ts-autotag";
    version = "ddfccbf0df1b9349c2b9e9b17f4afa8f9b6c1ed1";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-ts-autotag";
      rev = "ddfccbf0df1b9349c2b9e9b17f4afa8f9b6c1ed1";
      fetchSubmodules = false;
      sha256 = "sha256-vj0gvXi9uEe3abDZrI4Wr3zsYPyZSs+8iQXRBvJb2Vs=";
    };
    pretty-name = "nvim-ts-autotag";
    date = "2024-06-21";
  };
  plugin-nvim-ts-context-commentstring = {
    pname = "plugin-nvim-ts-context-commentstring";
    version = "cb064386e667def1d241317deed9fd1b38f0dc2e";
    src = fetchFromGitHub {
      owner = "JoosepAlviste";
      repo = "nvim-ts-context-commentstring";
      rev = "cb064386e667def1d241317deed9fd1b38f0dc2e";
      fetchSubmodules = false;
      sha256 = "sha256-hI/vsHbX7g5cAHwPewu3GYXpeby9n21uz3a5l+7Pvo8=";
    };
    pretty-name = "nvim-ts-context-commentstring";
    date = "2024-05-22";
  };
  plugin-nvim-ufo = {
    pname = "plugin-nvim-ufo";
    version = "aa2e676af592b4e99c105d80d6eafd1afc215d99";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "nvim-ufo";
      rev = "aa2e676af592b4e99c105d80d6eafd1afc215d99";
      fetchSubmodules = false;
      sha256 = "sha256-3jNv5SCz+DzfOaqXDy2HGI9rjlYW/y6EwnM6TQfpIYw=";
    };
    pretty-name = "nvim-ufo";
    date = "2024-06-06";
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
    version = "c0cfc1738361b5da1cd0a962dd6f774cc444f856";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "c0cfc1738361b5da1cd0a962dd6f774cc444f856";
      fetchSubmodules = false;
      sha256 = "sha256-j/B/E1VltJ/QpVFtDKAdVC4+KZ5Mz8dQP5kd8HIHjLs=";
    };
    pretty-name = "nvim-web-devicons";
    date = "2024-06-09";
  };
  plugin-one-small-step-for-vimkind = {
    pname = "plugin-one-small-step-for-vimkind";
    version = "e92abbce0b9b77fed1aaf6f122fb18b7045b15ec";
    src = fetchFromGitHub {
      owner = "jbyuki";
      repo = "one-small-step-for-vimkind";
      rev = "e92abbce0b9b77fed1aaf6f122fb18b7045b15ec";
      fetchSubmodules = false;
      sha256 = "sha256-gR4RnMW1BUuVNo5sj0V/pBzT8ayLipZsrWuwNZwCvyM=";
    };
    pretty-name = "one-small-step-for-vimkind";
    date = "2024-05-27";
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
    version = "a3e3bc82a3f95c5ed0d7201546d5d2c19b20d683";
    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "a3e3bc82a3f95c5ed0d7201546d5d2c19b20d683";
      fetchSubmodules = false;
      sha256 = "sha256-5Jf2mWFVDofXBcXLbMa417mqlEPWLA+cQIZH/vNEV1g=";
    };
    pretty-name = "plenary.nvim";
    date = "2024-05-20";
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
    version = "28c1d5a295eb5310afa2523d4ae9aa41ec5a9de2";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "promise-async";
      rev = "28c1d5a295eb5310afa2523d4ae9aa41ec5a9de2";
      fetchSubmodules = false;
      sha256 = "sha256-TnZUEQvEfILHHdOB8D5waFq0gG3sjkRzioEaGiWWYoc=";
    };
    pretty-name = "promise-async";
    date = "2024-06-10";
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
    version = "86a0f5b594b08b2ad65f470ffdee81654942b6ac";
    src = fetchFromGitHub {
      owner = "tiagovla";
      repo = "scope.nvim";
      rev = "86a0f5b594b08b2ad65f470ffdee81654942b6ac";
      fetchSubmodules = false;
      sha256 = "sha256-8Bd1DI6nuUxkTCx0wCfWKHdi6UXQNuDygj5UuSGypLs=";
    };
    pretty-name = "scope.nvim";
    date = "2024-03-31";
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
    version = "f2bfde705ac752c52544d5cfa8b0aee0a766c1ed";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "f2bfde705ac752c52544d5cfa8b0aee0a766c1ed";
      fetchSubmodules = false;
      sha256 = "sha256-0fS3RYO/9gwmdK2H9Y/4Z/P++4aEHTHJqR2mH0vWAFY=";
    };
    pretty-name = "telescope.nvim";
    date = "2024-06-21";
  };
  plugin-todo-comments-nvim = {
    pname = "plugin-todo-comments-nvim";
    version = "51e10f838e84b4756c16311d0b1ef0972c6482d2";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "todo-comments.nvim";
      rev = "51e10f838e84b4756c16311d0b1ef0972c6482d2";
      fetchSubmodules = false;
      sha256 = "sha256-CcQjhccjUG5mEsPaNRR/doYKHw+HiVT/nhbk1kT5axo=";
    };
    pretty-name = "todo-comments.nvim";
    date = "2024-06-12";
  };
  plugin-trouble-nvim = {
    pname = "plugin-trouble-nvim";
    version = "2d8610a07033f2b367e71230ab128f8b89c2639d";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "2d8610a07033f2b367e71230ab128f8b89c2639d";
      fetchSubmodules = false;
      sha256 = "sha256-VF3EGoxu/1mXm720SdAbPbrVNL0/MlHNK27VpwhYlh4=";
    };
    pretty-name = "trouble.nvim";
    date = "2024-06-19";
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
    version = "d9a7650e76c85f8ba437e056d08dd43b01b8bfd6";
    src = fetchFromGitHub {
      owner = "kaarmu";
      repo = "typst.vim";
      rev = "d9a7650e76c85f8ba437e056d08dd43b01b8bfd6";
      fetchSubmodules = false;
      sha256 = "sha256-7L535882LecBCN7TtaTBWwrvO/HKGnyh2WoejarAldA=";
    };
    pretty-name = "typst.vim";
    date = "2024-04-19";
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
    version = "8ed94566e6fe3f5b163131dc374d224d2d320db7";
    src = fetchFromGitHub {
      owner = "lervag";
      repo = "vimtex";
      rev = "8ed94566e6fe3f5b163131dc374d224d2d320db7";
      fetchSubmodules = false;
      sha256 = "sha256-uuF1Z3G5L0FkrX8QdUNAI2cI0yVOmcmukQx53wlJyo4=";
    };
    pretty-name = "vimtex";
    date = "2024-06-13";
  };
  plugin-which-key-nvim = {
    pname = "plugin-which-key-nvim";
    version = "0099511294f16b81c696004fa6a403b0ae61f7a0";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "0099511294f16b81c696004fa6a403b0ae61f7a0";
      fetchSubmodules = false;
      sha256 = "sha256-xfz51JQsEqaPRSzFw6DxM8yKFznOk9o9ETlZkErSzNg=";
    };
    pretty-name = "which-key.nvim";
    date = "2024-06-07";
  };
  plugin-zen-mode-nvim = {
    pname = "plugin-zen-mode-nvim";
    version = "78557d972b4bfbb7488e17b5703d25164ae64e6a";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "zen-mode.nvim";
      rev = "78557d972b4bfbb7488e17b5703d25164ae64e6a";
      fetchSubmodules = false;
      sha256 = "sha256-G5/AskXEA0vl9GGUR8NG8PmL/HFcItZJWB+LyKd3R2k=";
    };
    pretty-name = "zen-mode.nvim";
    date = "2024-01-21";
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
    version = "fd814fc6c579f68c2a642f5e0268cf69daae92d7";
    src = fetchFromGitHub {
      owner = "IndianBoy42";
      repo = "tree-sitter-just";
      rev = "fd814fc6c579f68c2a642f5e0268cf69daae92d7";
      fetchSubmodules = false;
      sha256 = "sha256-yuTcgNfF4oRNZkwwFpt5WLpWtTvgJJRDYo3CWnCNyiU=";
    };
    pretty-name = "tree-sitter-just";
    date = "2024-05-02";
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
