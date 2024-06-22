let
  system-CharlesWoodson = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILAfWR99IVnz2rMl5GC5RLxBLb3d+mrT6/woVYS1JAco root@CharlesWoodson";
  varun-CharlesWoodson = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIG8s+et9SplfHpcjT0+divFZPEjHpmCJ6tIQBYwlBbfB varun@CharlesWoodson";
  CharlesWoodsonKeys = [system-CharlesWoodson varun-CharlesWoodson];

  system-SebastianJanikowski = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEI4MxuN1oTp93Q6P4cl7Lm2XfradkQmqUOYRnrN2Z9Z root@SebastianJanikowski";
  varun-SebastianJanikowski = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIP9SxX2gAUoWL9bkIYEoC5VVAw48+tqlbrWrL6+o6v5p varun@SebastianJanikowski";
  SebastianJanikowskiKeys = [system-SebastianJanikowski varun-SebastianJanikowski];
in {
  "varun-user-CharlesWoodson.age".publicKeys = CharlesWoodsonKeys;
  "root-user-CharlesWoodson.age".publicKeys = [system-CharlesWoodson];

  "varun-user-SebastianJanikowski.age".publicKeys = SebastianJanikowskiKeys;
  "root-user-SebastianJanikowski.age".publicKeys = [system-SebastianJanikowski];
}
