function TrimWhiteSpace()
    local save = vim.fn.winsaveview()
    vim.cmd('keeppatterns %s/\\s\\+$//e')
    vim.fn.winrestview(save)
end

vim.cmd("command! TrimWhiteSpace lua TrimWhiteSpace()")
