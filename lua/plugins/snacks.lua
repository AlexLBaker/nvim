return {
  "folke/snacks.nvim",
  opts = {
    terminal = {
      win = {
        style = "float",
        border = "rounded",
        width = 0.95,
        height = 0.95,
      },
    },
    picker = {
      sources = {
        files = {
          hidden = true,
          ignored = true,
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
