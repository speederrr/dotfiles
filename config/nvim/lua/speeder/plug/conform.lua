return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")
        conform.setup({
            formatters_by_ft = {
                python = { "ruff_format", "ruff_fix" },
                java = { "clang_format" },
                rust = { "rustfmt" },
                lua = { "stylua" },
                ["_"] = { "trim_whitespace" },
            },
            format_on_save = {
                lsp_fallback = true,
                timeout_ms = 500,
            },
        })
    end,
}
