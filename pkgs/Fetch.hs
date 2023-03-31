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
        package "waybar-mpris"
            `sourceGit` "https://github.com/b10n/waybar-mpris"
            `fetchGitHub` ("b10n", "waybar-mpris")

    define $
        package "wob"
            `fromGitHub` ("francma", "wob")

    define $
        package "rescrobbled"
            `sourceManual` "v0.6.2"
            `fetchGitHub` ("InputUsername", "rescrobbled")
            `hasCargoLocks` ["Cargo.lock"]

    define $
        package "filen-desktop"
            `sourceManual` "2.0.14"
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

    define $
        package "nsmb-mvl"
            `sourceGitHub` ("ipodtouch0218", "NSMB-MarioVsLuigi")
            `fetchUrl` (\(Version v) -> "https://github.com/ipodtouch0218/NSMB-MarioVsLuigi/releases/download/" <> v <> "/MarioVsLuigi-Linux-" <> v <> ".zip")
