return {
	"EdenEast/nightfox.nvim",
	lazy = false,
	name = "nightfox",
	priority = 1000,
	config = function()
    require('nightfox').setup({
      options = {
        styles = {
          comments = "italic",
          keywprds = "bold",
          types = "italic,bold",
        }
      }
    })
		vim.cmd.colorscheme("terafox")
	end,
}
