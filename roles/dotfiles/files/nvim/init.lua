require("omar")

-- goes back to netrw explorer
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

-- when in visual mode J and K move highlighted text down and up respectively
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep search terms in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- yanking to the systems clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y", { desc = "Copy to clipboard" })

-- replaces the word under the cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- quits vim
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- splitting screens
vim.keymap.set("n", "<leader>-", ":sp<CR>", { desc = "Horizontal Split" })
vim.keymap.set("n", "<leader>|", ":vs<CR>", { desc = "Vertical Split" })
