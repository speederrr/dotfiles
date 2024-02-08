return {
    "mbbill/undotree",
    config = function()
        vim.g.undotree_HighlightChangedWithSign = 0
        vim.g.undotree_WindowLayout = 4
        vim.g.undotree_SetFocusWhenToggle = 1
        vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    end,
}
