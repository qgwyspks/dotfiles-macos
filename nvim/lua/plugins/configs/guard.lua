local guard_status, guard = pcall(require, "guard")
if not guard_status then
    return
end

local ft = require "guard.filetype"

-- ft('python'):fmt({
--                 cmd = 'ruff',
--                 args = {
--                     '--line-length=120',
--                     -- '--config', "\"format.quote-style=\'single\'\"",
--                     '--config', "format.quote-style='single'",
--                 },
--                 stdin = true,
--             })
--             :lint('ruff')
ft("python"):fmt("lsp"):append("ruff"):lint "ruff"

-- ft('c,cpp'):fmt({
--     cmd = 'clang-format',
--     stdin = true,
--     ignore_patterns = { 'neovim', 'vim' },
-- })

ft("lua"):fmt("lsp"):append "stylua"
-- :lint('selene')

ft("go"):fmt("lsp"):append "gofmt"

ft("json"):fmt "lsp"

ft("sh"):fmt({
    cmd = "shfmt",
    args = { "-" },
    stdin = true,
}):lint "shellcheck"

vim.g.guard_config = {
    fmt_on_save = true,
    lsp_as_default_formatter = false,
    -- save_on_fmt = true,
}
