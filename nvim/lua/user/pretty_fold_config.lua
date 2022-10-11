local pretty_status_ok, pretty_fold = pcall(require, 'pretty-fold')
if not pretty_status_ok then
    print "pretty_fold_config.lua: Unable to require pretty-fold!"
end

pretty_fold.setup({
    keep_indentation = false,
    fill_char = '━',
    sections = {
        left = {
            '━ ', function() return string.rep('*', vim.v.foldlevel) end, ' ━┫', 'content', '┣'
        },
        right = {
            '┫ ', 'number_of_folded_lines', ': ', 'percentage', ' ┣━━',
        }
    }
})


-- I'll add some custom fold here
--
--
--
--
--
--
--
-- end
