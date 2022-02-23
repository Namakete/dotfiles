local status_ok, _ = pcall(require, 'lspconfig')
if not status_ok then
  return
end

require('user.lsp.lsp-installer')
require('user.lsp.handlers').setup()
require('user.lsp.null-ls')
vim.cmd('source ~/.config/nvim/lua/user/lsp/language-server.vim')

