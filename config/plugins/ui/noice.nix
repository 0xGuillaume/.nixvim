{
    plugins = {
        noice = {
            enable = true;

            messages = {
                enabled = true;
            };

            lsp = {
                message = {
                    enabled = true;
                };

                progress = {
                    enabled = false;
                    view = "mini";
                };
            };

            cmdline = {
                view = "cmdline";

                format = {
                    cmdline = {
                        icon = "  ";
                        lang = "vim";
                        pattern = "^:";
                    };

                    search_down = {
                        icon = "   ";
                        kind = "search";
                        lang = "regex";
                        pattern = "^/";
                    };

                    help = {
                        icon = "   ";
                        pattern = "^:%s*he?l?p?%s+";
                    };
                };
            };
        };
    };
}
