# Nixed

I spend too much time making this config. It has been nixed, sent to the void.
There is no getting back the hours of debugging the abject horrors of
`error: infinite recursion, at undefined position`.

Regardless of the amount of time I spend working on this, there is one thing
that is true: this is yet another repository that contains Nix configuration
files structured in yet another way. Is it good? Maybe; that's up to your
discretion. If you think it's not, it can always be improved! Send me a message
or open an issue, and I'd love to talk about it.

## Roster

I name all of my machines after my favorite players from the Las Vegas Raiders
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
  - Sabrent Rocket 4.0 (1 TB)

He's no Kenny Stabler (yet!), but Derek Carr has been ol' reliable for quite a
long time now; since 2014, Carr has led us to countless wins, has been a
phenomenal leader, and also is a great man to be around. Look at his
last run to clinch a playoff spot in the midst of hellish circumstances during
the 2021 season! My workstation has served me quite well; while it doesn't move
around in the pocket a lot (it stays in my home, after all), it manages to be an
extremely fast machine and doesn't consume too much power unless it's under
extreme workloads. When it needs to run, it runs, and it does so fast! It's
like when Carr does when he finds an open area to rush for the first down; you
never expect it.

### HunterRenfrow

- Type: Primary laptop
- Operating system: NixOS
- Model: Lenovo IdeaPad Flex 5

Hunter Renfrow is a beast. He may not look the part at first glance; but he will
always find endless ways to shock you. 3rd down? He's
[gotcha](https://www.youtube.com/watch?v=eLzgg5iavEs). Critical throw that can
cost a season if dropped? He's
[gotcha](https://www.youtube.com/watch?v=9AsuslXha9Y)
there as well! Block a rare fake punt and force an incredible turnover on downs
with flawless technique? You know the answer; He's
[gotcha](https://www.youtube.com/watch?v=eLzgg5iavEs) there too!! What's there
that he can't do??? My primary laptop is very similar; it not only has a great
battery life (like Hunter's stamina), but it also is a great laptop to take
on the go; it's as mobile as Hunter is on the field! I use it very often to
catch passes from Derek Carr (I SSH into my home workstation a lot; provided I
have an internet connection, Hunter does so with no problems). It's very
versatile, and I can use it for many things. He's one of my favorite current
players, and this laptop is definitely my favorite laptop; it all checks out!

### CharlesWoodson

- Type: Home workstation (for Apple-specific stuff)
- Operating system: macOS (with nix-darwin)
- Specs: (same as DerekCarr)

You need no introduction if you're a Raiders fan; Charles Woodson, aka CWood, is
a legend. He was a beacon of light in our darkest years. Year after year of
miserable seasons, yet he kept up a legendary performance. My situation with
this OS is similar. Before I used Linux, I wanted to develop for Apple quite a
lot, and much preferred the feel of macOS to Windows. I could never afford a
real Mac though, so I had to go the way of the Hackintosh. I did this for a few
years with nothing other than Homebrew for package management, but I ended up
doing clean installations for upgrades. Years of rebuilding configurations by
hand, and I reached a limit. When I found `nix-darwin`, though, I was ecstatic;
it was as if I was Bill Belichick and I had found Tom Brady. Even during the
dark years before I used Nix, my Hackintosh served me quite well; it now does so
even better with Nix. CWood is a legend, and will be in my heart forever, even
when Hackintoshing meets its inevitable end (Damn you, Apple!). I might need to
buy a powerful Mac soon; CWood will follow it and be installed there.

### SebastianJanikowski

- Type: Work laptop
- Operating system: macOS (with nix-darwin)
- Model: MacBook Pro 2017 (base model)

Sebastian Janikowsi; he was a legendary kicker. You know someone is phenomenal
if they have a rating of 99 in _Madden NFL_. He not only had it multiple times,
but did so _consecutively_. Seabass was a monster stats-wise, but he did start
to decline after going at it so hard for over 10 years. This was the very first
laptop I ever received; it served me well, but it's now a toaster that's hot
enough to cook eggs on. It's past its time, and it needs to retire soon. I do
commend it for its extraordinary achievements while it was my daily driver, and
it was quite the ride.

There will be more to come in the future, such as Bo Jackson. Stay tuned!

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
generate modules; it's rather hacky, and does rely a lot on the module system
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
- [viperML/dotfiles] :: for giving me insight on how `flake-parts` works
- [fufexan/dotfiles](https://github.com/fufexan/dotfiles) :: for some naming
  ideas and how to properly export a `lib` attribute.
