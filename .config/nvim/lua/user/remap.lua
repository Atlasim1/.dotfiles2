vim.g.mapleader = ","

-- File Explorer
vim.keymap.set("n","<leader>ev", vim.cmd.NvimTreeToggle)
vim.keymap.set("n","<leader>ef", vim.cmd.NvimTreeFocus)

-- Move Selected Text
vim.keymap.set("v","J", ":m '>+1<CR>gv=gv") 
vim.keymap.set("v","K", ":m '<-2<CR>gv=gv")
 
-- Move line below to current line
vim.keymap.set("n", "J", "mzJ`z")

-- Make C-u and C-d stay cursor in middle of page
-- Travel half page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Make search results appear in middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Make ,p paste over selection without changing clipboard contents
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Ability to yank into system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Disable Q for exit
vim.keymap.set("n", "Q", "<nop>")

-- Replace Highlighted Word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Add or Remove Lua Comments
--local function commentremap()
--    local currentline = vim.api.nvim_get_current_line()
--    --print(currentline)
--    print(string.sub(currentline,1 ,2 ))
--    if string.sub(currentline, 1, 2) == "--" then
--        return "0<del><del><del>"
--    else
--        return "0i--<esc>"
--    end
--end
--vim.keymap.set("n", "--", commentremap())
