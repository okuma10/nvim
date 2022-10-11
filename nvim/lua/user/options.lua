local options = {
    backup = false,
    clipboard = "unnamedplus",
    cmdheight = 1,
    fileencoding = "utf-8",
    mouse = "a",
    smartindent = true,
    updatetime = 300,
    cursorline = true,
    number = true,
    relativenumber = true,
    signcolumn = "yes",
    -- guifont = "monospace:h17",
    -- -------------------
    -- UI ----------------
    --
    numberwidth = 4,
    foldmethod = 'manual',
    foldlevel = 9999,
    showmatch = true,
    wrap = false,
    termguicolors = true,
    expandtab = true,
    smarttab = true,
    shiftwidth = 4,
    tabstop = 4,
  
    hlsearch = true,
    incsearch = true,
    ignorecase = true,
    smartcase = true,
  
    splitbelow = true,
    splitright = true,
    scrolloff = 5,

    hidden = true,
    ttimeoutlen = 100,
    completeopt = {"menuone", "noselect"},


}

for k,v in pairs(options) do
    vim.opt[k] = v
end
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"

-- Auto create fold snapshot
vim.api.nvim_create_autocmd(
    {"BufWinLeave"},
    {
        pattern = {"*.*"},
        command="mkview"}
)
vim.api.nvim_create_autocmd(
    {"BufWinEnter"},
    {
        pattern={"*.*"},
        command="silent loadview"}
)
