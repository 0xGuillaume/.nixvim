{ config
, lib
, ...
}:

let
  colors = import ../../colors/custom.nix { };
in

{
    config = lib.mkIf config.colorschemes.base16.enable {

        plugins = {
            lualine = {
                enable = true;
                globalstatus = true;
                disabledFiletypes = {
                    statusline = ["dashbaord" "alpha" "starter" ];
                };

                # Color theme.
                theme = {
                    normal = {
                        b = {
                            bg = colors.base02;
                        };
                        c = {
                            bg = colors.base02;
                        };
                        z = {
                            bg = colors.base02;
                        };
                        y = {
                            bg = colors.base02;
                        };
                    };
                };

                # Sections style.	
                sections = {
                    lualine_a = [
                        {
                            name = "mode";
                            fmt = "string.lower";
                                #color = {
                                #	fg = "#ffffff";
                                #	bg = "#ffffff";
                                #};
                            separator.right = "";
                        }	
                    ];	

                    lualine_b = [
                        {
                            name = "branch";
                            icon = "";
                            separator.right = "";
                    #		color = {
                    #			fg = "#1A1B26";
                    #			bg = "#ffffff";
                    #		};
                        }
                        "diff"
                    ];

                    lualine_c = [
                        {
                            name = "diagnostic";
                            separator.left = "";
                            extraConfig = {
                                symbols = {
                                    error = " ";
                                    warn = " ";
                                    info = " ";
                                    hint = "󰝶 ";
                                };
                            };
                            #color = {
                            #	fg = "#1A1B26";
                            #	bg = "#ffffff";
                            #};
                        }
                    ];

                    lualine_x = [
                        {
                            name = "filetype";
                            extraConfig = {
                                icon_only = true;
                            };
                        }
                    ];

                    lualine_y = [
                        {
                            name = "filename";
                            extraConfig = {
                                symbols = {
                                    modified = "";
                                    readonly = "";
                                    unnamed = "";
                                };
                            };
                            #color = {
                            #	fg = "#1A1B26";
                            #	bg = "#ffffff";
                            #};
                            separator.left = "";
                        }
                    ];

                    lualine_z = [
                        {
                            name = "location";
                            #color = {
                            #	fg = "#1A1B26";
                            #	bg = "#ffffff";
                            #};
                        }
                    ];
                
                };
            };
        };
};
}
