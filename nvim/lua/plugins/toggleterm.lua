return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
      local toggleterm = require("toggleterm")

      toggleterm.setup({
        direction = 'float',
        shade_terminals = true,
        open_mapping = '<C-g>'
      })
    end

  }
}
