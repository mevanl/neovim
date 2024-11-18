
# NOTE #
# I WILL BE SWITCHING TO NIXVIM, BUT THIS WILL STILL BE HERE IF I NEED IT, BUT NOT SOURCED BY NIX #

# nvim is not declared by nix as to make it as portable as possible for other distros 
{
    programs.neovim = {
        enable = true; 

        defaultEditor = true;
        viAlias = true;
        vimAlias = true;
    };
}
