{ suites, profiles, ... }:

{
  imports = [
    ./configuration.nix
  ] ++ (with suites; base ++ graphical ++ virt ++ dev)
  ++ (with profiles; [ users.varun ]);
}
