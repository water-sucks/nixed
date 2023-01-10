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
        package "river"
            `sourceGit` "https://github.com/riverwm/river"
            `fetchGitHub'` ("riverwm", "river", fetchSubmodules .~ True)

    define $
        package "waybar-mpris"
            `sourceGit` "https://github.com/b10n/waybar-mpris"
            `fetchGitHub` ("b10n", "waybar-mpris")

    define $
        package "wob"
            `fromGitHub` ("francma", "wob")

    define $
        package "picom"
            `sourceGit` "https://github.com/ibhagwan/picom"
            `fetchGitHub` ("ibhagwan", "picom")

    define $
        package "rescrobbled"
            `fromGitHub` ("InputUsername", "rescrobbled")
            `hasCargoLocks` ["Cargo.lock"]

    define $
        package "filen-desktop"
            `sourceManual` "2.0.11"
            `fetchUrl` (\(Version v) -> "https://cdn.filen.io/desktop/release/" <> v <> "/filen_x86_64.AppImage")

    define $
        package "airtame"
            `sourceAur` "airtame-application"
            `fetchUrl` (\(Version v) -> "https://downloads.airtame.com/app/latest/linux/Airtame-" <> v <> ".deb")

    define $
        package "polybar"
            `sourceGit` "https://github.com/polybar/polybar"
            `fetchGitHub'` ("polybar", "polybar", fetchSubmodules .~ True)

    define $
        package "get-appname"
            `sourceGit` "https://github.com/water-sucks/get-appname"
            `fetchGitHub` ("water-sucks", "get-appname")
