lsp_status.config {
  select_symbol = function(cursor_pos, symbol)
    if symbol.valueRange then
      local value_range = {
        ["start"] = {
          character = 0,
          line = vim.fn.byte2line(symbol.valueRange[1])
        },
        ["end"] = {
          character = 0,
          line = vim.fn.byte2line(symbol.valueRange[2])
        }
      }

      return require("lsp-status.util").in_range(cursor_pos, value_range)
    end
  end
}

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
local lspconfig = require('lspconfig')
-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver','pylsp' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = my_custom_on_attach,
    capabilities = capabilities,
  }
end
-- luasnip setup
local luasnip = require 'luasnip'
