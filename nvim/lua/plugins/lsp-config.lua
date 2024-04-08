return {
  	{
    	"williamboman/mason.nvim",
    	lazy = false,
    	config = function()
      		require("mason").setup({
				PATH = "prepend",
			})
    	end,
  	},
  	{
    	"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"tsserver",
					"gopls",
					"csharp_ls",
					"volar",
				}
			})
		end
  	},
  	{
    	"neovim/nvim-lspconfig",
		lazy = false,
    	config = function()
      		local capabilities = require('cmp_nvim_lsp').default_capabilities()

			local vue_typescript_plugin = require('mason-registry')
			.get_package('vue-language-server')
			:get_install_path()
			..'/node_modules/@vue/language-server'
			..'/node_modules/@vue/typescript-plugin'

			-- local vue_typescript_plugin = '/home/linuxbrew/.linuxbrew'
			-- 	.. '/lib/node_modules'
			-- 	.. '/@vue/language-server/node-modules'
			-- 	.. '@vue/typescript-plugin'

      		local lspconfig = require("lspconfig")
      		lspconfig.lua_ls.setup({
        		capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = {
							globals = {
								"vim"
							}
						}
					}
				}
      		})
      		lspconfig.tsserver.setup({
        		capabilities = capabilities,
				init_options = {
					plugins = {
						{
							name = "@vue/typescript-plugin",
							location = vue_typescript_plugin,
							languages = {'javascript', 'typescript', 'vue'}
						},
					}
				},
				filetypes = {
					'javascript',
					'javascriptreact',
					'javascript.jsx',
					'typescript',
					'typescriptreact',
					'typescript.tsx',
					'vue',
				},
      		})
      		lspconfig.gopls.setup({
        		capabilities = capabilities,
				settings = {
					completeUnimported = true
				}
      		})
			lspconfig.csharp_ls.setup({
				capabilities = capabilities
			})
			lspconfig.volar.setup({
				capabilities = capabilities,
					init_options = {
						typescript = {
							tsdk = '/home/linuxbrew/.linuxbrew/lib/node_modules/typescript/lib'
						}
					},
				  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
			})

      		vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      		vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, {})
      		vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    	end,
  	},
}
