return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        require("telescope").load_extension("fzf")
        telescope.setup({
            defaults = {
                path_display = { "truncate " },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next,
                        ["<esc>"] = actions.close,
                    },
                },
            },
            pickers = {
                find_files = {
                    theme = "dropdown",
                    previewer = false,
                    height = 10,
                },
                oldfiles = {
                    theme = "dropdown",
                    previewer = false,
                },
                lsp_references = {
                    theme = "dropdown",
                    previewer = false,
                },
            },
            extentensions = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case",
                },
            },
        })
        vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files)
        vim.keymap.set("n", "<leader>fr", require("telescope.builtin").oldfiles)
        vim.keymap.set("n", "<leader>s", require("telescope.builtin").live_grep)
        vim.keymap.set("n", "<leader>b", require("telescope.builtin").buffers)
        vim.keymap.set("n", "<leader>h", require("telescope.builtin").help_tags)
        vim.keymap.set("n", "<leader>lr", require("telescope.builtin").lsp_references)
    end,
}
