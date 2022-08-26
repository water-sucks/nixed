let
  system-DerekCarr = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJTIu+WwsbKCzupRCMVUY/bIpsZUNo2M0uhXutzyHeOb root@DerekCarr";
  varun-DerekCarr = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIG8s+et9SplfHpcjT0+divFZPEjHpmCJ6tIQBYwlBbfB varun@DerekCarr";
  DerekCarrKeys = [system-DerekCarr varun-DerekCarr];

  system-HunterRenfrow = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBhZpIZCXJn6B1I5rixjK0LTlSjMohcYo4v0fxEZjedx root@HunterRenfrow";
  varun-HunterRenfrow = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILSq96xhwCGipQD19sVnrhHMIIqAOGq0jOYdspl/3KdC varun@HunterRenfrow";
  HunterRenfrowKeys = [system-HunterRenfrow varun-HunterRenfrow];

  allKeys = DerekCarrKeys ++ HunterRenfrowKeys;
in {
  "varun-user-DerekCarr.age".publicKeys = DerekCarrKeys;
  "root-user-DerekCarr.age".publicKeys = [system-DerekCarr];

  "varun-user-HunterRenfrow.age".publicKeys = HunterRenfrowKeys;
  "root-user-HunterRenfrow.age".publicKeys = [system-HunterRenfrow];

  "lastfm-rescrobbled-config.age".publicKeys = allKeys;
}
