local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
    return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
    return
end

-- local icons = require("user.icons")

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup{
    update_focused_file = {
        enable      = true,
        update_cwd  = true,
    },
    renderer={
        add_trailing  = false,
        group_empty   = false,
        highlight_git = false,
        highlight_opened_files = "none",
        root_folder_modifier = ":t",
        indent_markers = {
            enable  = false,
            icons   = {
                corner = "└",
                edge   = "│",
                none   = ""
            },
        },
        icons = {
            webdev_colors = true,
            git_placement = "before",
            padding = " ",
            symlink_arrow = "→",
            show = {
                file    = true,
                folder  = true,
                folder_arrow = true,
                git = true
            },
        
            glyphs = {
                default = "",
                symlink = "",
                folder  = {
                    arrow_open   = "",
                    arrow_closed = "",
                    default = "",
                    open    = "",
                    empty   = "",
                    empty_open  = "",
                    symlink     = "",
                    symlink_open = "",
                    },
            },
        },
      },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        }
    },
    view = {
        --[[ width  = 30, ]]
        --[[ height = 30, ]]
        side = "left",
        mappings = {
            list = {
                {key = {"l", "<CR>", "o"}, cb = tree_cb "edit"},
                {key = "h",  cb = tree_cb "close_node"},
                {key = "v",  cb = tree_cb "vsplit"},
            },
        },
    },
}
