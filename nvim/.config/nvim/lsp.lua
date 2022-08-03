-- Mappings.
local on_attach = function(client, bufnr)
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
	vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
end

-- Flags
local lsp_flags = {
  debounce_text_changes = 150,
}

-- Using nvim-cmp capabilities over native neovim
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Setting up all the language servers
require('lspconfig')['clangd'].setup{
    on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
}
require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
}
require('lspconfig')['rust_analyzer'].setup{
    on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
		settings = {
      ["rust-analyzer"] = {}
    }
}
