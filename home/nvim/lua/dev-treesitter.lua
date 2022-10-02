require('nvim-treesitter.configs').setup({
    ensure_installed = {
        'bash',
        'c',
        'nix',
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
    },
})
