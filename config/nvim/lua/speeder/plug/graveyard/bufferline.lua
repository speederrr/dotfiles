return {
    "akinsho/bufferline.nvim",
    config = function()
        local bufferline = require("bufferline")
        bufferline.setup({
            options = {
                show_close_icon = false,
                show_buffer_icons = false,
            },
        })
    end,
}
