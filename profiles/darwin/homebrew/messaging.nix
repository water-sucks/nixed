{
  self,
  config,
  pkgs,
  ...
}: {
  homebrew.casks = [
    "betterdiscord-installer"
    "discord"
    "element"
    "signal"
    "skype"
    "slack"
    "whatsapp"
    "zoom"
  ];
}
