return {
  "romus204/tree-sitter-manager.nvim",
  lazy = false,
  dependencies = {}, -- tree-sitter CLI must be installed system-wide
  config = function()
    require("tree-sitter-manager").setup({
      -- c, lua, markdown, markdown_inline, query, vim and vimdoc ship with neovim
      ensure_installed = {
        "javascript", "typescript", "tsx", "html", "css", "json",
        "go", "java", "cpp",
      },
      auto_install = true, -- install missing parsers when opening a new filetype
      noauto_install = { "c", "lua", "markdown", "markdown_inline", "query", "vim", "vimdoc" },
      -- highlight = true, -- calls vim.treesitter.start() on FileType for installed parsers
    })
  end
}
