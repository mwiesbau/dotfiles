return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 
      'nvim-lua/plenary.nvim',
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Fuzzy find files in cwd" })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Fuzzy find string in cwd" })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Fuzzy find buffersource"  })
      vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = "Fuzzy find selected string in cwd" })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Fuzzy find buffersource"  })
      vim.keymap.set('n', '<leader>fr', "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
      vim.keymap.set('n', '<leader>fc', '<cmd>Config<cr>', { desc = "Fuzzy find files in nvim config dir" })
      vim.api.nvim_create_user_command(
    	  'Config',
      	function ()
      	  require('telescope.builtin').find_files({cwd="~/.config/nvim"})
        end,
        { desc = "Find files in nvim config dir" }
      )
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      -- To get ui-select loaded and working with telescope, you need to call
      -- load_extension, somewhere after setup function:
      require("telescope").load_extension("ui-select")
    end
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup ()
      vim.keymap.set("n", "<leader>b", ":Telescope file_browser<CR>")
      require("telescope").load_extension("file_browser")
    end
  }
}


