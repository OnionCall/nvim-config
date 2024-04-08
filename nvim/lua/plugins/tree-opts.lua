return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		filesystem = {
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
				hide_gitignored = true,
				-- hide_by_name = {
				-- 	".github",
				-- 	".gitignore",
				-- 	"package-lock.json",
				-- },
				-- never_show = { ".git" },
			},
		},
	},
}
