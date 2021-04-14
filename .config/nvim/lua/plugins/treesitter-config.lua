require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    -- ignore_install = {"haskell"}
    highlight = {
        enable = true
    },
    indent = {enable = {"javascriptreact"}},
    autotag = {enable = true},
    rainbow = {enable = true},
    context_commentstring = {enable = true, config = {javascriptreact = {style_element = '{/*%s*/}'}}}
}

