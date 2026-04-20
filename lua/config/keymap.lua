-- Harpoon
vim.keymap.set("n", "<leader>h", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = "harpoonMenu" })

vim.keymap.set("n", "<leader>a", ":lua require('harpoon.mark').add_file()<CR>", { desc = "harpoon Add file" })

vim.keymap.set("n", "<leader>1", ":lua require('harpoon.ui').nav_file(1)<CR>", { desc = "harpoon navigate to file" })
vim.keymap.set("n", "<leader>2", ":lua require('harpoon.ui').nav_file(2)<CR>", { desc = "harpoon navigate to file" })
vim.keymap.set("n", "<leader>3", ":lua require('harpoon.ui').nav_file(3)<CR>", { desc = "harpoon navigate to file" })
vim.keymap.set("n", "<leader>4", ":lua require('harpoon.ui').nav_file(4)<CR>", { desc = "harpoon navigate to file" })
vim.keymap.set("n", "<leader>5", ":lua require('harpoon.ui').nav_file(5)<CR>", { desc = "harpoon navigate to file" })
vim.keymap.set("n", "<leader>6", ":lua require('harpoon.ui').nav_file(6)<CR>", { desc = "harpoon navigate to file" })
vim.keymap.set("n", "<leader>7", ":lua require('harpoon.ui').nav_file(7)<CR>", { desc = "harpoon navigate to file" })
vim.keymap.set("n", "<leader>8", ":lua require('harpoon.ui').nav_file(8)<CR>", { desc = "harpoon navigate to file" })
vim.keymap.set("n", "<leader>9", ":lua require('harpoon.ui').nav_file(9)<CR>", { desc = "harpoon navigate to file" })


-- Telescope
vim.keymap.set('n', '<leader>ff', ":Telescope find_files <CR>", { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', ":Telescope live_grep <CR>", { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', ":Telescope buffers <CR>", { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', ":Telescope help_tags <cr>", { desc = 'telescope help tags' })
vim.keymap.set('n', '<leader>fz', ":Telescope current_buffer_fuzzy_find previewer=false layout_config={height=20,width=0.4}<CR>", { desc = 'Fuzzy search small' })

-- nvim tree

vim.keymap.set('n', '<leader>e', ":NvimTreeToggle <cr>", { desc = 'telescope help tags' })


-- Terminal mode exit
vim.cmd [[ tnoremap <Esc> <C-\><C-n> ]]

vim.keymap.set("n", "<leader>t", [[:ToggleTerm size=15 direction=horizontal name=term<cr>]], { desc = "Toggle terminal 1" })

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "go to deff" })
vim.keymap.set('n', '<leader>q', vim.diagnostic.open_float)
