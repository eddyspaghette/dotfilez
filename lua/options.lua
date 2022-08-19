vim.o.rnu=true
vim.o.number=true
vim.cmd([[set viminfo+=f0]])
vim.cmd([[setlocal foldmethod=indent]])
vim.cmd([[set foldlevel=20]])
vim.cmd([[set foldclose=all]])
vim.cmd([[set fillchars=fold:\ "]])
vim.cmd[[function! CustomFoldText()
  let indentation = indent(v:foldstart - 1)
  let foldSize = 1 + v:foldend - v:foldstart
  let foldSizeStr = " " . foldSize . " lines "
  let foldLevelStr = repeat("+--", v:foldlevel)
  let expansionString = repeat(" ", indentation)

  return expansionString . foldLevelStr . foldSizeStr
endfunction]]
vim.cmd[[set foldtext=CustomFoldText()]]
vim.o.guicursor=""
vim.o.hlsearch=true
vim.bo.softtabstop= 4
vim.bo.tabstop=4
vim.bo.shiftwidth=4
vim.bo.expandtab=true
vim.o.ignorecase=true
vim.o.showmatch=true
vim.opt.encoding="utf-8"
vim.opt.termguicolors=true
vim.opt.mouse="a"
vim.opt.scrolloff=8
vim.opt.sidescrolloff=8
vim.o.swapfile=false
vim.o.clipboard ="unnamedplus"
