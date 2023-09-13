-- Customize dashboard logo. Took it from:
-- https://github.com/MaximilianLloyd/ascii.nvim/blob/master/lua/ascii/misc/hydra.lua
lvim.builtin.alpha.dashboard.section.header.val = {
	"                                   ",
	"                                   ",
	"                                   ",
	"   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
	"    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
	"          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
	"           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
	"          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
	"   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
	"  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
	" ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
	" ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
	"      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
	"       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
	"                                   ",
}

-- Change lvim footer
-- A random footer could be a great idea
local function footer_val()
  local phrases = {
    "What is worse than 'sudo rm -rf /'?",
    "Emacs? What is that",
    "It's not a bug, it's a undocumented feature",
    "Made by @dpv927",
    "**typing sounds**",
    "Please, compile this time!",
    "LunarVim, LunarVim, LunarVim...",
    "Maybe you need another plugin",
    "Yes, the dashboard is looking good"
  }
  return phrases[math.random(1,#phrases)]
end
lvim.builtin.alpha.dashboard.section.footer.val = footer_val

-- You can try a fixed message instead
-- lvim.builtin.alpha.dashboard.section.footer.val = "@dpv927"

-- Define lvim list of plugins.
lvim.plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {'andweeb/presence.nvim'},
  {'norcalli/nvim-colorizer.lua'}
}

-- Catppuccin color theme configuration
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
lvim.colorscheme = "catppuccin"

-- Start colorizer
require'colorizer'.setup()
