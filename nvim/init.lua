local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
        vim.fn.system({
                "git",
                "clone",
                "--filter=blob:none",
                "https://github.com/folke/lazy.nvim.git",
                "--branch=stable",
                lazypath,
        })
end
vim.opt.rtp:prepend(lazypath)
require("preferences")
require("lazy").setup({
        "nvim-treesitter/nvim-treesitter",
        {
                "nvim-lualine/lualine.nvim",
                dependencies = { 'nvim-tree/nvim-web-devicons' },
        },
        {
                "rebelot/kanagawa.nvim",
                config = function()
                        vim.cmd("colorscheme kanagawa")
                end
        },
        "lewis6991/gitsigns.nvim",
        {
                "williamboman/mason.nvim",
                dependencies = {
                        "williamboman/mason-lspconfig.nvim",
                        "neovim/nvim-lspconfig"
                },

        },
        {
                "christoomey/vim-tmux-navigator",
                cmd = {
                        "TmuxNavigateLeft",
                        "TmuxNavigateDown",
                        "TmuxNavigateUp",
                        "TmuxNavigateRight",
                        "TmuxNavigatePrevious",
                },
                keys = {
                        { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
                        { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
                        { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
                        { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
                        { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
                },
                {
                        "iamcco/markdown-preview.nvim",
                        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
                        ft = { "markdown" },
                        build = function() vim.fn["mkdp#util#install"]() end,
                }
}

})
