require("mason").setup()

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
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require('lspconfig')

-- Setting up all the language servers
lspconfig['clangd'].setup{
    on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
}
lspconfig['tsserver'].setup{
    on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
}
lspconfig['rust_analyzer'].setup{
    on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
		settings = {
      ["rust-analyzer"] = {}
    }
}
lspconfig['pyright'].setup{
    on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
    root_dir = lspconfig.util.root_pattern('.git'),
}
lspconfig['jsonnet_ls'].setup{
    on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
}

-- vim.diagnostic.config({
--   virtual_text = false,
-- })

-- vim.opt_global.shortmess:remove("F"):append("c")
-- Scala (uses nvim-metals not lsp-config)
-- vim.opt_global.shortmess:remove("F"):append("c")
local metals_config = require("metals").bare_config()

metals_config.capabilities = capabilities
metals_config.on_attach = on_attach
