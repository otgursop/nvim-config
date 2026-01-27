return {
  {
    "folke/lazydev.nvim",
    ft = "lua",
  },
  
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "lua-language-server" }
    }
  },

  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-buffer",
    },
    config = function()
      local cmp = require("cmp")
      
      cmp.setup({
        completion = { completeopt = "menu,menuone,noinsert" },
        sources = {
          { name = "nvim_lsp" },
          { name = "path" },
          { name = "buffer" },
        },
        mapping = {
          ["<C-n>"] = cmp.mapping.select_next_item(),
          ["<C-p>"] = cmp.mapping.select_prev_item(),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        },
      })
    end,
  },

  {
    "m4xshen/autoclose.nvim",
    event = "InsertEnter",
    opts = {
      keys = {
        ["("] = { close = true, escape = false, pair = "()" },
        ["{"] = { close = true, escape = false, pair = "{}" },
        ["["] = { close = true, escape = false, pair = "[]" },
        ["<"] = { close = true, escape = false, pair = "<>" },
        
        [")"] = { escape = true, close = false },
        ["}"] = { escape = true, close = false },
        ["]"] = { escape = true, close = false },
        [">"] = { escape = true, close = false },
      },
      options = {
        disabled_filetypes = { "text", "markdown", "TelescopePrompt" },
        auto_indent = true,
      },
    },
  },

}

