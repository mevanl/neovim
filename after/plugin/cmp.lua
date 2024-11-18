
local cmp = require('cmp')
local select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({

    { 
        window = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },

    mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'}),
        ['<C-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'}),
        ['<Enter>'] = cmp.mapping.confirm({select}),
        ['<C-j>'] = cmp.mapping.scroll_docs(-4),
        ['<C-k>'] = cmp.mapping.scroll_docs(4),
    }),

    source = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'path' },
        { name = 'buffer' },
    }),


})
