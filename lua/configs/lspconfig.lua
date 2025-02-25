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
          version = "8.3",  -- Especifica la versión de PHP si es necesario
        },
      },
    },
  },
})

-- Configuración para TypeScript, JavaScript y Astro (usando ts_ls)
lspconfig.ts_ls.setup({
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "astro" },  -- 🔥 Agregamos Astro aquí
  root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
                      settings = {
                        typescript = {
                          inlayHints = {
                            includeInlayParameterNameHints = "all",
                            includeInlayEnumMemberValueHints = true,
                          },
                        },
                        javascript = {
                          inlayHints = {
                            includeInlayParameterNameHints = "all",
                            includeInlayEnumMemberValueHints = true,
                          },
                        },
                      },
})
