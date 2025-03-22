{ config
, lib
, ...
}:

let
  colors = import ../../colors/custom.nix { };
in

{
  plugins.bufferline = {
    enable = false;

    tabSize = 22;
    modifiedIcon = " ●  ";
    closeIcon = "   ";

    separatorStyle = "thin";
		highlights = lib.mkIf config.colorschemes.base16.enable {
			fill = {
				bg = colors.base01;	
				fg = colors.base00;
			};

			background = {
				bg = colors.base01;	
				fg = colors.base02;
			};

            bufferSelected = {
                bg = colors.base00;
                fg = colors.base05;
                italic = false;
                bold = false;
            };

            bufferVisible = {
                bg = colors.base01;
                fg = colors.base0F;
            };

            separator = {
                bg = colors.base01;
                fg = colors.base01;
            };

			offsetSeparator = {
				bg = colors.base01;	
			};

			closeButton = {
				bg = colors.base01;	
			};
		};
  };
}
