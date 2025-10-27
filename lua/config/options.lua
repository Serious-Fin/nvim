local options = vim.o

options.number = true -- Enable line numbers
options.relativenumber = true -- Enable relative line numbers
options.tabstop = 4 -- Set <tab> width to 4
options.shiftwidth = 4 -- Set auto-indentation to 4
options.expandtab = false -- Do not expoand tabs to spaces
-- TODO: think about wrap and textwidth

vim.diagnostic.config({
  virtual_text = true
})
