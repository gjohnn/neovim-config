-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("plugins.dashboard")
-- Configuración para vim-lens
vim.g.lens_enabled = 1
-- Activa el fondo transparente en Neovim
vim.cmd("hi Normal guibg=NONE ctermbg=NONE") -- Para que el fondo sea transparente en todas las ventanas
vim.cmd("hi NonText guibg=NONE ctermbg=NONE") -- Opcional, para quitar fondo en caracteres no visibles
vim.cmd("hi VertSplit guibg=NONE ctermbg=NONE") -- Para las líneas divisorias
vim.cmd("hi StatusLine guibg=NONE ctermbg=NONE") -- Para la barra de estado
