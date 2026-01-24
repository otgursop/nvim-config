local function enable_transparency()
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end
return {
  -- {
  --   'sainnhe/gruvbox-material',
  --    priority = 1000,
  --    config = function()
  --      vim.g.gruvbox_material_enable_italic = true
  --      vim.cmd.colorscheme('gruvbox-material')
  --    end
  -- },

  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      vim.cmd.colorscheme "gruvbox"
      enable_transparency()
    end
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      theme = 'gruvbox',
    }
  }
}
