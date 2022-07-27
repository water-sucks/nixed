{
  suites,
  profiles,
  ...
}: {
  imports =
    [
      ./configuration.nix
    ]
    ++ (with suites; base ++ graphical ++ dev)
    ++ (with profiles; [users.varun]);
}
