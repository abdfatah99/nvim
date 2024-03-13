--[[
--This is lua file, you can't run vim command here, therefor you need meta-access
--to run vim command in lua file. Therefor the preprocessor can run it from lua file
--]]
-- 
-- all vim configuration move into vim-option.lua file to make it easy to manage
-- because it's moved to other file, you need to import here
require("vim-option")

-- install lazy vim package manager
-- source: https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

--[[
--List of plugins that you install should store in one place, 
--here we want to store all plugins in variable, later this 
--variable will be set as argument of `lazy.setup()` function
--
-- The variable type for holding the list of plugins is tuple
--
-- but all of the plugis you install aready move into their
-- dedicated file to make it easy to manage it.
--]]

-- initialie Lazy
require("lazy").setup("plugins")


