return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          capabilities = require("blink.cmp").get_lsp_capabilities(),
        },
        pyright = { enabled = false },
        basedpyright = {
          settings = {
            python = {
              pythonPath = "./.venv/bin/python",
            },
            basedpyright = {
              analysis = {
                typeCheckingMode = "standard",
                autoImportCompletions = true,
                useLibraryCodeForTypes = true,
              },
            },
          },
        },
      },
    },
  },
}
