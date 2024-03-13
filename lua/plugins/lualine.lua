-- this plugins used to colorize the status bar below
-- status bar for NORMAL, INSERT, VISUAL etc in below window
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function() 
		require('lualine').setup({
			option = {
				theme = 'dracula'
			}
		})
	end
}

