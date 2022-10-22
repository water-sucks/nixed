{
  self,
  config,
  ...
}: {
  age.secrets.lastfm-rescrobbled-config = {
    file = "${self}/secrets/lastfm-rescrobbled-config.age";
    owner = builtins.toString config.users.users.varun.uid;
  };
}
