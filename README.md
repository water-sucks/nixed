# Nixed

I spend too much time making this config. It has been nixed, sent to the void.
There is no getting back the hours of debugging the abject horrors of
`error: infinite recursion, at undefined position`.

Regardless of the amount of time I spend working on this, there is one thing
that is true: this is yet another repository that contains Nix configuration
files structured in yet another way. Is it good? Maybe; that's up to your
discretion. If you think it's not, it can always be improved! Send me a message
or open an issue, and I'd love to talk about it.

## Packages/Modules

I have a few custom packages and modules, some of which I do want to contribute
upstream to nixpkgs and home-manager in the future. However, I'm keeping them
around in here to make sure they can work reliably before doing so. If you want
to use them, feel free! Here's a rundown of what they are:

### Packages

| Name                            | Description                                |
| ------------------------------- | ------------------------------------------ |
| airtame                         | Screen streaming application               |
| filen-desktop                   | Desktop client for filen.io                |
| lswt                            | List Wayland toplevels                     |
| nerdfetch\*                     | Modified version of nerdfetch              |
| plymouth-spinning-watch-theme\* | Spinning watch theme for Plymouth          |
| rescrobbled                     | MPRIS music scrobbler daemon               |
| waybar-mpris                    | Waybar component for seeing MPRIS players  |
| waylock                         | Small screenlocker for Wayland compositors |

\* - Probably don't use this package, this is tailored for my own config.

To add them to your flake, you can use the provided overlay:

```nix
{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    nixed.url = "github:water-sucks/nixed";
  };

  outputs = {self, nixpkgs, nixed, ...}: let
    pkgs = import nixpkgs {
      system = "x86_64-linux";
      overlays = [
        nixed.overlays.default
      ];
    };
  in {
    # Whatever you want to do with my packages...
  };
}
```

### home-manager Modules

| Name             | Description                               |
| ---------------- | ----------------------------------------- |
| berry            | Berry WM configuration                    |
| darwin-wallpaper | Configure wallpaper on macOS              |
| hikari           | Hikari Wayland compositor configuration   |
| leftwm           | LeftWM configuration                      |
| river            | River configuration                       |
| wob              | Wayland overlay bar configuration/service |

To use these modules, you can use the provided `homeModules` attribute:

```nix
{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    home.url = "github:nix-community/home-manager";
    nixed.url = "github:water-sucks/nixed";
  };

  outputs = {self, nixpkgs, home-manager, nixed, ... }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    homeConfigurations.jdoe =
      home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        # Adds all modules to configuration
        modules = [
          # Whatver other modules you want
        ] ++ builtins.attrValues (nixed.homeModules);

      };
  };
}
```

To see possible options, check their definitions out in
[home/modules](./home/modules).

Note: I don't use berry or Hikari actively anymore, but since their modules are
pretty uncomplicated, I still keep them in the tree.

## Roster

I name all of my machines after my favorite players from the Las Vegas Raiders.
It's a time-honored thing for me; I've always done that with my personal
machines. Let's see the lineup!

<!--alex disable he-she her-him gals-man damn beast -->

### DerekCarr

- Type: Home workstation
- Operating system: NixOS
- Specs:
  - AMD Ryzen 9 3950X (16 cores, 3.8 GHz OC)
  - G.SKILL Trident RGB (64 GB DDR4-3600)
  - AMD Radeon RX 5500 XT
  - Sabrent Rocket 4.0 x2 (1 TB, 2 TB)

My daily driver workstation; it's served me well throughout the years, and
doesn't take too much power, even when overclocked.

### HunterRenfrow

- Type: Primary laptop
- Operating system: NixOS
- Model: Lenovo IdeaPad Flex 5

My primary laptop; I take it everywhere, it's very mobile (quite a lot like its
namesake!).

### CharlesWoodson

- Type: Home workstation (for Apple-specific stuff)
- Operating system: macOS (with nix-darwin)
- Specs: (same as DerekCarr)

Hackintosh nix-darwin setup that is dual-booted with DerekCarr; primarily used
for iOS development and to run other Apple-exclusive software.

### SebastianJanikowski

- Type: Work laptop
- Operating system: macOS (with nix-darwin)
- Model: MacBook Pro 2017 (base model)

A legit MacBook, but sadly declining; it's hot enough to cook some bacon on. I
rarely use it anymore unless I need access to an Apple environment and can't
use CharlesWoodson.

More to come in the future, such as Bo Jackson. Stay tuned!

## Notes

Originally, I used `digga`, but it proved to be a little unwieldy, and
considering that `digga` is another abstraction on top of `flake-utils-plus`,
itself another abstraction, the whole repository felt like it had a lot of
indirection for no reason. I found `flake-parts`, and it proved to be a much
simpler way of structuring my configuration, without the magic that `digga` had.

I did like the way that `digga` structured profiles vs. modules, but I did not
like the "suites" metaphor at all; it felt like a misuse of `specialArgs`. Due
to this, I spent a lot of time trying to figure out a way to keep the profiles
vs. modules distinction, and eventually came up with a way to dynamically
generate modules; it's rather hackish, and does rely a lot on the module system
to pass arguments properly, but it works quite well right now. In the future,
I might create a template using this structure as an alternative to `digga`,
but this is still rather complicated, and does not have some bells and whistles
that `digga` has, like automatic integration with `deploy-rs`, and other stuff.

This is not a complete configuration, and it'll never be. However, it's a great
show of my progress living and breathing Nix, and I hope it'll continue to be
in the future.

## Thanks

- [digga](https://github.com/divnix/digga) :: for making my initial Nix journey
  possible, and also for some convenience functions and opinions on structure.
- [flake-parts](https://github.com/hercules-ci/flake-parts) :: for being the
  current backbone of my entire configuration.
- [montchr/dotfield](https://github.com/montchr/dotfield) :: for showing me what
  a super practical configuration can look like. Mine is nowhere near as complex
  as his, but you'll see a lot of similarities and (maybe) blatant ripoffs.
- [viperML/dotfiles](https://github.com/viperML/dotfiles) :: for giving me some
  insight on how `flake-parts` works.
- [fufexan/dotfiles](https://github.com/fufexan/dotfiles) :: for some naming
  ideas and how to properly export a `lib` attribute.
