" General settings for editor.
set number 
filetype plugin on 
syntax on 
set ai 
set si 
set noswapfile 
set tabstop=2  
set shiftwidth=2 
set smarttab
set smartcase
set nohlsearch
set incsearch 
set nowrap
set encoding=utf8
set clipboard=unnamed
set noendofline
set backspace=indent,eol,start
set belloff=all
set signcolumn=yes
set scrolloff=8
set laststatus=2
set mouse=a

call plug#begin('~/vimfiles/plugged')
	 Plug 'itchyny/lightline.vim'
	 Plug 'octol/vim-cpp-enhanced-highlight'
	 Plug 'jiangmiao/auto-pairs'
call plug#end()

" Settings for CPP Syntax Highlighting plugin.
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1

" Automatic template for C++
autocmd BufNewFile *.cpp execute "0r D:/CP/".input("Template name: ").".cpp"
