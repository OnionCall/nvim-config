return {
	"nvimtools/none-ls.nvim",
	dependencies = {
    	"nvimtools/none-ls-extras.nvim",
		"jose-elias-alvarez/typescript.nvim",
  	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.csharpier,
				null_ls.builtins.diagnostics.golangci_lint,
				require("typescript.extensions.null-ls.code-actions"),
--				require("none-ls.diagnostics.eslint_d"),
			},
		})

		vim.keymap.set("n", "<C-f>", vim.lsp.buf.format, {})
	end,
}
