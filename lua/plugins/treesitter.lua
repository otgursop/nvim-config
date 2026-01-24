return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local langs = {
      "c",
      "cpp",
      "lua",
      "python",
      "css",
    }

    local treesitter = require("nvim-treesitter")
    treesitter.setup()
    treesitter.install(langs)

    vim.api.nvim_create_autocmd('FileType', {
      pattern = langs,
      callback = function()
        vim.treesitter.start()
        -- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        -- vim.wo.foldmethod = 'expr'
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end
}
