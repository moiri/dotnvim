return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
    config = function()
        require("lualine").setup({
            options = {
                theme = "auto",      -- or your preferred theme
                icons_enabled = true, -- <--- enable Nerd Font icons here
            },
            sections = {
                -- left side
                lualine_a = { "mode" },
                lualine_b = { "branch" },
                -- middle: show filename with relative path
                lualine_c = {
                    {
                        "filename",
                        path = 4,
                    }
                },
                -- right side
                lualine_x = { "encoding", "fileformat", "filetype" },
                lualine_y = { "progress" },
                lualine_z = { "location" },
            },
            -- inactive windows (optional)
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { { "filename", path = 1 } },
                lualine_x = { "location" },
                lualine_y = {},
                lualine_z = {}
            },
        })
    end
}
