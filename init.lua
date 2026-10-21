-- ========================================
-- Editor
-- ========================================

vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true

vim.opt.wrap = true
vim.opt.linebreak = true

vim.opt.scrolloff = 8

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- UI
vim.opt.termguicolors = true
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Enable persistent undo
vim.opt.undofile = true

vim.opt.autoread = true

vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
    pattern = "*",
    callback = function()
        if vim.bo.buftype == "" then
            vim.cmd("silent! checktime")
        end
    end,
})

-- Use 2-space indentation for LaTeX
vim.api.nvim_create_autocmd("FileType", {
    pattern = "tex",
    callback = function()
        vim.opt_local.shiftwidth = 2
        vim.opt_local.tabstop = 2
    end,
})

-- Familiar shortcuts
vim.keymap.set({ "n", "i" }, "<C-s>", function()
    vim.cmd("write")
end, { desc = "Save file" })

-- Easier exit from insert mode
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-- Lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { import = "plugins" },
})
