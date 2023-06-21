require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "vim",
        "javascript",
        "typescript",
        "c",
        "lua",
        "rust",
        "java",
        "bash",
        "python",
        "json",
        "yaml",
        "regex",
        "gitignore",
        "dockerfile"
    },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
