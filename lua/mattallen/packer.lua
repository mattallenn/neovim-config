return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
      -- Packer can manage itself
-- Using Packer
use({
    'navarasu/onedark.nvim',
    as = 'onedark',
    config = function()
        vim.cmd('colorscheme onedark')
    end
})

use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    }
}
use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-nvim-lua'},

        -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
    }
}

--Lualine
use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

use 'tpope/vim-commentary'

use({ "iamcco/markdown-preview.nvim", 
     run = "cd app && npm install", 
     setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
     ft = { "markdown" }, })

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
}

--bufferline (tabs)
use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
}
end)



