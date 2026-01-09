return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ruff = {
        settings = {
          args = {
            "--ignore=E302,E303,D,E402",
          },
        },
      },
      pyright = {
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic",
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
            },
          },
        },
      },
    },
  },
}
