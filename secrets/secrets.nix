let
  # set ssh public keys here for your system and user
  system-TheBeastNix = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINEBrmjWQbaMHbjWB3qz32MePNGfY9hbbTLkYcM2s0td root@TheBeastNix";
  varun-TheBeastNix = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPRQ8/dK+/nLfAhI7yTdrU8sDuSTDoUq3OUFq3vzI8nU varun@TheBeastNix";
  TheBeastNixKeys = [ system-TheBeastNix varun-TheBeastNix ];
in
{
  "varun-user-TheBeastNix.age".publicKeys = TheBeastNixKeys;
  "root-user-TheBeastNix.age".publicKeys = [ system-TheBeastNix ];
}
