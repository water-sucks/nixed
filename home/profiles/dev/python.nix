{pkgs, ...}: {
  # Sadly, I need this in my global environment.
  # So let's make a profile for it! WCGW, amirite?
  home.packages = [
    (pkgs.python3.withPackages (p: [
      p.debugpy
    ]))
  ];
}
