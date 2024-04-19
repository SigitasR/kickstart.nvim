-- Setup Bash LSPs
-- Prerequisites:
-- https://github.com/koalaman/shellcheck
-- https://github.com/bash-lsp/bash-language-server

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'sh',
  callback = function()
    vim.lsp.start {
      name = 'bash-language-server',
      cmd = { 'bash-language-server', 'start' },
    }
  end,
})

return {}
