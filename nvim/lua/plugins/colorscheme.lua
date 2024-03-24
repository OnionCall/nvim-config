return {
--	"ellisonleao/gruvbox.nvim",
--	priority = 999,
--	config = true,
--	opts = ...,
--	config = function()
--		vim.cmd("colorscheme gruvbox")
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd("colorscheme catppuccin")
	end
}

