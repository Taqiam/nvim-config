return {
  {
    "mfussenegger/nvim-dap",

    opts = function()
      local dap = require("dap")

      LazyVim.config.icons.dap = {
        Breakpoint = { "●", "DiagnosticError" },
        BreakpointCondition = { "◆", "DiagnosticWarn" },
        BreakpointRejected = { "○", "DiagnosticError" },
        LogPoint = { "◆", "DiagnosticInfo" },
        Stopped = { "▶", "DiagnosticWarn", "Visual" },
      }

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
  {
    "jay-babu/mason-nvim-dap.nvim",
    optional = true,
    opts = {
      handlers = {
        -- CodeLLDB uses the adapter and launch settings defined above.
        codelldb = function() end,
      },
    },
  },
}
