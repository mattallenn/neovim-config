require("mattallen.set")
require("mattallen.remap")

vim.cmd([[command! -nargs=0 VimScode :lua require("mattallen.VimScode").open_in_vscode()]])
vim.cmd([[command! -nargs=0 VimBrain :lua require("mattallen.VimScode").open_in_jetbrains()]])
