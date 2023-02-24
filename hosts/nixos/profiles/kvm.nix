{pkgs, ...}: {
  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      runAsRoot = true;
      verbatimConfig = ''
        remember_owner=0
        namespaces=[]
      '';
    };
  };

  environment.systemPackages = with pkgs; [
    virt-manager
  ];
}
