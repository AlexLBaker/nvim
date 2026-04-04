return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- 1. GLOBAL CAPABILITIES
      -- This ensures every LSP you ever add gets the blink.cmp "superpowers"
      local capabilities = require("blink.cmp").get_lsp_capabilities()

      -- 2. APPLY TO ALL SERVERS
      -- We loop through any servers defined in your config and inject the capabilities
      for _, server_opts in pairs(opts.servers) do
        server_opts.capabilities = vim.tbl_deep_extend("force", server_opts.capabilities or {}, capabilities)
      end

      -- 3. SPECIFIC PYTHON OVERRIDE
      -- We define basedpyright separately here so it doesn't clash
      opts.servers.pyright = { enabled = false }
      opts.servers.basedpyright = {
        capabilities = capabilities,
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
      }
    end,
  },
}
