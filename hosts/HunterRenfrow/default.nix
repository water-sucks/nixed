{ suites, ... }:

{
  imports = [
    ./configuration.nix
  ] ++ (with suites; base ++ graphical ++ dev);
}
