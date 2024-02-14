return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-nvim-lsp",
        "dcampos/cmp-snippy",
    },
    config = function()
        local cmp = require("cmp")
        cmp.setup({
            snippet = {
                expand = function(args)
                    require("snippy").expand_snippet(args.body)
                end,
            },
            window = {
                documentation = cmp.config.disable,
                -- completion = cmp.config.window.bordered(),
            },
            completion = {
                keyword_length = 2,
            },
            mapping = {
                ["<C-j>"] = cmp.mapping.select_next_item({
                    behavior = cmp.SelectBehavior.Select,
                }),
                ["<C-k>"] = cmp.mapping.select_prev_item({
                    behavior = cmp.SelectBehavior.Select,
                }),
                ["<Tab>"] = cmp.mapping.confirm({ select = true }),
            },
            sources = {
                { name = "nvim_lsp" },
                { name = "snippy" },
                { name = "buffer" },
                { name = "path" },
            },
            performance = {
                max_view_entries = 6,
            },
        })
    end,
}
