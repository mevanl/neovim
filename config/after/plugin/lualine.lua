local clients_lsp = function()
     local bufnr = vim.api.nvim_get_current_buf()
     local clients = vim.lsp.buf_get_clients(bufnr)
     if next(clients) == nil then
          return ""
     end
     local c = {}
     for _, client in pairs(clients) do
          table.insert(c, client.name)
     end
     return "\u{f085}  " .. table.concat(c, "|")
end 

require('lualine').setup {

     options = {
          icons_enabled = true,
          theme = 'rose-pine',
          component_separators = "",
          section_separators = { left = '█', right = '█' },
          disabled_filetypes = {
               statusline = {},
               winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          always_show_tabline = true,
          globalstatus = true,
          refresh = {
               statusline = 1000,
               tabline = 1000,
               winbar = 1000,
          }
     },
     sections = {
          lualine_a = 
          {
               { 
               'mode', 
               } 
          },

          lualine_b = 
          { 
               { 
                    'branch', 
                    icon = "", 
               },
          },
          lualine_c = 
          { 
               { 
                    'filename', 
               }, 
               { 
                    'diff', 
               },
          },
          lualine_x = 
          {
               {
                    "diagnostics",
                    update_in_insert = true,
               },
          },
          lualine_y = 
          {
               clients_lsp,
                icon = "  ",
          },
          lualine_z = 
          {
               {
                    "location",
                    icon = "",
               },
          },
     },
     },
     tabline = {},
     winbar = {},
     inactive_winbar = {},
     extensions = {}
}
