-- ~/.config/nvim/init.lua

vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
  end

  vim.opt.rtp:prepend(lazypath)

  -- Cargar configuración de Lazy desde el archivo separado
  local lazy_config = require "configs.lazy"

  -- load plugins usando lazy
  require("lazy").setup(lazy_config)

  -- Cargar theme
  dofile(vim.g.base46_cache .. "defaults")
  dofile(vim.g.base46_cache .. "statusline")

  require "options"
  require "nvchad.autocmds"

  vim.schedule(function()
  require "mappings"
  end)

  -- Cargar LSP y su configuración
  require("lspconfig")  -- Asegura que nvim-lspconfig está cargado

  -- Cargar la configuración de LSP desde lspconfig.lua
  require("configs.lspconfig")  -- Esto debe cargar correctamente la configuración de los servidores LSP
