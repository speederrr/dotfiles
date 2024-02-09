return {
    {
        "fenetikm/falcon",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme falcon]])
        end,
    },

    {
        "shaunsingh/nord.nvim",
        -- lazy = false,
        -- priority = 1000,
        -- config = function()
        --     -- vim.g.nord_italic = false,
        --     vim.cmd([[colorscheme nord]])
        -- end,
    },
}
