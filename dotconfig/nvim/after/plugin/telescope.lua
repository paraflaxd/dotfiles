local telescope = require("telescope")

telescope.setup({
    pickers = {
        find_files = {
            -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
            find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
        },
    },
})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, {}) 
vim.keymap.set("n", "<C-p>", builtin.git_files, {}) 
vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})
