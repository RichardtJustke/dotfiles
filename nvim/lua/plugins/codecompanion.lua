return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("codecompanion").setup({
        adapters = {
          http = {
            gemini = function()
              return require("codecompanion.adapters").extend("gemini", {
                schema = {
                  model = {
                    default = "gemini-2.5-pro",
                  },
                },
              })
            end,
          },
        },
        interactions = {
          chat = { adapter = "gemini" },
          inline = { adapter = "gemini" },
        },
      })
    end,
  },
}
