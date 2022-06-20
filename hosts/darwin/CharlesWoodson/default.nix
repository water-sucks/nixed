{ suites, profiles, ... }:

{
  imports = [
    ./configuration.nix
  ] ++ (with suites; base ++ brew)
  ++ (with profiles; [ users.varun ]);
}
