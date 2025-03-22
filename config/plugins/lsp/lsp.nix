{
	plugins = {
		lsp = {
			enable = true;

			servers = {
				gopls.enable = true;
				jsonls.enable = true;
				nixd.enable = true;
				pyright.enable = true;
				sqls.enable = true;
				terraformls.enable = true;
				yamlls.enable = true;
			};
		};
	};

	# Configure filetypes
	filetype = {
		extension = {
			tf = "terraform";
			tfvars = "terraform";
		};
	};
}
