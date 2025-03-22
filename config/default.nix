{
  # Import all your configuration modules here
  imports = [
		./highlight.nix
		./keymaps.nix
		./sets.nix

		./plugins/colorscheme/colorscheme.nix

		./plugins/completion/cmp.nix

		./plugins/lsp/lspkind.nix
		./plugins/lsp/lsp.nix

		./plugins/snippets/luasnip.nix

		./plugins/treesitter/treesitter.nix

		./plugins/ui/alpha.nix
		./plugins/ui/bufferline.nix
		./plugins/ui/lualine.nix
		./plugins/ui/markdown.nix
		./plugins/ui/noice.nix
		./plugins/ui/telescope.nix
	];
}
