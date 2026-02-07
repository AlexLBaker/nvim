return {
  "akinsho/toggleterm.nvim",
  keys = {
    {
      "<leader>gg",
      function()
        local Terminal = require("toggleterm.terminal").Terminal
        Terminal:new({
          cmd = "lazygit",
          direction = "float",
          hidden = true,
          float_opts = { border = "rounded" },
        }):toggle()
      end,
      desc = "LazyGit (float)",
    },
    {
      "<leader>gd",
      function()
        local Terminal = require("toggleterm.terminal").Terminal
        Terminal:new({
          cmd = "lazydocker",
          direction = "float",
          hidden = true,
          float_opts = { border = "rounded" },
        }):toggle()
      end,
      desc = "LazyDocker (float)",
    },
  },
}
