return {
  {
    "mfussenegger/nvim-dap",

    config = function()
      local dap = require("dap")

      dap.adapters.codelldb = {
        type = "executable",
        command = vim.fn.stdpath("data") .. "/mason/bin/codelldb",
      }

      dap.configurations.cpp = {
        {
          name = "Launch current program",
          type = "codelldb",
          request = "launch",

          program = function()
            return vim.fn.input("Executable: ", vim.fn.getcwd() .. "/main", "file")
          end,

          cwd = "${workspaceFolder}",
          stopOnEntry = false,
        },
      }

      vim.keymap.set("n", "<F5>", dap.continue, {
        desc = "Debug: Start/Continue",
      })
    end,
  },
}
