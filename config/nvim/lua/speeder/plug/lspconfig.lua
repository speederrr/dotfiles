return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        { "folke/neodev.nvim", opts = {} },
    },
    config = function()
        local lspconfig = require("lspconfig")

        local opts = { noremap = true, silent = true }
        vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

        local on_attach = function(client, bufnr)
            local bufopts = { noremap = true, silent = true, buffer = bufnr }
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
            vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, bufopts)
            vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
            vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, bufopts)
        end

        vim.diagnostic.config({
            -- virtual_text = false,
            underline = false,
            float = {
                -- border = "single",
                format = function(diagnostic)
                    return string.format(
                        "[%s] %s",
                        diagnostic.source,
                        diagnostic.message
                    )
                end,
            },
        })

        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        lspconfig["pyright"].setup({
            on_attach = on_attach,
            capabilities = capabilities,
            python = {
                analysis = {
                    autoImportCompletions = true,
                    diagnosticMode = "workspace",
                    typeCheckingMode = "basic",
                },
            },
        })

        lspconfig["ruff_lsp"].setup({
            on_attach = on_attach,
            capabilities = capabilities,
            init_options = {
                settings = {
                    -- Any extra CLI arguments for `ruff` go here.
                    args = {},
                },
            },
        })

        lspconfig["clangd"].setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })

        lspconfig["rust_analyzer"].setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })

        lspconfig["lua_ls"].setup({
            on_attach = on_attach,
            capabilities = capabilities,
            settings = {
                Lua = {
                    -- fuck off
                    telemetry = { enable = false },
                },
            },
        })

        lspconfig["jdtls"].setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })
    end,
}
