return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        files = {
          hidden = true,
          ignored = false, -- keep this false to respect .gitignore
          exclude = {
            ".git",
            ".venv",
            "venv",
            "build",
            "dist",
            "__pycache__",
            "*.lock",
            "*.pyc",
            "*.pyo",
            "*.xlsx",
            "__init__.py",
          },
        },
      },
    },
  },
}
