{
	keymaps = [

		# Normal mode
		{
			action = "<cmd>Explore<CR>";
			key = "<leader>e";
		}
		{
			action = "o<ESC>";
			key = "oo";
		}
		{
			action = "O<ESC>";
			key = "OO";
		}
		{
			action = "y$";
			key = "Y";
		}
		{
			action = ":bnext<CR>";
			key = "<C-Right>";
		}
		{
			action = ":bprev<CR>";
			key = "<C-Left>";
		}
		{
			action = "<cmd>!chmod + %<CR>";
			key = "<leader>w";
			options.silent = true;
		}

		# Insert mode
		{
			action = "<ESC>";
			key = "<C-c>";
		}
	];
}
