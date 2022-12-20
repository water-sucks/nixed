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
        package "fast-syntax-highlighting"
            `fromGitHubTag` ("zdharma-continuum", "fast-syntax-highlighting", id)

    define $
        package "zsh-autosuggestions"
            `fromGitHubTag` ("zsh-users", "zsh-autosuggestions", id)
