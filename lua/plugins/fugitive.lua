return {
    "tpope/vim-fugitive",
    lazy = false,
    dependencies = {
        "tpope/vim-rhubarb", -- adds GBrowse support for GitHub
    },
    keys = {
        { "<leader>gs", "<cmd>Git<cr>", desc = "Git status" },
        { "<leader>gd", "<cmd>Gdiffsplit<cr>", desc = "Git diff" },
        { "<leader>gb", "<cmd>Gblame<cr>", desc = "Git blame" },
        { "<leader>go", "<cmd>GBrowse<cr>", desc = "Open file in browser" },
    },
    config = function()
        vim.api.nvim_create_autocmd("BufReadPost", {
            pattern = "fugitive://*",
            callback = function()
                vim.opt_local.readonly = true       -- prevents accidental writes
                vim.opt_local.bufhidden = "delete"  -- rmoves buffers when abandoned
            end,
        })
    end,
}
