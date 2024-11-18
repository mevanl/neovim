-- this file handles everything regarding language servers 
return {     
     -- lspconfig lets us setup lsp's, we will use 
     -- mason for download and update LSPs 
     "neovim/nvim-lspconfig", 
     dependencies = {
          "williamboman/mason.nvim",
          "williamboman/mason-lspconfig.nvim",
     },


}
