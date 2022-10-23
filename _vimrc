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
set complete+=kspell
set completeopt=menuone,longest
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
colorscheme codedark

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=JetBrains\ Mono\ NL:h10:cANSI
  endif
endif

call plug#begin('~/vimfiles/plugged')
	 Plug 'itchyny/lightline.vim'
	 Plug 'octol/vim-cpp-enhanced-highlight'
	 Plug 'vim-scripts/AutoComplPop'
	 Plug 'jiangmiao/auto-pairs' 
call plug#end()

" Settings for CPP Syntax Highlighting plugin.
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1

autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 -Wshadow -Wall -o %:r % -O3 -Wno-unused-result -DLOCAL_MACHINE,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F10> :!%:r<CR>

" Automatic template for C++
autocmd BufNewFile *.cpp execute "0r D:/CP/templates/".input("Template name: ").".cpp"
