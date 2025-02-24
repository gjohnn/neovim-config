-- nvim/lua/lspconfig.lua
local lspconfig = require("lspconfig")

-- Configuración para Python (usando pyright)
lspconfig.pyright.setup({
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",  -- Ajusta el nivel de verificación de tipos
      },
    },
  },
})

-- Configuración para Java (usando jdtls)
lspconfig.jdtls.setup({
  cmd = { "jdtls" },  -- Comando para iniciar el servidor JDTLS
  root_dir = lspconfig.util.root_pattern("pom.xml", ".git"),  -- Directorio raíz para proyectos Java
})

-- Configuración para PHP (usando intelephense)
lspconfig.intelephense.setup({
  settings = {
    intelephense = {
      environment = {
        php = {
          version = "7.4",  -- Especifica la versión de PHP si es necesario
        },
      },
    },
  },
})
