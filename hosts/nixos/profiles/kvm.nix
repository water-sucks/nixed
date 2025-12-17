{pkgs, ...}: {
  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      swtpm.enable = true;
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
