return {
    "nvim-tree/nvim-tree.lua",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        require("nvim-tree").setup({
            view = {
                width = 30,
                relativenumber = false,
            },

            renderer = {
                group_empty = true,
                highlight_git = true,
            },

            -- Hide LaTeX auxiliary files
            filters = {
    custom = {
      ".aux$",
      ".bbl$",
      ".bcf$",
      ".blg$",
      ".fdb_latexmk$",
      ".fls$",
      ".log$",
      ".out$",
      ".run.xml$",
      ".synctex.gz$",
      ".toc$",
    },
                dotfiles = false,
            },

            actions = {
                open_file = {
                    quit_on_open = false,
                },
            },
        })

        -- Ctrl+B: toggle file tree
        vim.keymap.set(
            "n",
            "<C-b>",
            "<cmd>NvimTreeToggle<CR>",
            { desc = "Toggle file explorer" }
        )
    end,
}
