require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Buscar archivos con Telescope
map("n", "<leader>f", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })

-- Duplicar línea actual en modo insert con Ctrl+D
map("i", "<C-d>", "<Esc>yypA", { noremap = true, silent = true })

-- Guardar archivo con Ctrl+S en normal, insert y visual
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr>", { noremap = true, silent = true })

-- Movimiento en modo insert con Alt + h/j/k/l
map("i", "<A-h>", "<Left>", { noremap = true, silent = true })
map("i", "<A-l>", "<Right>", { noremap = true, silent = true })
map("i", "<A-j>", "<Down>", { noremap = true, silent = true })
map("i", "<A-k>", "<Up>", { noremap = true, silent = true })
