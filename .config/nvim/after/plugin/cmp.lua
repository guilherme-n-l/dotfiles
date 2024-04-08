local cmp = require 'cmp'

cmp.setup({
    window = {
        completion = cmp.config.window.bordered(),
        documentation = {
            bordered = true,
            max_width = 80,
            max_height = 10,
        },
    },
    view = {
        entries = { name = 'custom', selection_order = 'near_cursor' },
        docs = {
            auto_open = false,
        },
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-c>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<C-d>'] = function()
            if cmp.visible_docs() then
                cmp.close_docs()
            else
                cmp.open_docs()
            end
        end
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
    }, {
        { name = 'buffer' },
    })
})
