{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.Foldable
import Data.Text
import NvFetcher hiding (Branch, Revision)

type Branch = Text

type Revision = Text

main :: IO ()
main = runNvFetcher packageSet

packageSet :: PackageSet ()
packageSet = do
    -- Vitals
    plugin ("wbthomason", "packer.nvim")
    plugin ("lewis6991", "impatient.nvim")
    plugin ("nvim-lua", "plenary.nvim")
    plugin ("nathom", "filetype.nvim")
    plugin ("dstein64", "vim-startuptime")

    -- Editor tooling
    plugin ("neovim", "nvim-lspconfig")
    plugin ("lukas-reineke", "lsp-format.nvim")
    plugin ("jose-elias-alvarez", "null-ls.nvim")
    plugin ("ray-x", "lsp_signature.nvim")
    plugin ("nanotee", "zoxide.vim")
    plugin' ("ms-jpq", "coq_nvim") (Just "coq")
    plugin' ("ms-jpq", "coq.artifacts") (Just "artifacts")
    plugin' ("ms-jpq", "coq.thirdparty") (Just "3p")

    -- Specialized windows
    plugin ("stevearc", "dressing.nvim")
    plugin ("kyazdani42", "nvim-tree.lua")
    plugin ("nvim-telescope", "telescope.nvim")
    plugin ("folke", "trouble.nvim")
    plugin ("voldikss", "vim-floaterm")
    plugin ("weilbith", "nvim-code-action-menu")

    -- Text editing assistance/annotations
    plugin ("tpope", "vim-sleuth")
    plugin ("tpope", "vim-surround")
    plugin ("tpope", "vim-repeat")
    plugin ("gpanders", "editorconfig.nvim")
    plugin ("numToStr", "Comment.nvim")
    plugin ("windwp", "nvim-autopairs")
    plugin ("Pocco81", "auto-save.nvim")
    plugin ("monaqa", "dial.nvim")
    plugin ("sQVe", "sort.nvim")
    plugin ("booperlv", "nvim-gomove")
    plugin ("ggandor", "leap.nvim")

    -- UNIX/Git commands
    plugin ("tpope", "vim-eunuch")
    plugin ("lewis6991", "gitsigns.nvim")
    plugin ("sindrets", "diffview.nvim")

    -- Appearance/Theming
    -- Treesitter queries will be synced with the nixpkgs treesitter input
    plugin ("nvim-treesitter", "nvim-treesitter-textobjects")
    plugin ("nvim-treesitter", "nvim-treesitter-refactor")
    plugin ("nvim-treesitter", "nvim-treesitter")
    plugin ("nvim-treesitter", "playground")
    plugin ("windwp", "nvim-ts-autotag")
    plugin ("JoosepAlviste", "nvim-ts-context-commentstring")
    plugin ("projekt0n", "github-nvim-theme")
    plugin ("nvim-lualine", "lualine.nvim")
    plugin ("akinsho", "bufferline.nvim")
    plugin ("tiagovla", "scope.nvim")
    plugin ("kyazdani42", "nvim-web-devicons")
    plugin ("projekt0n", "circles.nvim")
    plugin ("folke", "zen-mode.nvim")
    plugin ("folke", "twilight.nvim")
    plugin ("lukas-reineke", "indent-blankline.nvim")
    plugin ("kosayoda", "nvim-lightbulb")
    plugin ("norcalli", "nvim-colorizer.lua")
    plugin ("gen740", "SmoothCursor.nvim")

    -- Special Neovim sauce
    plugin ("andweeb", "presence.nvim")
    plugin ("alec-gibson", "nvim-tetris")
    plugin ("nvim-neorg", "neorg")
    plugin ("nvim-neorg", "neorg-telescope")
    plugin ("folke", "which-key.nvim")
    plugin ("ahmedkhalf", "project.nvim")
    plugin ("tamton-aquib", "duck.nvim")

    -- Debugging
    plugin ("mfussenegger", "nvim-dap")
    plugin ("rcarriga", "nvim-dap-ui")
    plugin ("theHamsta", "nvim-dap-virtual-text")
    plugin ("jbyuki", "one-small-step-for-vimkind")
    plugin ("leoluz", "nvim-dap-go")
    plugin ("mfussenegger", "nvim-dap-python")

    -- Language-specific plugins
    plugin ("folke", "neodev.nvim")
    plugin ("akinsho", "flutter-tools.nvim")
    plugin ("simrat39", "rust-tools.nvim")
    plugin ("lervag", "vimtex")
    plugin ("barreiroleo", "ltex_extra.nvim")

    -- Treesitter grammars
    grammar ("nvim-neorg", "tree-sitter-norg")
    grammar ("nvim-neorg", "tree-sitter-norg-meta")
    grammar ("nvim-neorg", "tree-sitter-norg-table")
    grammar ("vala-lang", "tree-sitter-vala")

    grammar ("tree-sitter", "tree-sitter-bash")
    grammar ("fwcd", "tree-sitter-kotlin")

{- | Define a Neovim plugin fetching the latest rev.

 This wraps single quotes around each name to
 make sure it is valid input for nvchecker.
-}
plugin :: (Text, Text) -> PackageSet ()
plugin (owner, repo) = plugin' (owner, repo) Nothing

-- | Define a Neovim plugin fetching the latest rev from a branch
plugin' :: (Text, Text) -> Maybe Branch -> PackageSet ()
plugin' (owner, repo) branch =
    define $
        fetchGitHub src (owner, repo)
  where
    p = package (mconcat ["'plugin-", repo, "'"])
    url = mconcat ["https://github.com/", owner, "/", repo]
    src = case branch of
        Nothing -> sourceGit p url
        Just b -> sourceGit' p (url, b)

-- | Define a Neovim plugin with a pinned commit
plugin'' :: (Text, Text) -> Revision -> PackageSet ()
plugin'' (owner, repo) rev =
    define $
        p
            `sourceManual` rev
            `fetchGitHub` (owner, repo)
  where
    p = package (mconcat ["'plugin-", repo, "'"])

-- | Define a Treesitter grammar.
grammar :: (Text, Text) -> PackageSet ()
grammar (owner, repo) =
    define $
        package repo
            `sourceGit` mconcat ["https://github.com/", owner, "/", repo]
            `fetchGitHub` (owner, repo)
