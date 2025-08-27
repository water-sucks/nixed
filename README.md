<h1 align="center">nixed</h1>
<h6 align="center">I've spent too much time on this.</h6>

```raw
d8b   db d888888b db    db d88888b d8888b.
888o  88   `88'   `8b  d8' 88'     88  `8D
88V8o 88    88     `8bd8'  88ooooo 88   88
88 V8o88    88     .dPYb.  88~~~~~ 88   88
88  V888   .88.   .8P  Y8. 88.     88  .8D
VP   V8P Y888888P YP    YP Y88888P Y8888D'
```

I spend too much time making this config. It has been nixed, sent to the void.
There is no getting back the hours of debugging the abject horrors of
`error: infinite recursion, at undefined position`.

Regardless of the amount of time I spend working on this, there is one thing
that is true: this is yet another repository that contains Nix configuration
files structured in yet another way. Is it good? Maybe; that's up to your
discretion. If you think it's not, it can always be improved! Send me a message
or open an issue, and I'd love to talk about it.

The official source code is located on
[SourceHut](https://sr.ht/~watersucks/nixed), but there is a mirror available on
[GitHub](https://github.com/water-sucks/nixed).

## Packages/Modules

I have a few custom packages and modules, some of which I do want to contribute
upstream to nixpkgs and home-manager in the future. However, I'm keeping them
around in here to make sure they can work reliably before doing so. If you want
to use them, feel free! Here's a rundown of what they are:

### Packages

| Name     | Description                              |
| -------- | ---------------------------------------- |
| nsmb-mvl | Mario vs. Luigi game rewrite from the DS |

### home-manager Modules

| Name   | Description                             |
| ------ | --------------------------------------- |
| leftwm | LeftWM configuration                    |
| vivid  | Vivid LS_COLORS generator configuration |

To use these modules, you can use the provided `homeModules` attribute.

To see possible options, check their definitions out in
[home/modules](./home/modules).

## Roster

I name all of my machines after my favorite players from the Oakland Raiders\*.
It's a time-honored thing for me; I've always done that with my personal
machines. Let's see the lineup!

\* To all the people going "um, akshually, it's Las Vegas!", I don't want to
hear it! The Autumn Wind is a Raider no matter the location ;}

### CharlesWoodson

- Type: Home workstation
- Operating system: NixOS
- Specs:
  - AMD Ryzen 9 3950X (16 cores, 3.8 GHz OC)
  - G.SKILL Trident RGB (64 GB DDR4-3600)
  - AMD Radeon RX 5500 XT
  - Sabrent Rocket 4.0 (1 TB)

My daily driver workstation; it's served me well throughout the years, and
doesn't take too much power, even when overclocked. What a legend.

### SebastianJanikowski

- Type: Personal laptop
- Operating system: NixOS
- Model: Lenovo IdeaPad Flex 5

My primary laptop; I take it everywhere, it's very mobile and can kick many
workloads quite far (a lot like its namesake!).

### TimBrown

- Type: Personal laptop
- Operating system: macOS (with nix-darwin)
- Model: MacBook M3 Pro 2023 (18 GB RAM)

A legit MacBook that is a beast on the run. Used for music production on-the-go
with Logic Pro X and mobile app development.

More to come in the future, such as Bo Jackson. Stay tuned!
