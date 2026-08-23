return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        cpp = { "clang-format" },
        c = { "clang-format" },
        h = { "clang-format" },
        hpp = { "clang-format" },
      },

      formatters = {
        ["clang-format"] = {
          prepend_args = {
            "--style={BasedOnStyle: LLVM, BreakBeforeBraces: Allman, IndentWidth: 4, ColumnLimit: 120}",
          },
        },
      },
    },
  },
}
