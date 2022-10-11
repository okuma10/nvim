local fn=vim.fn

-- Automatically Install Packer
--
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
end

-- Autocomand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
 augroup packer_user_config
     autocmd!
     autocmd BufWritePost plugins.lua source <afile> | PackerSync
 augroup end
]])

-- Use protected call so we don't error on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have Packer use a popup window
packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end,
    },
})


-- Install Pluginst here -----------
--
return packer.startup(function(use)
    -- Alpha Start page
    use ('goolord/alpha-nvim')
    -- Auto Save
    use ("Pocco81/auto-save.nvim")
    use 'lewis6991/impatient.nvim'

    -- Package manager
    use ('wbthomason/packer.nvim')

    -- Notify ...not working
    use "rcarriga/nvim-notify"

    -- Lualine?
    use ('nvim-lualine/lualine.nvim')


    -- Commenting Code
    -- use ('tpope/vim-commentary')
    use "numToStr/Comment.nvim"
    use "folke/todo-comments.nvim"

    -- Terminal
    use ('tc50cal/vim-terminal')
    use 'akinsho/toggleterm.nvim'


    -- Indent
    use "lukas-reineke/indent-blankline.nvim"

    -- Harpoon
    use "christianchiarulli/harpoon"
    

    -- Multiple Cursors
    use ('mg979/vim-visual-multi')


    -- Auto bracket Pairs
    use ('jiangmiao/auto-pairs')


    --[[ use "filipdutescu/renamer.nvim" ]]

    -- File manager
    use ('kyazdani42/nvim-tree.lua') -- Nvim-Tree

    -- Dev Icons
    use ('kyazdani42/nvim-web-devicons')

    -- Buffer Bar
    -- use ('romgrk/barbar.nvim')
    use ('akinsho/bufferline.nvim')


    --> Color Schemes
    use "folke/tokyonight.nvim"
    use "lunarvim/colorschemes"
    use "lunarvim/darkplus.nvim"
    use ('EdenEast/nightfox.nvim')
    use ('sainnhe/sonokai')


    --> Intellisense auto complete
    -- use ({'neoclide/coc.nvim', branch = 'release'}) -- COC
    -- -- LSP
    use ('neovim/nvim-lspconfig')
    use ('hrsh7th/nvim-compe')
    use ("williamboman/nvim-lsp-installer")
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "saadparwaiz1/cmp_luasnip"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"
    --      -- Snippets
    use "L3MON4D3/LuaSnip"
    use "rafamadriz/friendly-snippets"
    --[[ use "ms-jpq/coq_nvim" ]]


    --> Treesitter and telescope
    --      Treesitter syntax highlight
    --      telescope  filesearch
    use ({ 'nvim-treesitter/nvim-treesitter', run =':TSUpdate' })
    use ('nvim-treesitter/nvim-treesitter-refactor')
    use "JoosepAlviste/nvim-ts-context-commentstring"
    use 'windwp/nvim-ts-autotag'
    use ('BurntSushi/ripgrep')
    -->     Telescope
    use ({
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
        })
    use 'RRethy/vim-illuminate'

    -- Utility
    --      Buffer Delete
    use "moll/vim-bbye"
    use "stevearc/dressing.nvim"


    --> Folding
    use({ 'anuvyklack/pretty-fold.nvim',
           config = function()
              require('pretty-fold').setup()
           end
    })


    use ('TaDaa/vimade') -- Darken inactive

    use ('preservim/tagbar') -- Tagbar
    -- Debugging
    use "mfussenegger/nvim-dap"
    use "ravenxrz/DAPInstall.nvim"
    use "rcarriga/nvim-dap-ui"
end)
