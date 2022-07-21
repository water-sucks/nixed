let
  system-TheBeastNix = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINEBrmjWQbaMHbjWB3qz32MePNGfY9hbbTLkYcM2s0td root@TheBeastNix";
  varun-TheBeastNix = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPRQ8/dK+/nLfAhI7yTdrU8sDuSTDoUq3OUFq3vzI8nU varun@TheBeastNix";
  TheBeastNixKeys = [ system-TheBeastNix varun-TheBeastNix ];

  system-HunterRenfrow = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBhZpIZCXJn6B1I5rixjK0LTlSjMohcYo4v0fxEZjedx root@HunterRenfrow";
  varun-HunterRenfrow = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILSq96xhwCGipQD19sVnrhHMIIqAOGq0jOYdspl/3KdC varun@HunterRenfrow";
  HunterRenfrowKeys = [ system-HunterRenfrow varun-HunterRenfrow ];

  allKeys = TheBeastNixKeys ++ HunterRenfrowKeys;
in
{
  "varun-user-TheBeastNix.age".publicKeys = TheBeastNixKeys;
  "root-user-TheBeastNix.age".publicKeys = [ system-TheBeastNix ];

  "varun-user-HunterRenfrow.age".publicKeys = HunterRenfrowKeys;
  "root-user-HunterRenfrow.age".publicKeys = [ system-HunterRenfrow ];

  "lastfm-rescrobbled-config.age".publicKeys = allKeys;
}
