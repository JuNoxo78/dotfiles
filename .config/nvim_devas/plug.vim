if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
  Plug 'hoob3rt/lualine.nvim'
  " Plug 'kristijanhusak/defx-git'
  " Plug 'kristijanhusak/defx-icons'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'folke/lsp-colors.nvim'
  Plug 'nvim-lua/completion-nvim'
  Plug 'sheerun/vim-polyglot'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'windwp/nvim-autopairs'
endif

Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

"" personal
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-eunuch'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-commentary'
Plug 'Yggdroot/indentLine' 
Plug 'mhinz/vim-signify'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release', 'for': ['sh', 'vim', 'zsh', 'gitconfig', 'gitignore', 'text', 'cpp']}
Plug 'ervandew/supertab'
Plug 'kevinhwang91/rnvimr'
Plug 'tpope/vim-surround'

call plug#end()

