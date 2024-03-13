return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = { 
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function() 
		-- shortcut to open directory tree (ctrl + b)
		-- ('mode', 'shortcut', 'action')
		-- 'n' stands for normal mode
		vim.keymap.set("n", "<C-b>", ":Neotree filesystem reveal right<CR>")
		vim.keymap.set("n", "<S-b>", ":Neotree close<CR>")
	end
}

