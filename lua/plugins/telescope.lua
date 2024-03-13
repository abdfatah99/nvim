return {
	'nvim-telescope/telescope.nvim', 
	tag = '0.1.5',
	dependencies = { 'nvim-lua/plenary.nvim' }, 
	config = function() 
		-- load telescope plugins
		require('telescope').setup({
			-- source: https://github.com/nvim-telescope/telescope.nvim/issues/522
			-- the last answer by jaywhy13
			defaults = {
				file_ignore_patterns = { "node%_modules/.*", },
			}
		})

		local builtin = require("telescope.builtin")
		-- telescope.setup({ file_ignore_patterns = {"node$_modules/.*"} })
		-- setup keymap for raise telescope function
		vim.keymap.set('n', '<C-p>', builtin.find_files, {})
	end
}
