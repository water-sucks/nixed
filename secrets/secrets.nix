let
  system-DerekCarr = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILAfWR99IVnz2rMl5GC5RLxBLb3d+mrT6/woVYS1JAco root@DerekCarr";
  varun-DerekCarr = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIG8s+et9SplfHpcjT0+divFZPEjHpmCJ6tIQBYwlBbfB varun@DerekCarr";
  DerekCarrKeys = [system-DerekCarr varun-DerekCarr];

  system-HunterRenfrow = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEI4MxuN1oTp93Q6P4cl7Lm2XfradkQmqUOYRnrN2Z9Z root@HunterRenfrow";
  varun-HunterRenfrow = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIP9SxX2gAUoWL9bkIYEoC5VVAw48+tqlbrWrL6+o6v5p varun@HunterRenfrow";
  HunterRenfrowKeys = [system-HunterRenfrow varun-HunterRenfrow];
in {
  "varun-user-DerekCarr.age".publicKeys = DerekCarrKeys;
  "root-user-DerekCarr.age".publicKeys = [system-DerekCarr];

  "varun-user-HunterRenfrow.age".publicKeys = HunterRenfrowKeys;
  "root-user-HunterRenfrow.age".publicKeys = [system-HunterRenfrow];
}
