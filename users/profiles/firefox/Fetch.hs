{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.Foldable
import Data.Text
import NvFetcher

main :: IO ()
main = runNvFetcher packageSet

packageSet :: PackageSet ()
packageSet = do
  define $
    package "simplefox-theme"
      `sourceGit` "https://github.com/migueravila/SimpleFox"
      `fetchGitHub` ("migueravila", "SimpleFox")

  define $
    package "i2p-profile"
      `sourceGit` "https://github.com/i2p/i2p.firefox"
      `fetchGitHub` ("i2p", "i2p.firefox")
