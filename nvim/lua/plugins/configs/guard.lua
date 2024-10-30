local guard_status, guard = pcall(require, "guard")
if not guard_status then
    return
end

local ft = require('guard.filetype')


ft('lua'):fmt('lsp')
        :append('stylua')
        -- :lint('selene')

ft('go', 'json'):fmt('lsp')

vim.g.guard_config = {
    fmt_on_save = true,
    lsp_as_default_formatter = false,
    -- save_on_fmt = true,
}
