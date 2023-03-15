let
  system-DerekCarr = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILAfWR99IVnz2rMl5GC5RLxBLb3d+mrT6/woVYS1JAco root@DerekCarr";
  varun-DerekCarr = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIG8s+et9SplfHpcjT0+divFZPEjHpmCJ6tIQBYwlBbfB varun@DerekCarr";
  DerekCarrKeys = [system-DerekCarr varun-DerekCarr];

  system-HunterRenfrow = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDWMhxMTH1kbXXMwvSg1dxEgFb+XFC7Mkt1Z+FWKRgMH root@HunterRenfrow";
  varun-HunterRenfrow = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIP6BkNDJ79vuLySy15ZO72ZYjaalVQN8EHuEdlZss0t5 varun@HunterRenfrow";
  HunterRenfrowKeys = [system-HunterRenfrow varun-HunterRenfrow];

  allKeys = DerekCarrKeys ++ HunterRenfrowKeys;
in {
  "varun-user-DerekCarr.age".publicKeys = DerekCarrKeys;
  "root-user-DerekCarr.age".publicKeys = [system-DerekCarr];

  "varun-user-HunterRenfrow.age".publicKeys = HunterRenfrowKeys;
  "root-user-HunterRenfrow.age".publicKeys = [system-HunterRenfrow];

  "lastfm-rescrobbled-config.age".publicKeys = allKeys;
}
