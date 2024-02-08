return {
    "willothy/nvim-cokeline",
    config = function()
        local get_hex = require("cokeline.hlgroups").get_hl_attr
        local cokeline = require("cokeline")
        cokeline.setup({
            show_if_buffers_are_at_least = 1,
            default_hl = {
                fg = function(buffer)
                    return buffer.is_focused and get_hex("Normal", "fg")
                        or get_hex("Comment", "fg")
                end,
                bg = function(buffer)
                    return buffer.is_focused and get_hex("ColorColumn", "bg")
                        or get_hex("StatusLine", "bg")
                end,
            },
            fill_hl = "StatusLine",
            components = {
                -- {
                --     text = '｜',
                -- },
                {
                    text = "|",
                },
                {
                    text = function(buffer)
                        return buffer.devicon.icon .. " "
                    end,
                    fg = function(buffer)
                        return buffer.devicon.color
                    end,
                },
                {
                    text = function(buffer)
                        return buffer.index .. ": "
                    end,
                },
                {
                    text = function(buffer)
                        return buffer.unique_prefix
                    end,
                    fg = get_hex("Comment", "fg"),
                    italic = true,
                },
                {
                    text = function(buffer)
                        return buffer.filename .. " "
                    end,
                    bold = function(buffer)
                        return buffer.is_focused
                    end,
                },
                {
                    text = " ",
                },
            },
            sidebar = {
                filetype = { "NvimTree" },
                -- filetype = { "NvimTree", "neo-tree", "SidebarNvim" },
                components = {},
            },
        })
    end,
}
