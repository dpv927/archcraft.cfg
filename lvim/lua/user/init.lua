require("user.dashboard")
require("user.plugins")

-- Setup
require'colorizer'.setup()
require('live-server').setup()
require("catppuccin").setup({
    flavour = "frappe",
    transparent_background = false,
    no_italic = false,
    no_bold = false,
    no_underline = false,
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
    },
})

-- Settings
vim.opt.nu = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.updatetime = 50
lvim.colorscheme = "catppuccin"
