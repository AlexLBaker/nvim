return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      -- This targets the actual search logic
      sources = {
        files = {
          -- hidden = true, -- show hidden files (.dotfiles)
          ignored = false, -- keep this false to respect .gitignore
          exclude = {
            ".git", ".venv", "venv", "build", "dist", "__pycache__",
            "*.lock", "*.pyc", "*.pyo", "*.xlsx", "__init__.py"
          },
        },
      },
    },
  },
}
