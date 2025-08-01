return {
   {
      "allaman/emoji.nvim",
      version = "1.0.0", -- optionally pin to a tag
      ft = "markdown", -- adjust to your needs
      dependencies = {
        -- util for handling paths
        "nvim-lua/plenary.nvim",
        -- optional for nvim-cmp integration
        "hrsh7th/nvim-cmp",
        -- optional for telescope integration
        "nvim-telescope/telescope.nvim",
        -- optional for fzf-lua integration via vim.ui.select
        -- "ibhagwan/fzf-lua",
      },
      opts = {
        -- default is false, also needed for blink.cmp integration!
        -- enable_cmp_integration = true,
        -- is not vim.fn.stdpath("data") .. "/lazy/
        -- plugin_path = vim.fn.expand("$HOME/plugins/"),
      },
      keys = {
         {"<leader>se",
         function()
            local ts = require('telescope').load_extension('emoji')
            ts.emoji()
         end,
         desc = "Search Emoji"},
      }
   }
}
