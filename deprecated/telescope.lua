return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      file_ignore_patterns = {
        "%.git/",
        ".venv/.*",
        "venv/.*",
        "build/.*",
        "dist/.*",
        "%.lock",
        "__pycache__/.*",
        "%.pyc",
        "%.pyo",
        "%.xlsx",
      },
    },
  },
}
