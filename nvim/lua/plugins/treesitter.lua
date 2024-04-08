return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
			config.setup({
			ensure_installed = {"lua", "go", "typescript", "c_sharp", "vue"},
			auto_install = true,
			highlight = { enable = true },
			indentindent = { enable = true },
		})
	end
}
