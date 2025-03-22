{
	plugins.alpha = {
		enable = true;
		
		layout = [
			{
				type = "padding";
				val = 2;
			}
			{
				type = "text";
				val = [
					"███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
					"████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
					"██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
					"██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
					"██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
					"╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
				]; 
				opts = {
					h1 = "Type";
					position = "center";	
				};
			}
			{
				type = "padding";
				val = 2;
			}
			{
				type = "text";
				val = "Powered by Nixvim";
				opts = {
					h1 = "Keyword";
					position = "center";	
				};
			}
			{
				type = "padding";
				val = 2;
			}
			{
				type = "group";
				opts = {
					spacing = 1;
				};
				val = [
					{
						type = "button";
						val = "󰻭\tNew file\t\t";
						on_press.__raw = "function() vim.cmd[[ene]] end";

						opts = {
							keymap = ["n" "n" "<CMD>ene<CR>" {noremap = true; silent = true; nowait = true;}];
							
							shortcut = "n";
							position = "center";
							cursor = 3;
							width = 30;
							align_shortcut = "right";
							hl_shortcut = "keyword";	
						};
					}
					{
						type = "button";
						val = "󰍉\tFind file\t\t";
						on_press.__raw = "require('telescope.builtin').find_files";

						opts = {
							keymap = ["n" "ff" ":Telescope find_files <CR>" {noremap = true; silent = true; nowait = true;}];
							
							shortcut = "ff";
							position = "center";
							cursor = 3;
							width = 30;
							align_shortcut = "right";
							hl_shortcut = "keyword";	
						};
					}
					{
						type = "button";
						val = "󱀍\tFind word\t\t";
						on_press.__raw = "require('telescope.builtin').live_grep";

						opts = {
							keymap = ["n" "gs" ":Telescope live_grep <CR>" {noremap = true; silent = true; nowait = true;}];
							
							shortcut = "gs";
							position = "center";
							cursor = 3;
							width = 30;
							align_shortcut = "right";
							hl_shortcut = "keyword";	
						};
					}
					{
						type = "button";
						val = "󰈆\tQuit Neovim\t\t";
						on_press.__raw = "function() vim.cmd[[qa]] end";

						opts = {
							keymap = ["n" "q" "<CMD>qa<CR>" {noremap = true; silent = true; nowait = true;}];
							
							shortcut = "q";
							position = "center";
							cursor = 3;
							width = 30;
							align_shortcut = "right";
							hl_shortcut = "keyword";	
						};
					}
				];
			}
		];
	};
}
