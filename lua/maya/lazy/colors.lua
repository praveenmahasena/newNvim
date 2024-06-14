function ColorMyPencils(color)
    color = color or "fluoromachine"
    vim.cmd.colorscheme(color)

    vim.g.gruvbox_contrast_dark = "hard"
    vim.g.tokyonight_transparent_sidebar = true
    vim.g.tokyonight_transparent = true
    vim.g.gruvbox_invert_selection = "0"
    vim.opt.background = "dark"
    vim.g.tokyonight_style = "night"
    vim.g.tokyonight_enable_italic = true
    vim.g.tokyonight_transparent_background = true

    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

return {
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup(
                {
                    -- your configuration comes here
                    -- or leave it empty to use the default settings
                    style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                    transparent = true, -- Enable this to disable setting the background color
                    terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
                    styles = {
                        -- Style to be applied to different syntax groups
                        -- Value is any valid attr-list value for `:help nvim_set_hl`
                        comments = {italic = false},
                        keywords = {italic = false},
                        -- Background styles. Can be "dark", "transparent" or "normal"
                        sidebars = "dark", -- style for sidebars, see below
                        floats = "dark" -- style for floating windows
                    }
                }
            )
        end
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup(
                {
                    disable_background = true,
                    styles = {
                        italic = false
                    }
                }
            )
        end
    },
    {
        "ellisonleao/gruvbox.nvim",
        config = function()
            require("gruvbox").setup(
                {
                    terminal_colors = true, -- add neovim terminal colors
                    undercurl = true,
                    underline = true,
                    bold = true,
                    italic = {
                        strings = true,
                        emphasis = true,
                        comments = true,
                        operators = false,
                        folds = true
                    },
                    strikethrough = true,
                    invert_selection = false,
                    invert_signs = false,
                    invert_tabline = false,
                    invert_intend_guides = false,
                    inverse = true, -- invert background for search, diffs, statuslines and errors
                    contrast = "hard", -- can be "hard", "soft" or empty string
                    palette_overrides = {},
                    overrides = {},
                    dim_inactive = false,
                    transparent_mode = false
                }
            )
        end
    },
    {
        "maxmx03/fluoromachine.nvim",
        config = function()
            require("fluoromachine").setup(
                {
                    theme = "retrowave",
                    transparent = "full",
                    overrides = {
                        ["@type"] = {italic = true, bold = false},
                        ["@function"] = {italic = false, bold = false},
                        ["@comment"] = {italic = true},
                        ["@keyword"] = {italic = false},
                        ["@constant"] = {italic = false, bold = false},
                        ["@variable"] = {italic = true},
                        ["@field"] = {italic = true},
                        ["@parameter"] = {italic = true}
                    },
                    colors = function(_, d)
                        return {
                            bg = "#190920",
                            alt_bg = d("#190920", 20),
                            cyan = "#49eaff",
                            red = "#ff1e34",
                            yellow = "#ffe756",
                            orange = "#f38e21",
                            pink = "#ffadff",
                            purple = "#9544f7"
                        }
                    end
                },
                ColorMyPencils('fluoromachine')
            )
        end
    },
    {
        "maxmx03/solarized.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("solarized").setup(
                {
                    transparent = false, -- enable transparent background
                    palette = "solarized", -- or selenized
                    styles = {
                        comments = {},
                        functions = {},
                        variables = {},
                        numbers = {},
                        constants = {},
                        parameters = {},
                        keywords = {},
                        types = {}
                    },
                    enables = {
                        bufferline = true,
                        cmp = true,
                        diagnostic = true,
                        dashboard = true,
                        editor = true,
                        gitsign = true,
                        hop = true,
                        indentblankline = true,
                        lsp = true,
                        lspsaga = true,
                        navic = true,
                        neogit = true,
                        neotree = true,
                        notify = true,
                        noice = true,
                        semantic = true,
                        syntax = true,
                        telescope = true,
                        tree = true,
                        treesitter = true,
                        todo = true,
                        whichkey = true,
                        mini = true
                    },
                    highlights = {},
                    colors = {},
                    theme = "default", -- or 'neo'
                    autocmd = true
                }
            )
        end
    }
}
