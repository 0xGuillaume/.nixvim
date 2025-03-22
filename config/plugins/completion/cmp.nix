{
	plugins = {
		cmp = {
			enable = true;

			settings = {
				mapping = {
					__raw = ''
						cmp.mapping.preset.insert({
							['<C-b>'] = cmp.mapping.scroll_docs(-4),
							['<C-f>'] = cmp.mapping.scroll_docs(4),
							['<C-Space>'] = cmp.mapping.complete(),
							['<C-e>'] = cmp.mapping.abort(),
							['<CR>'] = cmp.mapping.confirm({ select = true }),
						})
					'';
				};
				snippet = {
					expand = "function(args) require('luasnip').lsp_expand(args.body) end";
				};

				autoEnableSources = true;

				# https://vonheikemen.github.io/devlog/tools/setup-nvim-lspconfig-plus-nvim-cmp/
				sources = [
					{ 
						# Suggestions based on LSP servers
						name = "nvim_lsp";
						keyword_length = 1;
					}
					{ 
						# Suggestions based on the current buffer
						name = "buffer";
						keyword_length = 3;
					}
					{
						name = "luasnip";
						keyword_length = 2;
					}
					{ name = "path"; } # Autocomplete filepath
				];
			};
		};

		cmp-nvim-lsp = { enable = true; };
		cmp-buffer = { enable = true; };
		cmp-path = { enable = true; };
	};
}
