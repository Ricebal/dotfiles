set number
set relativenumber
set nocompatible
filetype off

call plug#begin('~/.config/nvim/modules')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

filetype plugin indent on
syntax on
set smartcase
set noerrorbells
set smartindent

nmap <space>e <Cmd>CocCommand explorer<CR>

