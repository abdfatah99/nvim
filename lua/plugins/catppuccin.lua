-- color scheme
return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		-- no need to require("cattppuccin").setup() anymore, it will automatically loaded by lazy

		-- setup catppuccin color scheme into the nvim
		vim.cmd.colorscheme "catppuccin"

		-- setup line number color
		-- source: https://stackoverflow.com/questions/75277938/need-to-change-the-colour-of-line-numbers-in-neovim
		vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#51B3EC', bold=true })
		vim.api.nvim_set_hl(0, 'LineNr', { fg='yellow', bold=true })
		vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#51B3EC', bold=true })
	end
}
