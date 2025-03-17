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
  plugin-LuaSnip = {
    pname = "plugin-LuaSnip";
    version = "c9b9a22904c97d0eb69ccb9bab76037838326817";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "c9b9a22904c97d0eb69ccb9bab76037838326817";
      fetchSubmodules = false;
      sha256 = "sha256-3ecm5SDTcSOh256xSQPHhddQfMpepiEIpv58fHXrVg0=";
    };
    pretty-name = "LuaSnip";
    date = "2025-01-04";
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
  plugin-binary-nvim = {
    pname = "plugin-binary-nvim";
    version = "0a0422551dfc9e8b02c00b133f63d72a75938d81";
    src = fetchFromGitHub {
      owner = "jackplus-xyz";
      repo = "binary.nvim";
      rev = "0a0422551dfc9e8b02c00b133f63d72a75938d81";
      fetchSubmodules = false;
      sha256 = "sha256-rV6a1P7tTSXoLhDrBoFaK810PQ1Es9ZGcr6siKPlopI=";
    };
    pretty-name = "binary.nvim";
    date = "2025-01-24";
  };
  plugin-bmessages-nvim = {
    pname = "plugin-bmessages-nvim";
    version = "985c6973bc27888598a03f4766a2481248a599b2";
    src = fetchFromGitHub {
      owner = "ariel-frischer";
      repo = "bmessages.nvim";
      rev = "985c6973bc27888598a03f4766a2481248a599b2";
      fetchSubmodules = false;
      sha256 = "sha256-VzLyvUi42ItEPvCX25otTYrWJrhfJ4e7cr7IDrEm1Es=";
    };
    pretty-name = "bmessages.nvim";
    date = "2025-01-09";
  };
  plugin-bufferline-nvim = {
    pname = "plugin-bufferline-nvim";
    version = "655133c3b4c3e5e05ec549b9f8cc2894ac6f51b3";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "655133c3b4c3e5e05ec549b9f8cc2894ac6f51b3";
      fetchSubmodules = false;
      sha256 = "sha256-ae4MB6+6v3awvfSUWlau9ASJ147ZpwuX1fvJdfMwo1Q=";
    };
    pretty-name = "bufferline.nvim";
    date = "2025-01-14";
  };
  plugin-bullets-vim = {
    pname = "plugin-bullets-vim";
    version = "8f3259e807c40b91d247f612823295ab99777a65";
    src = fetchFromGitHub {
      owner = "bullets-vim";
      repo = "bullets.vim";
      rev = "8f3259e807c40b91d247f612823295ab99777a65";
      fetchSubmodules = false;
      sha256 = "sha256-lqQufzcQqk6vDCxTedBcIllioa+pKmgY4E01KC3i2nM=";
    };
    pretty-name = "bullets.vim";
    date = "2025-03-03";
  };
  plugin-cellular-automaton-nvim = {
    pname = "plugin-cellular-automaton-nvim";
    version = "1606e9d5d04ff254023c3f3c62842d065708d6d3";
    src = fetchFromGitHub {
      owner = "Eandrju";
      repo = "cellular-automaton.nvim";
      rev = "1606e9d5d04ff254023c3f3c62842d065708d6d3";
      fetchSubmodules = false;
      sha256 = "sha256-UB0YXXC4/7BtZ06By0lT2Ad4PQtohAF8m57b71Dmxvo=";
    };
    pretty-name = "cellular-automaton.nvim";
    date = "2025-01-31";
  };
  plugin-conform-nvim = {
    pname = "plugin-conform-nvim";
    version = "db8a4a9edb217067b1d7a2e0362c74bfe9cc944d";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "conform.nvim";
      rev = "db8a4a9edb217067b1d7a2e0362c74bfe9cc944d";
      fetchSubmodules = false;
      sha256 = "sha256-8uC+6rQdLqpfF/lf25mppqK/xgM1+6RGIyZaheaPd48=";
    };
    pretty-name = "conform.nvim";
    date = "2025-03-04";
  };
  plugin-darkrose-nvim = {
    pname = "plugin-darkrose-nvim";
    version = "f1d6314c366c9c41af9615be500a8ea5b02b9c1b";
    src = fetchFromGitHub {
      owner = "water-sucks";
      repo = "darkrose.nvim";
      rev = "f1d6314c366c9c41af9615be500a8ea5b02b9c1b";
      fetchSubmodules = false;
      sha256 = "sha256-RItbRI6sAAswrUhcrLBChiBowqOgINKbQmwjZxAsffU=";
    };
    pretty-name = "darkrose.nvim";
    date = "2025-02-01";
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
    version = "2d7c2db2507fa3c4956142ee607431ddb2828639";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "2d7c2db2507fa3c4956142ee607431ddb2828639";
      fetchSubmodules = false;
      sha256 = "sha256-dBz+/gZA6O6fJy/GSgM6ZHGAR3MTGt/W1olzzTYRlgM=";
    };
    pretty-name = "dressing.nvim";
    date = "2025-02-12";
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
  plugin-emoji-nvim = {
    pname = "plugin-emoji-nvim";
    version = "7643d40224ff07df1122df6430302fdbd1510be9";
    src = fetchFromGitHub {
      owner = "Allaman";
      repo = "emoji.nvim";
      rev = "7643d40224ff07df1122df6430302fdbd1510be9";
      fetchSubmodules = false;
      sha256 = "sha256-c//yKB1PT7HuDPrjIn13PYUx0u6f+eh6NWUqR2rw0Rg=";
    };
    pretty-name = "emoji.nvim";
    date = "2025-01-15";
  };
  plugin-fidget-nvim = {
    pname = "plugin-fidget-nvim";
    version = "d9ba6b7bfe29b3119a610892af67602641da778e";
    src = fetchFromGitHub {
      owner = "j-hui";
      repo = "fidget.nvim";
      rev = "d9ba6b7bfe29b3119a610892af67602641da778e";
      fetchSubmodules = false;
      sha256 = "sha256-AFUx/ZQVWV7s5Wlppjk6N9QXoJKNKqxtf990FFlTEhw=";
    };
    pretty-name = "fidget.nvim";
    date = "2025-02-05";
  };
  plugin-flutter-tools-nvim = {
    pname = "plugin-flutter-tools-nvim";
    version = "70430c32d176f4a15c6e2c80586cd2791e3a664e";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "flutter-tools.nvim";
      rev = "70430c32d176f4a15c6e2c80586cd2791e3a664e";
      fetchSubmodules = false;
      sha256 = "sha256-hWwDYtR6QupGE13/EaQx1pVztFkrYmJtWkkrolgQ5wY=";
    };
    pretty-name = "flutter-tools.nvim";
    date = "2025-03-06";
  };
  plugin-friendly-snippets = {
    pname = "plugin-friendly-snippets";
    version = "efff286dd74c22f731cdec26a70b46e5b203c619";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "efff286dd74c22f731cdec26a70b46e5b203c619";
      fetchSubmodules = false;
      sha256 = "sha256-I8SRZxnoNC6SOWW+scoA77Jwyxcb4eUczppLdyOiZe0=";
    };
    pretty-name = "friendly-snippets";
    date = "2024-12-01";
  };
  plugin-gitsigns-nvim = {
    pname = "plugin-gitsigns-nvim";
    version = "011dc6718bcebdf92a5336bb0da79189c3afe621";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "011dc6718bcebdf92a5336bb0da79189c3afe621";
      fetchSubmodules = false;
      sha256 = "sha256-Rzj8v7iA4cpLwqMaZvBarTOR246ti9l43U6aIjOPceA=";
    };
    pretty-name = "gitsigns.nvim";
    date = "2025-03-12";
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
  plugin-hardtime-nvim = {
    pname = "plugin-hardtime-nvim";
    version = "f87c86d1aa1e05dcf3c6ecd97fbfd237e2de0bf5";
    src = fetchFromGitHub {
      owner = "m4xshen";
      repo = "hardtime.nvim";
      rev = "f87c86d1aa1e05dcf3c6ecd97fbfd237e2de0bf5";
      fetchSubmodules = false;
      sha256 = "sha256-tigKgK1yGc5JEHd4RLXCd6Hq7ia3en3Xtk8X6L5+ef4=";
    };
    pretty-name = "hardtime.nvim";
    date = "2025-03-08";
  };
  plugin-indent-blankline-nvim = {
    pname = "plugin-indent-blankline-nvim";
    version = "e10626f7fcd51ccd56d7ffc00883ba7e0aa28f78";
    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "indent-blankline.nvim";
      rev = "e10626f7fcd51ccd56d7ffc00883ba7e0aa28f78";
      fetchSubmodules = false;
      sha256 = "sha256-0+boInVEzS2myYil/l+frs8PAa/2eJcVTyXnEk6TGvI=";
    };
    pretty-name = "indent-blankline.nvim";
    date = "2025-01-20";
  };
  plugin-lazy-nvim = {
    pname = "plugin-lazy-nvim";
    version = "6c3bda4aca61a13a9c63f1c1d1b16b9d3be90d7a";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "6c3bda4aca61a13a9c63f1c1d1b16b9d3be90d7a";
      fetchSubmodules = false;
      sha256 = "sha256-nQ8PR9DTdzg6Z2rViuVD6Pswc2VvDQwS3uMNgyDh5ls=";
    };
    pretty-name = "lazy.nvim";
    date = "2025-02-25";
  };
  plugin-lazydev-nvim = {
    pname = "plugin-lazydev-nvim";
    version = "2367a6c0a01eb9edb0464731cc0fb61ed9ab9d2c";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazydev.nvim";
      rev = "2367a6c0a01eb9edb0464731cc0fb61ed9ab9d2c";
      fetchSubmodules = false;
      sha256 = "sha256-LoxziiV9jlHuU4vRVFfKtVLI45ouJcuyXC6DIyQKlew=";
    };
    pretty-name = "lazydev.nvim";
    date = "2025-02-20";
  };
  plugin-leap-nvim = {
    pname = "plugin-leap-nvim";
    version = "346a16ef942635a8ca5ff92e603d07e7e8be6cbe";
    src = fetchFromGitHub {
      owner = "ggandor";
      repo = "leap.nvim";
      rev = "346a16ef942635a8ca5ff92e603d07e7e8be6cbe";
      fetchSubmodules = false;
      sha256 = "sha256-VHCFaUsjiY9fs3nXHqMKATWJtH38WWVsQ04Hro8bB2c=";
    };
    pretty-name = "leap.nvim";
    date = "2025-03-01";
  };
  plugin-lspkind-nvim = {
    pname = "plugin-lspkind-nvim";
    version = "d79a1c3299ad0ef94e255d045bed9fa26025dab6";
    src = fetchFromGitHub {
      owner = "onsails";
      repo = "lspkind-nvim";
      rev = "d79a1c3299ad0ef94e255d045bed9fa26025dab6";
      fetchSubmodules = false;
      sha256 = "sha256-OCvKUBGuzwy8OWOL1x3Z3fo+0+GyBMI9TX41xSveqvE=";
    };
    pretty-name = "lspkind-nvim";
    date = "2024-12-05";
  };
  plugin-lualine-nvim = {
    pname = "plugin-lualine-nvim";
    version = "b8b60c7f1d0d95ad74ee215b2291280b30482476";
    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "b8b60c7f1d0d95ad74ee215b2291280b30482476";
      fetchSubmodules = false;
      sha256 = "sha256-qYKykdCcXd+OHmK3WvsUCbn0zDKTQDj49VYsQ8iVvgs=";
    };
    pretty-name = "lualine.nvim";
    date = "2025-03-15";
  };
  plugin-mini-move = {
    pname = "plugin-mini-move";
    version = "c8b30e92dd2668dd6e56a9a23cb7d4ee38c2266d";
    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.move";
      rev = "c8b30e92dd2668dd6e56a9a23cb7d4ee38c2266d";
      fetchSubmodules = false;
      sha256 = "sha256-42Vm2DkO7bw4bFIt7BfYLMMn3ehTJlIBWyBpA4513zI=";
    };
    pretty-name = "mini.move";
    date = "2025-01-31";
  };
  plugin-mini-surround = {
    pname = "plugin-mini-surround";
    version = "f90069c7441a5fb04c3de42eacf93e16b64dd3eb";
    src = fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.surround";
      rev = "f90069c7441a5fb04c3de42eacf93e16b64dd3eb";
      fetchSubmodules = false;
      sha256 = "sha256-IgH2X5hmnX+e85t0TDLexCW5eyHJdHN+41QeExXwRy8=";
    };
    pretty-name = "mini.surround";
    date = "2025-02-10";
  };
  plugin-neocodeium = {
    pname = "plugin-neocodeium";
    version = "8a0b9b872b7da673ad2f6f1c3d17ac5c338053a8";
    src = fetchFromGitHub {
      owner = "monkoose";
      repo = "neocodeium";
      rev = "8a0b9b872b7da673ad2f6f1c3d17ac5c338053a8";
      fetchSubmodules = false;
      sha256 = "sha256-vgnTEkVwVC52XP0GhA05I2zmhFTxhxf9BonMHULDJG8=";
    };
    pretty-name = "neocodeium";
    date = "2025-02-19";
  };
  plugin-neocord = {
    pname = "plugin-neocord";
    version = "41bacd44e9d36f5e36e0271672ac2c02f6fa355a";
    src = fetchFromGitHub {
      owner = "IogaMaster";
      repo = "neocord";
      rev = "41bacd44e9d36f5e36e0271672ac2c02f6fa355a";
      fetchSubmodules = false;
      sha256 = "sha256-XJE5d8xByiCYOzqfZvrvqRTYQ8C4nHw50zMusPVHKdk=";
    };
    pretty-name = "neocord";
    date = "2025-03-07";
  };
  plugin-nerdy-nvim = {
    pname = "plugin-nerdy-nvim";
    version = "14bdcd13265dfc80e6ca6cee0598c5880729e24f";
    src = fetchFromGitHub {
      owner = "2kabhishek";
      repo = "nerdy.nvim";
      rev = "14bdcd13265dfc80e6ca6cee0598c5880729e24f";
      fetchSubmodules = false;
      sha256 = "sha256-/XRMNka5qSKairJX1/GWM8fhjUVw9U2Ikf37yOMukfU=";
    };
    pretty-name = "nerdy.nvim";
    date = "2025-03-09";
  };
  plugin-noice-nvim = {
    pname = "plugin-noice-nvim";
    version = "0427460c2d7f673ad60eb02b35f5e9926cf67c59";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "noice.nvim";
      rev = "0427460c2d7f673ad60eb02b35f5e9926cf67c59";
      fetchSubmodules = false;
      sha256 = "sha256-0yu3JX7dXb9b+1REAVP+6K350OlYN6DBm8hEKgkQHgA=";
    };
    pretty-name = "noice.nvim";
    date = "2025-02-11";
  };
  plugin-nui-nvim = {
    pname = "plugin-nui-nvim";
    version = "8d3bce9764e627b62b07424e0df77f680d47ffdb";
    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "8d3bce9764e627b62b07424e0df77f680d47ffdb";
      fetchSubmodules = false;
      sha256 = "sha256-BYTY2ezYuxsneAl/yQbwL1aQvVWKSsN3IVqzTlrBSEU=";
    };
    pretty-name = "nui.nvim";
    date = "2025-03-06";
  };
  plugin-nvim-autopairs = {
    pname = "plugin-nvim-autopairs";
    version = "68f0e5c3dab23261a945272032ee6700af86227a";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "68f0e5c3dab23261a945272032ee6700af86227a";
      fetchSubmodules = false;
      sha256 = "sha256-FUnYZWSJh5wAfXevH+nK+g/s4WhnzwxbW6a3gUDQI6o=";
    };
    pretty-name = "nvim-autopairs";
    date = "2025-02-14";
  };
  plugin-nvim-colorizer-lua = {
    pname = "plugin-nvim-colorizer-lua";
    version = "517df88cf2afb36652830df2c655df2da416a0ae";
    src = fetchFromGitHub {
      owner = "NvChad";
      repo = "nvim-colorizer.lua";
      rev = "517df88cf2afb36652830df2c655df2da416a0ae";
      fetchSubmodules = false;
      sha256 = "sha256-yOPUgqHe0WT437aX8kp0P/reNgjZUNNRG7hvDgaeXT0=";
    };
    pretty-name = "nvim-colorizer.lua";
    date = "2025-03-01";
  };
  plugin-nvim-dap = {
    pname = "plugin-nvim-dap";
    version = "a720d4966f758ab22e8ec28812b6df90a53e0f02";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap";
      rev = "a720d4966f758ab22e8ec28812b6df90a53e0f02";
      fetchSubmodules = false;
      sha256 = "sha256-kGgRyIii6sfCQ95oTkppQuy8ZBow/iJTnyPLQmFLJy0=";
    };
    pretty-name = "nvim-dap";
    date = "2025-03-12";
  };
  plugin-nvim-dap-go = {
    pname = "plugin-nvim-dap-go";
    version = "8763ced35b19c8dc526e04a70ab07c34e11ad064";
    src = fetchFromGitHub {
      owner = "leoluz";
      repo = "nvim-dap-go";
      rev = "8763ced35b19c8dc526e04a70ab07c34e11ad064";
      fetchSubmodules = false;
      sha256 = "sha256-tvKB657iV9a6i3OxCR/LAmVC5MLG4lKIa0WlaAWem+g=";
    };
    pretty-name = "nvim-dap-go";
    date = "2025-02-17";
  };
  plugin-nvim-dap-python = {
    pname = "plugin-nvim-dap-python";
    version = "34282820bb713b9a5fdb120ae8dd85c2b3f49b51";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap-python";
      rev = "34282820bb713b9a5fdb120ae8dd85c2b3f49b51";
      fetchSubmodules = false;
      sha256 = "sha256-Qz0eZGVy/3q2qBtyliw1bxiJE9NT02F1hZoVNm3KU5g=";
    };
    pretty-name = "nvim-dap-python";
    date = "2024-11-29";
  };
  plugin-nvim-dap-ui = {
    pname = "plugin-nvim-dap-ui";
    version = "bc81f8d3440aede116f821114547a476b082b319";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-dap-ui";
      rev = "bc81f8d3440aede116f821114547a476b082b319";
      fetchSubmodules = false;
      sha256 = "sha256-Z/Y6NrFTmb5viYGuj+AWArV+eywHD6ecQDjiLl0lY0I=";
    };
    pretty-name = "nvim-dap-ui";
    date = "2025-01-23";
  };
  plugin-nvim-dap-virtual-text = {
    pname = "plugin-nvim-dap-virtual-text";
    version = "df66808cd78b5a97576bbaeee95ed5ca385a9750";
    src = fetchFromGitHub {
      owner = "theHamsta";
      repo = "nvim-dap-virtual-text";
      rev = "df66808cd78b5a97576bbaeee95ed5ca385a9750";
      fetchSubmodules = false;
      sha256 = "sha256-WvxJrOIE7gwZ9c1Ok8ysEDUjBS/34vMM4EmWcRqps0I=";
    };
    pretty-name = "nvim-dap-virtual-text";
    date = "2024-12-25";
  };
  plugin-nvim-jdtls = {
    pname = "plugin-nvim-jdtls";
    version = "2f7bff9b8d2ee1918b36ca55f19547d9d335a268";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-jdtls";
      rev = "2f7bff9b8d2ee1918b36ca55f19547d9d335a268";
      fetchSubmodules = false;
      sha256 = "sha256-pDwa4l7rT2L3l2cFiG/ErDyr4I2iOJ18ISjkiYXnBAM=";
    };
    pretty-name = "nvim-jdtls";
    date = "2025-02-13";
  };
  plugin-nvim-lightbulb = {
    pname = "plugin-nvim-lightbulb";
    version = "f7f61c47af5bf701b1f4af127bc565ab6491acbf";
    src = fetchFromGitHub {
      owner = "kosayoda";
      repo = "nvim-lightbulb";
      rev = "f7f61c47af5bf701b1f4af127bc565ab6491acbf";
      fetchSubmodules = false;
      sha256 = "sha256-y3Fui9WdS9DVWcvcRttdv7yx0At8lmCmXh5ZnFb05/E=";
    };
    pretty-name = "nvim-lightbulb";
    date = "2025-02-04";
  };
  plugin-nvim-lspconfig = {
    pname = "plugin-nvim-lspconfig";
    version = "8a1529e46eef5efc86c34c8d9bdd313abc2ecba0";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "8a1529e46eef5efc86c34c8d9bdd313abc2ecba0";
      fetchSubmodules = false;
      sha256 = "sha256-4Fsuh7DOpTiZNtwG7N/ivUL0DRI4ZLq61hJAGI62NVE=";
    };
    pretty-name = "nvim-lspconfig";
    date = "2025-03-11";
  };
  plugin-nvim-nio = {
    pname = "plugin-nvim-nio";
    version = "21f5324bfac14e22ba26553caf69ec76ae8a7662";
    src = fetchFromGitHub {
      owner = "nvim-neotest";
      repo = "nvim-nio";
      rev = "21f5324bfac14e22ba26553caf69ec76ae8a7662";
      fetchSubmodules = false;
      sha256 = "sha256-eDbzJAGdUBhTwuD0Nt9FihZj1MmVdQfn/GKIybuu5a8=";
    };
    pretty-name = "nvim-nio";
    date = "2025-01-20";
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
  plugin-nvim-ts-autotag = {
    pname = "plugin-nvim-ts-autotag";
    version = "a1d526af391f6aebb25a8795cbc05351ed3620b5";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-ts-autotag";
      rev = "a1d526af391f6aebb25a8795cbc05351ed3620b5";
      fetchSubmodules = false;
      sha256 = "sha256-a3Bcql68mp3y5bH9XMiDTQB0e75T+qFB593objIGg/I=";
    };
    pretty-name = "nvim-ts-autotag";
    date = "2025-02-18";
  };
  plugin-nvim-ts-context-commentstring = {
    pname = "plugin-nvim-ts-context-commentstring";
    version = "1b212c2eee76d787bbea6aa5e92a2b534e7b4f8f";
    src = fetchFromGitHub {
      owner = "JoosepAlviste";
      repo = "nvim-ts-context-commentstring";
      rev = "1b212c2eee76d787bbea6aa5e92a2b534e7b4f8f";
      fetchSubmodules = false;
      sha256 = "sha256-AjDM3+n4+lNBQi8P2Yrh0Ab06uYCndBQT9TX36rDbOM=";
    };
    pretty-name = "nvim-ts-context-commentstring";
    date = "2024-12-07";
  };
  plugin-nvim-ufo = {
    pname = "plugin-nvim-ufo";
    version = "a52c92c3bbaa10f0c9b547a50adaa8c7d8b29f94";
    src = fetchFromGitHub {
      owner = "kevinhwang91";
      repo = "nvim-ufo";
      rev = "a52c92c3bbaa10f0c9b547a50adaa8c7d8b29f94";
      fetchSubmodules = false;
      sha256 = "sha256-lgvaI/+U15mRjWJqA8p3YNkC9ibeDThafxy14C3MY7s=";
    };
    pretty-name = "nvim-ufo";
    date = "2025-02-15";
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
    version = "d0cafff5c4347a604a07edf7bb9a91fda7eb577e";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "d0cafff5c4347a604a07edf7bb9a91fda7eb577e";
      fetchSubmodules = false;
      sha256 = "sha256-KO0q+LOrXVnAlGZj9mrnJ2BYldASwu2CC21SYfVkrMg=";
    };
    pretty-name = "nvim-web-devicons";
    date = "2025-03-15";
  };
  plugin-oil-nvim = {
    pname = "plugin-oil-nvim";
    version = "548587d68b55e632d8a69c92cefd981f360634fa";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "oil.nvim";
      rev = "548587d68b55e632d8a69c92cefd981f360634fa";
      fetchSubmodules = false;
      sha256 = "sha256-VaUCKuIbO8iu5Cx67GmJY9OWzPMRDo2o3F4bpnFpeRw=";
    };
    pretty-name = "oil.nvim";
    date = "2025-03-04";
  };
  plugin-overseer-nvim = {
    pname = "plugin-overseer-nvim";
    version = "d95931e9e8cc4429819c8bbae395da00a6800d1e";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "overseer.nvim";
      rev = "d95931e9e8cc4429819c8bbae395da00a6800d1e";
      fetchSubmodules = false;
      sha256 = "sha256-8hIiJYSx4G4IipqUKjJPmRShZT9LBDxllP4zi5NgcH8=";
    };
    pretty-name = "overseer.nvim";
    date = "2025-03-05";
  };
  plugin-plenary-nvim = {
    pname = "plugin-plenary-nvim";
    version = "857c5ac632080dba10aae49dba902ce3abf91b35";
    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "857c5ac632080dba10aae49dba902ce3abf91b35";
      fetchSubmodules = false;
      sha256 = "sha256-8FV5RjF7QbDmQOQynpK7uRKONKbPRYbOPugf9ZxNvUs=";
    };
    pretty-name = "plenary.nvim";
    date = "2025-02-11";
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
  plugin-render-markdown-nvim = {
    pname = "plugin-render-markdown-nvim";
    version = "f2bdf9f866671456f7a6119cc94501048d9d172c";
    src = fetchFromGitHub {
      owner = "MeanderingProgrammer";
      repo = "render-markdown.nvim";
      rev = "f2bdf9f866671456f7a6119cc94501048d9d172c";
      fetchSubmodules = false;
      sha256 = "sha256-1GbjWHfcC6TIQM1zPnybKs0fcNbQjJJcb6Rb4R9T3nc=";
    };
    pretty-name = "render-markdown.nvim";
  };
  plugin-roslyn-nvim = {
    pname = "plugin-roslyn-nvim";
    version = "0d298e68efa511df18a0bd4fd9a0c9bf70ebdbf2";
    src = fetchFromGitHub {
      owner = "seblj";
      repo = "roslyn.nvim";
      rev = "0d298e68efa511df18a0bd4fd9a0c9bf70ebdbf2";
      fetchSubmodules = false;
      sha256 = "sha256-UgFY13WKxV1jhjzqZS1AHMN/dMrgt3uAkhZjAuthHMg=";
    };
    pretty-name = "roslyn.nvim";
    date = "2025-03-12";
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
    version = "3fc963e75f88990a9467ff72b8eea667a69c30a2";
    src = fetchFromGitHub {
      owner = "tiagovla";
      repo = "scope.nvim";
      rev = "3fc963e75f88990a9467ff72b8eea667a69c30a2";
      fetchSubmodules = false;
      sha256 = "sha256-kvJgMIltiFz0wb6zP40oQ08Bzr93CXeb02csCVie64Y=";
    };
    pretty-name = "scope.nvim";
    date = "2025-02-20";
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
    version = "814f102cd1da3dc78c7d2f20f2ef3ed3cdf0e6e4";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "814f102cd1da3dc78c7d2f20f2ef3ed3cdf0e6e4";
      fetchSubmodules = false;
      sha256 = "sha256-Di0UIBXcnReT+6BaCdzTTg2j7oGzzXw6KfS4VbrBelE=";
    };
    pretty-name = "telescope.nvim";
    date = "2025-02-24";
  };
  plugin-template-nvim = {
    pname = "plugin-template-nvim";
    version = "59955db23613985e031d340756d5c01aebd583a3";
    src = fetchFromGitHub {
      owner = "nvimdev";
      repo = "template.nvim";
      rev = "59955db23613985e031d340756d5c01aebd583a3";
      fetchSubmodules = false;
      sha256 = "sha256-SsTqdOve0uAP9fApBSVIUj0JIOjneQD02CXbA0dRCWo=";
    };
    pretty-name = "template.nvim";
    date = "2024-08-24";
  };
  plugin-todo-comments-nvim = {
    pname = "plugin-todo-comments-nvim";
    version = "304a8d204ee787d2544d8bc23cd38d2f929e7cc5";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "todo-comments.nvim";
      rev = "304a8d204ee787d2544d8bc23cd38d2f929e7cc5";
      fetchSubmodules = false;
      sha256 = "sha256-at9OSBtQqyiDdxKdNn2x6z4k8xrDD90sACKEK7uKNUM=";
    };
    pretty-name = "todo-comments.nvim";
    date = "2025-01-14";
  };
  plugin-trouble-nvim = {
    pname = "plugin-trouble-nvim";
    version = "85bedb7eb7fa331a2ccbecb9202d8abba64d37b3";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "85bedb7eb7fa331a2ccbecb9202d8abba64d37b3";
      fetchSubmodules = false;
      sha256 = "sha256-au9wp88a0CutEf2f8Bi0vFTUR0zvQKgFX1vMVg4myGI=";
    };
    pretty-name = "trouble.nvim";
    date = "2025-02-12";
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
    version = "8ce752f1ba1277046429cb469c17ff2e1abc718f";
    src = fetchFromGitHub {
      owner = "kaarmu";
      repo = "typst.vim";
      rev = "8ce752f1ba1277046429cb469c17ff2e1abc718f";
      fetchSubmodules = false;
      sha256 = "sha256-GU7rPhtGty2pZA0GyeEsGx96BhJwkYAhFca4SkcDVhE=";
    };
    pretty-name = "typst.vim";
    date = "2024-12-07";
  };
  plugin-vim-eunuch = {
    pname = "plugin-vim-eunuch";
    version = "e86bb794a1c10a2edac130feb0ea590a00d03f1e";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-eunuch";
      rev = "e86bb794a1c10a2edac130feb0ea590a00d03f1e";
      fetchSubmodules = false;
      sha256 = "sha256-vvt9CJfD2Y8rhFKVbvSEJYQN8jWrw6NTq8Wp/COVH1E=";
    };
    pretty-name = "vim-eunuch";
    date = "2024-12-29";
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
    version = "691ee15e1459e4420d207cfbc4a79b383f32b411";
    src = fetchFromGitHub {
      owner = "lervag";
      repo = "vimtex";
      rev = "691ee15e1459e4420d207cfbc4a79b383f32b411";
      fetchSubmodules = false;
      sha256 = "sha256-5FPNRozeZQDW7TB100IPoPzBT6Una6BWm+s60xv8nno=";
    };
    pretty-name = "vimtex";
    date = "2025-03-11";
  };
  plugin-which-key-nvim = {
    pname = "plugin-which-key-nvim";
    version = "370ec46f710e058c9c1646273e6b225acf47cbed";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "370ec46f710e058c9c1646273e6b225acf47cbed";
      fetchSubmodules = false;
      sha256 = "sha256-uvMcSduMr7Kd2oUmIOYzvWF4FIl6bZxIYm9FSw/3pCo=";
    };
    pretty-name = "which-key.nvim";
    date = "2025-02-22";
  };
  plugin-zen-mode-nvim = {
    pname = "plugin-zen-mode-nvim";
    version = "863f150ca321b3dd8aa1a2b69b5f411a220e144f";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "zen-mode.nvim";
      rev = "863f150ca321b3dd8aa1a2b69b5f411a220e144f";
      fetchSubmodules = false;
      sha256 = "sha256-TofQ1o5+LH3/1aoLr90oLbBaXFFtu62SXifH5oyj2/k=";
    };
    pretty-name = "zen-mode.nvim";
    date = "2024-12-11";
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
}
