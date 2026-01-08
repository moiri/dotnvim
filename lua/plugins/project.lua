return {
    "DrKJeff16/project.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
    },
    config = function()
        -- require the module here, AFTER it’s loaded
        require("project").setup({
            scope_chdir = "win"
        })

        -- Telescope integration
        require("telescope").load_extension("projects")

        -- Keymap to open project picker
        vim.keymap.set("n", "<leader>pp", "<cmd>Telescope projects<CR>", { desc = "Pick a project" })
    end,
}
