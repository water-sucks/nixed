{ self, config, pkgs, ... }:

{
  virtualisation.libvirtd.enable = true;

  environment.systemPackages = with pkgs; [
    virt-manager
  ];
}
