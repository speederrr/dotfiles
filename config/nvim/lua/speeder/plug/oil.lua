return {
    "stevearc/oil.nvim",
    config = function()
        local oil = require("oil")
        oil.setup({
            default_file_explorer = true,
            vim.keymap.set("n", "-", "<CMD>Oil<CR>"), -- { desc = "Open parent directory" }),
            win_options = {
                wrap = false,
                signcolumn = "yes",
            },
            view_options = {
                -- Show files and directories that start with "."
                show_hidden = true,
            },
        })
    end,
}
