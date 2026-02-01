{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux;
in {
  users.users.varun = lib.mkMerge [
    {
      uid = 1000;
      description = "Varun Narravula";
      shell = pkgs.zsh;
    }
    (lib.mkIf isLinux {
      extraGroups = ["wheel" "audio" "video" "input" "networkmanager" "libvirtd" "adbusers" "dialout" "docker"];
      isNormalUser = true;
      openssh.authorizedKeys.keys = [
        # GPG agent SSH key
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDI19L//A/gqi0gWWqJufNEc8euufccLd3abrMoLnv+ZhmYQEkPkyTwz322n8PSLmPQ8Ev2aAZ0+MgSt7Xfu7lp/Puw8SoQpHx54EFi4825Xr5D/L6YduwoHgwi7Rrk129eAavX3hLLS9R1vvM0fklD4s8ESAsdZP9QycI2SIIq/dg4gAu7UjHSwMtOSAa+LEFqfNdvp0KOmJqCZacxBuRRVyd4yZPhxzJQI4a0tKh8aPb2FKJBn/p5c5E2jyUPDs/KAdMj8GUofSOXD8/3+RXtdGjMZDzWIBHljhlDKe6NlCcVuQ9Yzc10T8z6+Bv3AGR9cd005cdlv7BLgBxppCZYhuWtNvmGR6L7qhUmUSn/28VWXS8AXEqH/Kew3UCY+Q9m7sD2S/ZD+HX99cuc2eLjjbLZgL/YY+t+3+arflU6gFuFcH3008rEo/tOTo5CsZpTR/E1jD4OeqCR+MElD9gYwJZ4yAORPiHq6+w5WtWhFVEp/YXc9r4obW9cmfVpgaTT5wC/0/MUU4i6KgcKXMgR9M0vYhDqCMMKXjDTfRZ63muLHWg3S/sw7i+HTp5GsM9cyvQ+eM2tyOyv6P/+gqdw5Fbhza+408W3juqWdnGFZfeAr50do+tXNz6XSRTrDRHtN4ACj2LX3Ja37nqenaTspFyeFa2o3JfzeRIfVaxbQw== cardno:FF7F00 gpg-yubikey"
        # Yubikey 5 FIDO2 SSH key
        "sk-ecdsa-sha2-nistp256@openssh.com AAAAInNrLWVjZHNhLXNoYTItbmlzdHAyNTZAb3BlbnNzaC5jb20AAAAIbmlzdHAyNTYAAABBBD07JbCo3daOE89ov9PV8dLImymQCR5vlXYgFmYK69qwalnXFVj3GUZzPiPeZZ1+CvOXGXW487G2KqpAmhC9akQAAAALdGVybWl1cy5jb20="
      ];
    })
  ];

  home-manager.users.varun = ./home.nix;
}
