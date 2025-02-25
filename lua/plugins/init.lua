return {
  {
    "williamboman/mason.nvim",
    config = function()
    require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
    config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "pyright",       -- Python
        "jdtls",         -- Java
        "intelephense",  -- PHP
        "ts_ls",         -- JavaScript/TypeScript (nuevo nombre)
      },
    })

    -- TypeScript with ts_ls
    local lspconfig = require("lspconfig")
    lspconfig.ts_ls.setup({
      cmd = { "typescript-language-server", "--stdio" },
      filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact" },
      root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
    })
    end,
  },
  {
    "Maan2003/lsp_lines.nvim",
    config = function()
    require("lsp_lines").setup()
    vim.diagnostic.config({
      virtual_text = true,
      virtual_text = { prefix = "", spacing = 4 },
      virtual_lines = true,
      update_in_insert = true,
    })
    vim.keymap.set("n", "<Leader>e", function()
    local current_config = vim.diagnostic.config()
    vim.diagnostic.config({
      virtual_lines = not current_config.virtual_lines,
      virtual_text = not current_config.virtual_text,
    })
    end, { desc = "Alternar Error Lens" })
    end,
  },
}
