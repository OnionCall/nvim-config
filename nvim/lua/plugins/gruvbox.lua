return { 
	"ellisonleao/gruvbox.nvim", 
	priority = 999, 
	config = true, 
	opts = ...,
	config = function()	
		vim.cmd("colorscheme gruvbox")
	end
}

