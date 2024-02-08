return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
            [[                              __          ]],
            [[    _________  ___  ___  ____/ /__  _____ ]],
            [[   / ___/ __ \/ _ \/ _ \/ __  / _ \/ ___/ ]],
            [[  (__  ) /_/ /  __/  __/ /_/ /  __/ /     ]],
            [[ /____/ .___/\___/\___/\__,_/\___/_/      ]],
            [[     /_/                                  ]],
        }

        dashboard.section.buttons.val = {
            dashboard.button("f", "Find files", ":Telescope find_files<CR>"),
            dashboard.button("r", "Recent files", ":Telescope oldfiles<CR>"),
            dashboard.button("q", "Quit", ":qa<CR>"),
        }

        dashboard.section.buttons.opts = { spacing = 0 }

        alpha.setup(dashboard.opts)
        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
}
