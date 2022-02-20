#!/usr/bin/env bash

root=$(git rev-parse --show-toplevel)

if git rev-parse --verify HEAD >/dev/null 2>&1
then
  against=HEAD
else
  # Initial commit: diff against an empty tree object
  against=$(${git}/bin/git hash-object -t tree /dev/null)
fi

diff="git diff-index --name-only --cached $against --diff-filter d"

nix_files=($($diff -- '*.nix'))

# Format staged nix files.
if [[ -n "${nix_files[@]}" ]]; then
  nixpkgs-fmt "${nix_files[@]}" \
  && git add "${nix_files[@]}"
fi

lua_files=($($diff -- '*.lua'))
stylua_config="$root/users/profiles/nvim/stylua.toml"

if [[ -n "${lua_files[@]}" ]]; then
  stylua -f "$stylua_config" "${lua_files[@]}" \
  && git add "${lua_files[@]}"
fi

all_files=($($diff))

# check editorconfig
editorconfig-checker -- "${all_files[@]}"
if [[ $? != '0' ]]; then
  printf "%b\n" \
    "\nCode is not aligned with .editorconfig" \
    "Review the output and commit your fixes" >&2
  exit 1
fi
