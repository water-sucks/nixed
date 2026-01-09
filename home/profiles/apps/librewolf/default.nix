{
  inputs,
  config,
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;
  inherit (pkgs.stdenv.hostPlatform) system;

  sources = pkgs.callPackage _sources/generated.nix {};

  cascadefox = pkgs.stdenv.mkDerivation {
    name = "cascadefox-theme-src";
    inherit (sources.cascadefox-theme) src;

    patches = [./darkrose.patch];
    dontBuild = true;

    installPhase = ''
      mkdir $out

      cp -r chrome $out
    '';
  };

  settings = {
    "browser.download.start_downloads_in_tmp_dir" = false;
    "browser.toolbars.bookmarks.visibility" = "never";
    "browser.tabs.drawInTitlebar" = true;
    "browser.tabs.cardPreview.showThumbnails" = true;
    "browser.uidensity" = 0;
    "browser.ctrlTab.sortByRecentlyUsed" = true;
    "browser.startup.homepage" = "about:newtab";
    "browser.cache.disk.enable" = true;
    "browser.tabs.firefox-view" = false;

    "svg.context-properties.content.enabled" = true;
    "toolkit.legacyUserProfileCustomizations.stylesheets" = true;

    "places.history.enabled" = false;

    "network.http.max-connections" = 1800;
    "network.http.max-persistent-connections-per-server" = 10;
    "network.http.max-urgent-start-excessive-connections-per-host" = 5;
    "network.http.pacing.requests.enabled" = false;
    "network.dnsCacheExpiration" = 3600;
    "network.ssl_tokens_cache_capacity" = 10240;

    "general.smoothScroll" = false;
  };
in
  lib.mkMerge [
    {
      programs.librewolf = {
        enable = true;

        profiles."default" = {
          id = 0;
          isDefault = true;
          inherit settings;

          extensions.packages = with inputs.firefox-addons.packages.${system}; [
            ublock-origin
            darkreader
            simplelogin
            canvasblocker
            floccus
            bitwarden
          ];

          userChrome = ''
            @import "cascadefox/userChrome.css";
          '';

          userContent = ''
            @-moz-document url(about:newtab), url(about:privatebrowsing), url(about:blank) {
              .click-target-container *,
              .top-sites-list * {
                color: #fff !important;
                text-shadow: 2px 2px 2px #222 !important;
              }

              body::before {
                content: "";
                z-index: -1;
                position: fixed;
                top: 0;
                left: 0;
                background-color: #101010;
                background-size: cover;
                width: 100vw;
                height: 100vh;
              }
            }
          '';
        };
      };

      home.file = let
        prefix =
          if isDarwin
          then "${config.programs.librewolf.configPath}/Profiles/default"
          else "${config.programs.librewolf.configPath}/default";
      in {
        "cascadefox-chrome" = {
          source = "${cascadefox}/chrome";
          target = "${prefix}/chrome/cascadefox";
        };
      };
    }

    (lib.mkIf isDarwin {
      programs.librewolf.package = null;

      homebrew.casks = [
        {
          name = "librewolf";
          args = {
            no_quarantine = true;
          };
        }
      ];

      home.sessionVariables = {
        MOZ_LEGACY_PROFILES = "1";
      };
    })

    (lib.mkIf isLinux {
      xdg.mimeApps.defaultApplications = {
        "x-scheme-handler/http" = ["librewolf.desktop"];
        "x-scheme-handler/https" = ["librewolf.desktop"];
        "x-scheme-handler/chrome" = ["librewolf.desktop"];
        "text/html" = ["librewolf.desktop"];
        "application/x-extension-htm" = ["librewolf.desktop"];
        "application/x-extension-html" = ["librewolf.desktop"];
        "application/x-extension-shtml" = ["librewolf.desktop"];
        "application/xhtml+xml" = ["librewolf.desktop"];
        "application/x-extension-xhtml" = ["librewolf.desktop"];
        "application/x-extension-xht" = ["librewolf.desktop"];
      };

      persistence = {
        directories = [
          ".librewolf"
        ];
      };
    })
  ]
