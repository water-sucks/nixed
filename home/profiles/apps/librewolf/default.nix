{
  inputs,
  config,
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;

  sources = pkgs.callPackage _sources/generated.nix {};

  arcadia = pkgs.stdenv.mkDerivation {
    name = "arcadia-theme-src";
    inherit (sources.arcadia-theme) src;

    patches = []; # Add patches here
    dontBuild = true;

    installPhase = ''
      mkdir $out

      cp -r chrome $out
    '';
  };

  settings = {
    "browser.toolbars.bookmarks.visibility" = "never";
    "browser.tabs.drawInTitlebar" = true;
    "browser.theme.dark-private-windows" = false;
    "browser.uidensity" = 0;
    "browser.ctrlTab.sortByRecentlyUsed" = true;

    # This forces the new tab page to be the image on startup or for a new window.
    "browser.startup.homepage" = "about:newtab";

    "places.history.enabled" = false;

    "webgl.disabled" = false;

    # Settings here copied from Arcadia theme

    "svg.context-properties.content.enabled" = true;
    "toolkit.legacyUserProfileCustomizations.stylesheets" = true;

    "content.notify.interval" = 100000;

    "gfx.canvas.accelerated.cache-items" = 4096;
    "gfx.canvas.accelerated.cache-size" = 512;
    "gfx.content.skia-font-cache-size" = 20;

    "browser.cache.disk.enable" = true;

    "media.memory_cache_max_size" = 65536;
    "media.cache_readahead_limit" = 7200;
    "media.cache_resume_threshold" = 3600;

    "image.mem.decode_bytes_at_a_time" = 32768;

    "network.http.max-connections" = 1800;
    "network.http.max-persistent-connections-per-server" = 10;
    "network.http.max-urgent-start-excessive-connections-per-host" = 5;
    "network.http.pacing.requests.enabled" = false;
    "network.dnsCacheExpiration" = 3600;
    "network.ssl_tokens_cache_capacity" = 10240;

    "browser.tabs.firefox-view" = false;
    "ui.key.menuAccessKeyFocuses" = false;

    "full-screen-api.transition-duration.enter" = 0;
    "full-screen-api.transition-duration.leave" = 0;

    "full-screen-api.warning.timeout" = 0;

    "browser.tabs.hoverPreview.enabled" = true;
    "browser.tabs.cardPreview.showThumbnails" = true;

    "apz.overscroll.enabled" = true;
    "general.smoothScroll" = true;
    "general.smoothScroll.msdPhysics.continuousMotionMaxDeltaMS" = 12;
    "general.smoothScroll.msdPhysics.enabled" = true;
    "general.smoothScroll.msdPhysics.motionBeginSpringConstant" = 600;
    "general.smoothScroll.msdPhysics.regularSpringConstant" = 650;
    "general.smoothScroll.msdPhysics.slowdownMinDeltaMS" = 25;
    "general.smoothScroll.msdPhysics.slowdownMinDeltaRatio" = "2";
    "general.smoothScroll.msdPhysics.slowdownSpringConstant" = 250;
    "general.smoothScroll.currentVelocityWeighting" = "1";
    "general.smoothScroll.stopDecelerationWeighting" = "1";
    "mousewheel.default.delta_multiplier_y" = 265;
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

          extensions.packages = with inputs.firefox-addons.packages.${pkgs.system}; [
            ublock-origin
            darkreader
            simplelogin
            canvasblocker
            floccus
            bitwarden
          ];

          userChrome = ''
            @import "arcadia/userChrome.css";
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
                background: #1b1b19 no-repeat url(${./new-tab-wallpaper.jpg}) center;
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
        "arcadia-chrome" = {
          source = "${arcadia}/chrome";
          target = "${prefix}/chrome/arcadia";
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
