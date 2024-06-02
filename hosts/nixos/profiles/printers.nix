{pkgs, ...}: {
  services.printing = {
    enable = true;
    listenAddresses = ["*:631"];
    allowFrom = ["all"];
    browsing = true;
    defaultShared = true;
    browsedConf = ''
      BrowseDNSSDSubTypes _cups,_print
      BrowseLocalProtocols all
      BrowseRemoteProtocols all
      CreateIPPPrinterQueues All
      BrowseProtocols all
    '';
  };

  environment.systemPackages = with pkgs; [
    system-config-printer
  ];
}
