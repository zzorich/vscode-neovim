local opt = vim.opt
if vim.g.vscode then
    opt.ignorecase = true
    opt.backup = false
    opt.hlsearch = true

    opt.smartcase = true
    opt.smartindent = true
    opt.expandtab = true
    opt.shiftwidth = 4
    opt.tabstop = 4

    opt.number = true
    opt.swapfile = false
    opt.cursorline = true

    opt.writebackup = false
    opt.timeoutlen = 300

    opt.clipboard = "unnamedplus"
end
