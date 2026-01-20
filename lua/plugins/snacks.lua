return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      -- This applies to all picker sources (files, grep, etc.)
      exclude = {
        ".git",
        ".venv",
        "venv",
        "build",
        "dist",
        "__pycache__",
      },
      -- Pattern matching for specific file extensions
      matchers = {
        file_filter = function(item)
          local patterns = {
            "%.lock$",
            "%.pyc$",
            "%.pyo$",
            "%.xlsx$",
          }
          for _, p in ipairs(patterns) do
            if item.file:find(p) then
              return false
            end
          end
          return true
        end,
      },
    },
  },
}
