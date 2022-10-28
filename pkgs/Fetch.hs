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
        package "wlroots"
            `sourceGit'` ("https://gitlab.freedesktop.org/ifreund/wlroots", "session-lock-0.15")
            `fetchGit` "https://gitlab.freedesktop.org/ifreund/wlroots"

    define $
        package "river"
            `sourceGit'` ("https://github.com/riverwm/river", "session-lock")
            `fetchGitHub'` ("riverwm", "river", fetchSubmodules .~ True)

    define $
        package "waylock"
            `fromGitHubTag'` ("ifreund", "waylock", includeRegex ?~ ".*", fetchSubmodules .~ True)

    define $
        package "waybar"
            `sourceGit` "https://github.com/Alexays/waybar"
            `fetchGitHub` ("Alexays", "waybar")

    define $
        package "lswt"
            `sourceGit` "https://git.sr.ht/~leon_plickat/lswt"
            `fetchGit` "https://git.sr.ht/~leon_plickat/lswt"

    define $
        package "waybar-mpris"
            `sourceGit` "https://github.com/b10n/waybar-mpris"
            `fetchGitHub` ("b10n", "waybar-mpris")

    define $
        package "wob"
            `sourceGit` "https://github.com/francma/wob"
            `fetchGitHub` ("francma", "wob")

    define $
        package "picom"
            `sourceGit` "https://github.com/ibhagwan/picom"
            `fetchGitHub` ("ibhagwan", "picom")

    define $
        package "rescrobbled"
            `fromGitHub` ("InputUsername", "rescrobbled")
            `hasCargoLocks` ["Cargo.lock"]

    define $
        package "catch2"
            `fromGitHub` ("catchorg", "Catch2")

    define $
        package "filen-desktop"
            `sourceManual` "2.0.4"
            `fetchUrl` (\(Version v) -> "https://cdn.filen.io/desktop/release/" <> v <> "/filen_x86_64.AppImage")

    define $
        package "airtame"
            `sourceAur` "airtame-application"
            `fetchUrl` (\(Version v) -> "https://downloads.airtame.com/app/latest/linux/Airtame-" <> v <> ".deb")
