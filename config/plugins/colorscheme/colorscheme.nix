{
    colorschemes = {
        base16 = {
            enable = true;
            setUpBar = false;
            colorscheme = import ../../colors/custom.nix { };

            settings = {
                telescope = true;
            };
        };
    };
}
