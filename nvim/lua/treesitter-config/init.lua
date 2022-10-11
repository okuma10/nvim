

require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = { "c", "lua", "python" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,


    highlight = {
        -- `false` will disable the whole extension
        enable = true,
        additional_vim_regex_highlighting = false,
      },

    refactor = {
        
        highlight_definitions = {
        enable = true,
        -- Set to false if you have an `updatetime` of ~100.
        clear_on_cursor_move = true,
        },

        smart_rename = {
            enable = true,
            keymaps = {
                smart_rename = "grr",
            },
        },
        navigation = {
            enable = true,
            keymaps = {
                goto_definition = "gnd",
                list_definitions = "gnD",
                list_definitions_toc = "gO",
                goto_next_usage = "<A-*>",
                goto_previous_usage = "<A-#>",
            },
        },
    },

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection      = "gnn",
            node_incremental    = "grn",
            scope_incremental   = "grc",
            node_decrementa     = "grm",
        },
    },

    indent = {enable = true,},

    fold = {
        fold_one_line_after = true,
    },
}

local vim = vim
local opt = vim.opt


-- opt.foldmethod = "expr"
-- opt.foldexpr = "nvim_treesitter#foldexpr()"
