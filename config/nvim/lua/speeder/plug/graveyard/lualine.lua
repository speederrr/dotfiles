return {
    "nvim-lualine/lualine.nvim",
    config = function()
        local lualine = require("lualine")
        lualine.setup({
            options = {
                icons_enabled = false,
                theme = "auto",
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch", "diff", "diagnostics" },
                lualine_c = { "filename" },
                lualine_x = { "filetype" },
                lualine_y = { "progress" },
                lualine_z = { "location" },
            },
            tabline = {
                lualine_a = { "buffers" },
                lualine_b = { "branch" },
                lualine_c = { "filename" },
                lualine_x = {},
                lualine_y = {},
                lualine_z = { "tabs" },
            },
        })
    end,
}
