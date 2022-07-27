{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.wayland.windowManager.hikari;

  jsonFormat = pkgs.formats.json {};

  pow = base: exp: foldl' (a: x: x * a) 1 (genList (_: base) exp);
  hexToDec = v: let
    hexToInt = {
      "0" = 0;
      "1" = 1;
      "2" = 2;
      "3" = 3;
      "4" = 4;
      "5" = 5;
      "6" = 6;
      "7" = 7;
      "8" = 8;
      "9" = 9;
      "a" = 10;
      "b" = 11;
      "c" = 12;
      "d" = 13;
      "e" = 14;
      "f" = 15;
    };
    chars = sublist 2 ((stringLength v) - 2) (stringToCharacters (toLower v));
    charsLen = (stringLength v) - 2;
  in
    foldl
    (a: v: a + v)
    0
    (imap0
      (k: v: hexToInt."${v}" * (pow 16 (charsLen - k - 1)))
      chars);

  beginEnd = with types;
    submodule {
      options = {
        begin = mkOption {
          type = str;
          default = "";
          description = "Command to run at beginning of action";
        };

        end = mkOption {
          type = str;
          default = "";
          description = "Command to run at end of action";
        };
      };
    };

  position = mkOption {
    type = with types;
      submodule {
        options = {
          x = mkOption {
            type = int;
            default = 0;
            example = 1680;
            description = "X coordinate of position";
          };

          y = mkOption {
            type = int;
            default = 0;
            example = 920;
            description = "Y coordinate of position";
          };
        };
      };
    default = {};
    description = "Coordinates for position";
  };

  actionsSection = mkOption {
    type = with types; attrsOf str;
    default = {};
    example = {
      terminal = "$TERMINAL";
    };
    description = "User-defined set of actions to bind to";
  };

  keyboardSection = with types;
    submodule (_: {
      options = {
        xkb = mkOption {
          type = submodule {
            options = {
              rules = mkOption {
                type = str;
                default = "evdev";
                example = "terminate:ctrl_alt_bksp";
                description = "XKB rules for keyboard";
              };

              model = mkOption {
                type = str;
                default = "";
                example = "de(nodeadkeys),de";
                description = "XKB keyboard model";
              };

              layout = mkOption {
                type = str;
                default = "";
                example = "us,jp";
                description = "XKB default keyboard layout";
              };

              variant = mkOption {
                type = str;
                default = "";
                example = ",bksl,";
                description = "XKB keyboard variant";
              };

              options = mkOption {
                type = str;
                default = "";
                example = "grp:alt_shift_toggle";
                description = "XKB keyboard options";
              };
            };
          };
          default = {};
          description = "XKB keyboard configuration";
        };

        repeat-delay = mkOption {
          type = int;
          default = 600;
          example = 400;
          description = "Key repeat delay (in milliseconds)";
        };

        repeat-rate = mkOption {
          type = int;
          default = 25;
          example = 10;
          description = "Key repeat rate (in Hz)";
        };
      };
    });

  marksSection = mkOption {
    type = with types; attrsOf str;
    default = {};
    example = {
      "s" = "sakura";
    };
    description = "Commands issued on unassigned marks";
  };

  # This doesn't WORK! Attrsets are not ordered. Configuring
  # it as a DAG will work when this GitHub issue is resolved:
  # https://github.com/nix-community/home-manager/issues/2519
  layoutsSection = mkOption {
    type = types.attrs;
    default = {};
    example = {
      "s" = {
        "scale" = {
          "min" = 0.5;
          "max" = 0.75;
        };
        "left" = "single";
        "right" = "stack";
      };
    };
    description = "Layouts configuration section (free-form, not validated)";
  };

  outputSection = with types;
    submodule (_: {
      options = {
        background = mkOption {
          type =
            either
            str
            (submodule {
              options = {
                path = mkOption {
                  type = str;
                  default = "";
                  example = "\${./path/png}";
                  description = "Path to background image";
                };

                fit = mkOption {
                  type = enum ["stretch" "center" "tile"];
                  default = "stretch";
                  example = "fit";
                  description = "Method to display background image with";
                };
              };
            });
          default = "${pkgs.hikari}/share/backgrounds/hikari/hikari_wallpaper.png";
          example = "\${./path.png}";
          description = "Path to background image";
        };

        inherit position;
      };
    });

  pointerSection = with types;
    submodule (_: {
      options = {
        accel = mkOption {
          type = float;
          default = 1.0;
          example = 0.5;
          description = "Acceleration speed for pointer between -1 and 1";
        };

        accel-profile = mkOption {
          type = enum ["none" "flat" "adaptive"];
          default = "adaptive";
          example = "flat";
          description = "Acceleration profile for pointer";
        };

        disable-while-typing = mkOption {
          type = bool;
          default = false;
          example = true;
          description = "Disable mouse pointer when typing (if possible)";
        };

        middle-emulation = mkOption {
          type = bool;
          default = true;
          example = false;
          description = "Middle click emulation (if available)";
        };

        natural-scrolling = mkOption {
          type = bool;
          default = false;
          example = true;
          description = "Natural scrolling (if available)";
        };

        scroll-button = mkOption {
          type = enum ["right" "middle" "left" "side" "extra" "forward" "back" "task"];
          default = "middle";
          example = "right";
          description = "Pointer scroll button";
        };

        scroll-method = mkOption {
          type = enum ["no-scroll" "on-button-down"];
          default = "on-button-down";
          example = "right";
          description = "Pointer scroll method";
        };

        tap = mkOption {
          type = bool;
          default = false;
          example = true;
          description = "Tap gesture if available";
        };

        tap-drag = mkOption {
          type = bool;
          default = false;
          example = true;
          description = "Tap-drag gesture if available";
        };

        tap-drag-lock = mkOption {
          type = bool;
          default = false;
          example = true;
          description = "Tap-drag-lock gesture if available";
        };
      };
    });

  uiSection = with types;
    submodule {
      options = {
        border = mkOption {
          type = int;
          default = 1;
          example = 2;
          description = "Thickness of view border in pixels";
        };

        gap = mkOption {
          type = int;
          default = 5;
          example = 6;
          description = "Size of gap between layouts and snapping views";
        };

        step = mkOption {
          type = int;
          default = 100;
          example = 50;
          description = "Number of pixels move and resize operations cover";
        };

        font = mkOption {
          type = str;
          default = "monospace 10";
          example = "IBM Plex Sans Condensed 12";
          description = "Font and size used for indicator bars";
        };

        colorscheme = mkOption {
          type = submodule {
            options = {
              background = mkOption {
                type = str;
                default = "0x282C34";
                example = "0x282C34";
                apply = hexToDec;
                description = "Background color; obscured by wallpaper if set";
              };

              foreground = mkOption {
                type = str;
                default = "0x000000";
                example = "0x000000";
                apply = hexToDec;
                description = "Font color for indicator bars";
              };

              selected = mkOption {
                type = str;
                default = "0xF5E094";
                example = "0xF5E094";
                apply = hexToDec;
                description = "Color for currently selected view";
              };

              grouped = mkOption {
                type = str;
                default = "0xFDAF53";
                example = "0xFDAF53";
                apply = hexToDec;
                description = "Color for views that are in the same group";
              };

              first = mkOption {
                type = str;
                default = "0xB8E673";
                example = "0xB8E673";
                apply = hexToDec;
                description = "Color for topmost view of a group";
              };

              conflict = mkOption {
                type = str;
                default = "0xED6B32";
                example = "0xED6B32";
                apply = hexToDec;
                description = "Color for illegal/invalid action";
              };

              insert = mkOption {
                type = str;
                default = "0xE3C3FA";
                example = "0xE3C3FA";
                apply = hexToDec;
                description = "Color for indicator bars in insert mode";
              };

              active = mkOption {
                type = str;
                default = "0xFFFFFF";
                example = "0xFFFFFF";
                apply = hexToDec;
                description = "Color for view with current focus";
              };

              inactive = mkOption {
                type = str;
                default = "0x465457";
                example = "0x465457";
                apply = hexToDec;
                description = "Color for view that do not have current focus";
              };
            };
          };
          default = {};
          description = "Hikari colorscheme";
        };
      };
    };

  viewSection = with types;
    submodule ({view, ...}: {
      options = {
        floating = mkOption {
          type = bool;
          default = false;
          example = true;
          description = "Floating state of view on startup";
        };

        focus = mkOption {
          type = bool;
          default = false;
          example = true;
          description = "If view should automatically grab focus on startup";
        };

        invisible = mkOption {
          type = bool;
          default = false;
          example = true;
          description = "Invisible state of view on startup";
        };

        public = mkOption {
          type = bool;
          default = false;
          example = true;
          description = "Public state of view on startup";
        };

        group = mkOption {
          type = str;
          default = view;
          example = "terminal";
          description = "Group view should belong to";
        };

        sheet = mkOption {
          type = int;
          default = 0;
          example = 1;
          description = "Sheet view is bound to on startup";
        };

        mark = mkOption {
          type = str;
          default = "";
          example = "a";
          description = "Mark assigned to view";
        };

        position = either position (mkOption {
          type = enum [
            "bottom-left"
            "bottom-middle"
            "bottom-right"
            "center"
            "center-left"
            "center-right"
            "top-left"
            "top-middle"
            "top-right"
          ];
          default = {
            x = 0;
            y = 0;
          };
          example = "bottom-left";
          description = "Position of view on output";
        });

        "inherit" = mkOption {
          type = listOf (
            either
            enum [
              "floating"
              "focus"
              "invisible"
              "public"
              "group"
              "mark"
              "position"
            ]
            oneOf
            viewSection
          );
          default = [];
          example = [
            "group"
            "sheet"
            {
              floating = true;
            }
          ];
        };
      };
    });

  settingsSchema = with types;
    submodule {
      freeformType = jsonFormat.type;

      options = {
        actions = actionsSection;

        bindings = mkOption {
          type = submodule {
            options = {
              keyboard = mkOption {
                type = attrsOf (nullOr (either str beginEnd));
                default = {};
                example = {
                  "L+0" = "workspace-switch-to-sheet-0";
                  "L+t" = {
                    begin = "action-push-to-talk-start";
                    end = "action-push-to-talk-stop";
                  };
                };
                description = "Set of keyboard bindings to defined actions";
              };

              mouse = mkOption {
                type = attrsOf (nullOr (either str beginEnd));
                default = {};
                example = {
                  "L+left" = "mode-enter-move";
                  "L+right" = "mode-enter-resize";
                };
                description = "Set of mouse bindings to defined actions";
              };
            };
          };
          default = {};
          description = "Bindings for builtin and user-defined actions";
        };

        layouts = layoutsSection;

        marks = marksSection;

        views = mkOption {
          type = attrsOf viewSection;
          default = {};
          description = "View configuration section";
        };

        ui = mkOption {
          type = uiSection;
          default = {};
          description = "UI configuration section";
        };

        inputs = mkOption {
          type = submodule {
            options = {
              keyboards = mkOption {
                type = attrsOf keyboardSection;
                default = {"*" = {};};
                description = "Keyboard inputs configuration section";
              };

              pointers = mkOption {
                type = attrsOf pointerSection;
                default = {"*" = {};};
                description = "Pointer inputs configuration section";
              };

              switches = mkOption {
                type = attrsOf str;
                default = {};
                example = {
                  "Control Method Lid Switch" = "lock";
                };
                description = "Switch inputs configuration section";
              };
            };
          };
          default = {};
          description = "Inputs configuration section";
        };

        outputs = mkOption {
          type = attrsOf outputSection;
          default = {"*" = {};};
          description = "Outputs configuration section";
        };
      };
    };
in {
  options.wayland.windowManager.hikari = {
    enable = mkEnableOption "Hikari Wayland compositor";

    autostart = mkOption {
      type = types.lines;
      default = "";
      description = "Autostart script ran on Hikari startup";
    };

    debug = mkOption {
      type = types.bool;
      default = false;
      description = "Run Hikari in debug mode";
    };

    config = mkOption {
      type = types.lines;
      default = '''';
      description = "Configuration file, specified as UCL. Overrides settings if present";
    };

    settings = mkOption {
      type = settingsSchema;
      default = {};
      description = "Nix-style settings configuration for Hikari";
    };
  };

  config = let
    sturcturedConfig = jsonFormat.generate "hikari.conf" cfg.settings;
    rawConfig = writeTextFile {
      name = "hikari.conf";
      text = cfg.config;
    };

    hikariPackage =
      if cfg.debug
      then
        pkgs.hikari.overrideAttrs
        (o: rec {
          makeFlags = o.makeFlags ++ ["DEBUG=YES"];
        })
      else pkgs.hikari;
  in
    mkIf cfg.enable {
      xdg.configFile."hikari/hikari.conf".source =
        if stringLength cfg.config > 0
        then rawConfig
        else sturcturedConfig;
      xdg.configFile."hikari/autostart".text = cfg.autostart;

      home.packages = [
        hikariPackage
      ];
    };
}
