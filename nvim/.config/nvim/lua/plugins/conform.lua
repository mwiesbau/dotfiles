return {
  'stevearc/conform.nvim',


    config = function()
      require("conform").setup({
        formatters_by_ft = {
          rust = { "rustfmt " },
          go = { { "gofmt" } }
        },
      })

    vim.keymap.set({ "n", "v" }, "<leader>l", function()
      require("conform").format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "format file or range (in visual mode)" })
  end,
  
}
