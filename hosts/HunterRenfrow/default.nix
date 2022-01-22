{ suites, ... }:
{
  imports = [
    ./configuration.nix
  ] ++ suites.base ++ suites.graphical;
}
