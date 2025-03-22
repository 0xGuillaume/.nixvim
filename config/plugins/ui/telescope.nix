{
	plugins = {
		telescope = {
			enable = true;
            settings = {
                defaults = {
                    layout_config = {
                        prompt_position = "top";
                    };

                    selection_caret = " ¬ ";
                    sorting_strategy = "ascending";
                    
                    preview = {
                        hide_on_startup = true;
                    };
                };

                pickers = {
                    layout = {
                        borderchars = [ "─" "│" "─" "│" "├" "┤" "┘" "└" ];
                    };
                    find_files = {
                        theme = "dropdown";
                        disable_devicons =  true;
                        #borderchars = {
                        #    prompt = [ "─" "│" "─" "│" "┌" "┐" "┘" "└" ];
                        #    results = [ "─" "│" "─" "│" "├" "┤" "┘" "└" ];
                        #};
                    };
                    git_files = {
                        theme = "dropdown";
                        disable_devicons =  true;
                        #borderchars = {
                        #    prompt = [ "─" "│" "─" "│" "┌" "┐" "┘" "└" ];
                        #    results = [ "─" "│" "─" "│" "├" "┤" "┘" "└" ];
                        #};
                    };
                    buffers = {
                        theme = "dropdown";
                        disable_devicons =  true;
                        #borderchars = {
                        #    prompt = [ "─" "│" "─" "│" "┌" "┐" "┘" "└" ];
                        #    results = [ "─" "│" "─" "│" "├" "┤" "┘" "└" ];
                        #};
                    };
                };
            };

			keymaps = { 
				"<leader>ff" = "find_files";
				"<leader>fg" = "git_files";
				"<leader>gs" = "grep_string";
				"<leader>bf" = "buffers";
			};
		};
	};
}
