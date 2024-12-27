local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
    return
end

local lspkind_status, lspkind = pcall(require, "lspkind")
if not lspkind_status then
    return
end

local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
    return
end

cmp.setup({
    view = {
        entries = 'custom', -- 'custom' | 'wildmenu' | 'native'
    },
    window = {
        completion = {
            winhighlight = "Normal:None,FloatBorder:None,Search:None",
            border = 'rounded',
            col_offset = -3,
            side_padding = 0,
            scrollbar = true,
        },
        documentation = {
            winhighlight = 'Normal:None,FloatBorder:None,Search:None',
            border = 'rounded',
            scrollbar = true,
        },
    },
    formatting = {
        fields = { 'kind', 'abbr', 'menu' },
        format = function(entry, vim_item)
            local kind = lspkind.cmp_format({
                mode = "symbol_text",
                maxwidth = 50,
            })(entry, vim_item)
            local strings = vim.split(kind.kind, "%s", { trimempty = true })
            kind.kind = " " .. (strings[1] or "") .. " "
            kind.menu = " " .. (strings[2] or "") .. "."
            return kind
            -- vim_item.menu = ' ' .. (vim_item.kind or '')
            -- vim_item.kind = _G._kind_icons[vim_item.kind] or ''
            -- return vim_item
        end,
    },
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    sources = cmp.config.sources({
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { name = "buffer" },
        -- { name = "path" },
        -- { name = "tmux" },
    }),
    mapping = cmp.mapping.preset.insert({
        ['<Tab'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { "i", "s" }),

        ['<S-Tab'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),

        -- ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        -- ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        -- ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        -- ["<C-f>"] = cmp.mapping.scroll_docs(4),
        -- ["<C-Space>"] = cmp.mapping.complete(),
        -- ["<C-e>"] = cmp.mapping.abort(),  --  取消补全
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        -- ["<S-CR>"] = cmp.mapping.confirm({
        --     behavior = cmp.ConfirmBehavior.Replace,
        --     select = true,
        -- }),
    }),
    experimental = {
        ghost_text = true,
    },
})

-- cmp.setup.cmdline({ "/", "?" }, {
--     mapping = cmp.mapping.preset.cmdline(),
--     sources = {
--         { name = "buffer" }
--     }
-- })

-- cmp.setup.cmdline(":", {
--     mapping = cmp.mapping.preset.cmdline(),
--     sources = cmp.config.sources({
--         { name = "path" }
--     }, {
--         { name = "cmdline" }
--     })
-- })

