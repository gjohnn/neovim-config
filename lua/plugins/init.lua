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
    require("mason-lspconfig").setup {
      ensure_installed = {
        "pyright",                -- Python
        "jdtls",                  -- Java
        "intelephense",           -- PHP
      },
    }
    end,
  },
  {
    "Maan2003/lsp_lines.nvim",
    config = function()
    require("lsp_lines").setup()

    -- Configurar cómo se muestran los errores
    vim.diagnostic.config({
      virtual_text = true,  -- Activa los errores al lado del código
      virtual_text = {
        prefix = "",  -- Puedes personalizar el ícono que se usa para los errores
        spacing = 4,  -- Espacio entre el error y el código
      },
      virtual_lines = true,  -- Activa errores en línea si prefieres la opción de líneas virtuales
      update_in_insert = true,  -- Muestra los errores también en el modo de inserción
    })

    -- Atajo para alternar entre errores en línea y flotantes
    vim.keymap.set("n", "<Leader>e", function()
    local current_config = vim.diagnostic.config()
    vim.diagnostic.config({
      virtual_lines = not current_config.virtual_lines, -- Alterna entre errores en línea
      virtual_text = not current_config.virtual_text,   -- Alterna entre texto flotante y en línea
    })
    end, { desc = "Alternar Error Lens" })
    end,
  },
}
