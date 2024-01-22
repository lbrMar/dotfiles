local config = function()
  require('nvim-treesitter.configs').setup({
    indent = {
      enable = true,
    },
    autotag = {
      enable = true,
    },
    ensure_installed = {
      "vim",
      "vimdoc",
      "query",
      "markdown",
      "markdown_inline",
      "dockerfile",
      "gitignore",
      "json",
      "html",
      "css",
      "bash",
      "lua",
      "javascript",
      "typescript",
      "go",
      "c",
    },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = true,
    },
    incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<leader>ss", -- Select Scope
      node_incremental = "<leader>ni", -- Node Increment
      scope_incremental = "<leader>si", -- Scope Increment
      node_decremental = "<leader>nd", -- Node Decement
    },
  },
  })
end

return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  config = config,
}
