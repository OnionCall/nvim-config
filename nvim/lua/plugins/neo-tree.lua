return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	-- this will not work with the config function, I don't know why. If you want to show .files, 
	-- you will have to commend out lines 16 through 28
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
	config = function()
		vim.keymap.set("n", "<C-j>", "<CMD>Neotree toggle<CR>", {})
		-- to toggle hidden files is shift+h
		local neotree = require("neo-tree")

		neotree.setup({
			event_handlers = {
				{
					event = "file_opened",
					handler = function(file_path)
					  --auto close
					  require("neo-tree").close_all()
					end
				},
			},
		})
	end,
}
