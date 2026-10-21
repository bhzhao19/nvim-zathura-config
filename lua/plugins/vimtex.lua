return {
    "lervag/vimtex",
    lazy = false,

    init = function()
        -- PDF viewer
        vim.g.vimtex_view_method = "zathura"

        -- LaTeX compiler
        vim.g.vimtex_compiler_method = "latexmk"

        -- Show LaTeX source without concealment
        vim.g.vimtex_syntax_conceal_disable = 1
    end,
}
