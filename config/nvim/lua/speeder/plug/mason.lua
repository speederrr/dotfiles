return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        mason.setup({
            ui = {
                border = "single",
                icons = {
                    package_uninstalled = "!",
                    package_installed = "+",
                    package_pending = "->",
                },
            },
        })

        mason_lspconfig.setup({
            ensure_installed = {
                "pyright",
                "ruff_lsp",
                "clangd",
                "rust_analyzer",
                "jdtls",
                "lua_ls",
            },
            automatic_installation = true,
        })
    end,
}
