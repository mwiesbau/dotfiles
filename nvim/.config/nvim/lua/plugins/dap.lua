return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "leoluz/nvim-dap-go",
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text",
      "nvim-neotest/nvim-nio",
      "williamboman/mason.nvim"
    },

    config = function()
      local dap = require "dap"
      local dapui = require "dapui"

      require("dapui").setup()
      require("dap-go").setup() --{

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "DAP toggle breakpoint" })
      vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "DAP start debuging" })
      vim.keymap.set("n", "<leader>do", dap.step_over, { desc = "DAP step over" })
      vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "DAP step into" })
      vim.keymap.set("n", "<leader>dI", dap.step_out, { desc = "DAP step out" })

    
      vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
        require('dap.ui.widgets').preview()
      end)

      vim.keymap.set("n", "<leader>dgt", function()
        require("dap-go").debug_test()
      end, { desc = "Debug Go test" }
      )
    end
  }
}
