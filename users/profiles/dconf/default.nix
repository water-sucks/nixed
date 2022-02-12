{ config, self, pkgs, ... }:

{
  dconf.settings = {
    # God, I fucking hate these system sounds.
    # They're so grating.
    "org/gnome/desktop/sound" = {
      allow-volume-above-100-percent = true;
      event-sounds = false;
      input-feedback-sound = false;
      input-feedback-sounds = false;
      theme-name = "";
    };
  };
}
