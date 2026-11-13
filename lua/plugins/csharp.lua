return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "c_sharp" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        roslyn_ls = true,
      },
    },
  },
}
