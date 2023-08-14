rebuild-cmd := if os() == "linux" {
  "sudo nixos-rebuild"
} else if os() == "macos" {
  "darwin-rebuild"
} else {
  error("unsupported system; manually use nix to build instead")
}

default:
  @just --list --color=always | sed "/default/d"

build *args: (system "build" args)

switch *args: (system "switch" args)

system subcommand *args:
  {{rebuild-cmd}} {{subcommand}} {{args}} --flake .#

lint:
  @ LEFTHOOK_EXCLUDE=format
  @ lefthook run pre-commit

format:
  treefmt .
