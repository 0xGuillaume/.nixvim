{ config
, lib
, ...
}:

let
  colors = import ../config/colors/custom.nix { };
in

{
    config = lib.mkIf config.colorschemes.base16.enable {
        highlight = {

            # Vim
            LineNr = {
                fg = colors.base02;
                bg = "none";
            };
            CursorLineNr = {
                fg = "none";
                bg = "none";
            };
            StatusNormal = {
                fg = "none";
                bg = "none";
            };
            Normal = {
                fg = colors.base0F;
                bg = colors.base00;
            };
            CursorLine = {
        		bg = colors.base01;
            };
            WinSeparator = {
                fg = colors.base01;
            };

            # Status line
            StatusLine = {
                bg = colors.base02;
            };

            # Telescope
            TelescopeBorder = {
                bg = colors.base00;
            };
            TelescopeNormal = {
                bg = colors.base00;
            };

            # Telescope Prompt
            TelescopePromptNormal = {
                bg = colors.base00;
                fg = colors.base0F;
            };
            TelescopePromptBorder = {
                #bg = colors.base02;
                fg = colors.base0F;
            };
            TelescopePromptPrefix = {
                bg = colors.base00;
                fg = colors.base02;
            };
            TelescopePromptTitle = {
                bg = colors.base00;
                fg = colors.base0F;
            };

            # Telescope Results
            TelescopeResultsTitle = {
                bg = colors.base00;
                fg = colors.base0F;
            };
            TelescopeResultsBorder = {
                #bg = colors.base02;
                #fg = colors.base02;
                fg = colors.base0F;
            };
            TelescopeResultsNormal = {
                bg = colors.base00;
                fg = colors.base0F;
            };
            TelescopeSelection = {
                bg = colors.base01;
            };

            # Noice
            NoiceCmdLine = {
                bg = colors.base02;
            };
            NoiceCmdLinePopupBorderCmdline = {
                fg = colors.base0F;
            };
            NoiceCmdLinePopupBorderSearch = {
                fg = colors.base0F;
            };
            NoiceCmdLineIconCmdline = {
                fg = colors.base0C;
            };
            NoiceCmdLineIconSearch = {
                fg = colors.base0C;
            };
            NoiceCmdLineIconHelp = {
                fg = colors.base0C;
            };
        };
    };
}
