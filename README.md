# Nixed

I spent (or spend?) too much time making this config. It has been nixed, sent to
the void. There is no getting back the hours of debugging the abject horrors of
`error: infinite recursion, at undefined position`.

All is well, though! Because now this is a decent repository for seeing how to
use the [digga](https://github.com/divnix/digga) library practically, and also
for structuring a Nix multi-system flake in general.

## The Epic Origin Story

I first started off using Nix (and subsequently NixOS) after a long time of
distro-hopping. One day, during my senior year of high school, I came across
NixOS, and I was intrigued by its arcane ways of using text files to define
configurations and anything under the sun. I really couldn't resist the feeling
of being _different_ (Whoa, how quirky! Nix doesn't have packages, it has
_derivations_! That's so cool, you're so smart, water-sucks!), so I gave in and
created an installer USB. Boot into it, look up the installation process, all
stuff that is familiar to one that has hopped between numerous Linux
distributions, the BSDs, and even Illumos briefly (until I realized that I could
barely make anything work).

Then comes time to format the partition. One `mkfs.btrfs` later, and bam! I had
the formatted partition. Except, well...

I made a typo.

!["It was at this moment" meme](https://i.imgur.com/RaoHnLt.jpeg)

I formatted the partition that contained Void. All that time I had poured into
my daily driver setup, gone to the wind! I was devastated. I had a project on
there that was due in the next week for my semester final. What happened next? I
refused common sense and continued the installation.

One `nixos-generate-config`, `vim`, and `nixos-install` sequence later (and lots
of bashing my head against the table wondering what godforsaken things were
happening for me not to be able to install a theme imperatively), I had done it!
I created a basic decent-looking `configuration.nix` with a working KDE
environment that allowed me to speedrun that school project from scratch and
turn it in two days early. I fell in love with Nix. And then I discovered
`nix-shell`, and flakes, and now Nix is a part of me. We rode off into the
sunset together on a horse, running from infinite recursions, unreadable stack
traces, and `error: cannot coerce an int to a string`; That last one gets real
annoying once you've seen it a few times.

I was bewitched by flakes, but I'm a stickler about organization of code. Maybe
even obsessive. I wanted opinionated examples because of this, and I then ran
across `digga`. I didn't understand too much about flakes, so `digga` with all
its abstractions was perfect for me who wanted a running start with flakes
without understanding the intricate details. Mind you, that's not the best way
of learning anything when it comes to Nix, but I was loyal; Nix had stopped my
distro-hopping cycle, after all; I should at least try to get to know it better!
So, I forked the `devos` template and gave it a go.

There were some peculiar errors, but I got through with it and managed to
configure my laptop and desktop with the `devos` template. However, there is a
remarkably messy commit history, especially at the beginning, that shows how
much I didn't know about structuring flakes even with `digga` holding my hand.
Now, I know much more on how flakes work, and may transition away from using
`digga` because I have found that it does not suit certain use cases well (i.e.
issue #1, dealing with merging of platform-specific modules on Darwin). I still
have a long ways to go using Nix, but this repo is a show of what I've learned
and how I use it to configure all my stuff.

## Roster

I name all of my machines after my favorite players from the Las Vegas Raiders
(Yes, yes, I'm a stinky American who thinks "football" is that sport with the
egg-shaped ball that usually involves throwing the ball instead of kicking it).
It's a time-honored thing for me; I've always done that with my personal
machines. Let's see the lineup!

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
phenomenal leader, and also is just a great guy to be around. Just look at his
last run to clinch a playoff spot in the midst of hellish circumstances during
the 2021 season! My workstation has served me quite well; while it doesn't move
around in the pocket a lot (it stays in my home, after all), it manages to be an
extremely fast machine and doesn't consume too much power unless it's under
extreme workloads. When it needs to run, it runs, and it does so fast! Just like
Carr does when he finds an open area to rush for the first down.

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
battery life (just like Hunter's stamina), but it also is a great laptop to take
on the go; it's just as mobile as Hunter is on the field! I use it very often to
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
having to do clean reinstalls for upgrades Years of rebuilding configurations by
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

There will be more to come in the future, such as legendary Bo Jackson. Stay
tuned!

## Thanks

Huge thanks to [digga](https://github.com/divnix/digga) for making my Nix
journey possible, and also to
[montchr/dotfield](https://github.com/montchr/dotfield) for showing me
what a super practical configuration looks like. Mine is nowhere near as
complex as that, though.
