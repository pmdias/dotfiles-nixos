require('telescope').setup({
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = 'smart_case',
        }
    }
})

require('telescope').load_extension('fzf')

vim.api.nvim_set_keymap(
    'n',
    '<Leader>ff', [[<Cmd>lua require('telescope.builtin').find_files()<CR>]],
    { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
    'n',
    '<Leader>fg', [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]],
    { noremap = true, silent = true }
)
