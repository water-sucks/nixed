{pkgs, ...}: {
  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      swtpm.enable = true;
      runAsRoot = true;
      vhostUserPackages = [
        pkgs.spice
        pkgs.spice-gtk
        pkgs.spice-protocol
        pkgs.virt-viewer
        pkgs.virtio-win
        pkgs.virtiofsd
        pkgs.win-spice
      ];
      verbatimConfig = ''
        remember_owner=0
        namespaces=[]
      '';
    };
  };

  environment.systemPackages = [
    pkgs.virglrenderer
    pkgs.spice
    pkgs.spice-gtk
    pkgs.spice-protocol
    pkgs.virt-viewer
    pkgs.virtio-win
    pkgs.virtiofsd
    pkgs.spice-vdagent
    pkgs.spice-autorandr
    pkgs.virt-manager
  ];
}
