return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "default",

        ["<Tab>"] = {
          "select_and_accept",
          "fallback",
        },

        ["<CR>"] = {
          "select_and_accept",
          "fallback",
        },
      },
    },
  },
}
