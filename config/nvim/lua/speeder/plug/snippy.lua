return {
    "dcampos/nvim-snippy",
    dependencies = { "honza/vim-snippets" },
    config = function()
        local snippy = require("snippy")
        snippy.setup({
            mappings = {
                i = {
                    ["<C-j>"] = "expand_or_advance",
                    ["<C-k>"] = "previous",
                },
            },
        })
    end,
}
