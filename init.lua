if vim.g.vscode then
    vscode = require('vscode-neovim')
    vim.notify = vscode.notify
end

require "user.options"
require "user.keymaps"
require "user.plugins"
