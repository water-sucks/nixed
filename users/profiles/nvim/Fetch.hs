{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.Foldable
import Data.Text
import NvFetcher

main :: IO ()
main = runNvFetcher packageSet

packageSet :: PackageSet ()
packageSet = do
  treesitterGrammar "nvim-neorg" "tree-sitter-norg"
  treesitterGrammar "nvim-neorg" "tree-sitter-norg-meta"
  treesitterGrammar "nvim-neorg" "tree-sitter-norg-table"
  treesitterGrammar "vala-lang" "tree-sitter-vala"

treesitterGrammar owner repo =
  define $
    package repo
      `sourceGit` mconcat ["https://github.com/", owner, "/", repo]
      `fetchGitHub` (owner, repo)
