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

-- Movimiento en modo insert con Ctrl+h y Ctrl+l para moverse entre palabras
map("i", "<C-h>", "<C-o>b", { noremap = true, silent = true })  -- Moverse a la palabra anterior
map("i", "<C-l>", "<C-o>w", { noremap = true, silent = true })  -- Moverse a la siguiente palabra

-- Borrar palabra completa con Ctrl+Backspace en modo insert
map("i", "<C-BS>", "<C-w>", { noremap = true, silent = true })
