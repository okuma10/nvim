require("tokyonight").setup({
        style = "storm",
        transperent = false,
        terminal_colors = true,
        styles = {
                comments  = {italic = true},
                keywords  = {italic = true},
                functions = {bold = true},
                variables = {},

                sidebars = "dark",
                floats   = "dark",
            },
        sidebars = {"qf", "help"},
        dim_inactive = true,
        lualine_bold = true,
        --[[ Folded = {fg='#FFFFFF'}, ]]
        on_highlights = function(hl,c)
            hl.Folded = {fg="#7bf27b",bg="#24283b"}

        end

})


vim.cmd[[colorscheme tokyonight]]
