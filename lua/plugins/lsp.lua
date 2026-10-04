return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = { enabled = false },
        basedpyright = {
          before_init = function(_, config)
            -- Ask Poetry for the active environment's Python path
            local handle = io.popen("poetry run which python 2>/dev/null")
            if handle then
              local path = handle:read("*a"):gsub("%s+", "")
              handle:close()
              if path ~= "" then
                config.settings.python = config.settings.python or {}
                config.settings.python.pythonPath = path
              end
            end
          end,
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "standard",
                autoImportCompletions = true,
                useLibraryCodeForTypes = true,
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly",
              },
            },
          },
        },
      },
    },
  },
}
