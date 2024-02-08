return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "VeryLazy",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "python", "cpp", "c", "rust", "bash", "lua", "vim", "java" },
            auto_install = true,
            sync_install = false,
            ignore_install = {},
            modules = {},
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
