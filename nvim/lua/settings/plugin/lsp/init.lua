local status_ok, _ = pcall(require, 'lspconfig')
if not status_ok then
    return
end

require('settings.plugin.lsp.installer')
--require('settings.plugin.lsp.config')
