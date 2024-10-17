function TrimWhiteSpace()
  local save = vim.fn.winsaveview()
  vim.cmd('keeppatterns %s/\\s\\+$//e')
  vim.fn.winrestview(save)
end

vim.cmd("command! TrimWhiteSpace lua TrimWhiteSpace()")

function SearchAllBuffers(str)
  vim.cmd('cclose')
  vim.cmd('%argd')
  vim.cmd('bufdo :arga')
  vim.cmd('argded')
  vim.cmd('vimgrep /' .. str .. '/ ##')
  vim.cmd('copen')
end

vim.cmd("command! -nargs=1 SearchAllBuffers lua SearchAllBuffers(<f-args>)")
