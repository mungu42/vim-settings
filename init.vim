set tabstop=4
set shiftwidth=4


" Install vim-plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
         autocmd VimEnter * PlugInstall
endif

syntax on

call plug#begin('~/.vim/plugged')
	Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' "nerdTree Plugin for file explorer
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

	"themes
	" Plug 'glepnir/oceanic-material'
	" Plug 'jonathanfilip/vim-lucius'
	Plug 'christophermca/meta5'

	" Powerline (airline)
	Plug 'vim-airline/vim-airline'
	" tab bar
	Plug 'majutsushi/tagbar'  " show tags in a bar (functions etc) for easy browsing
	" React Plugins 
	Plug 'pangloss/vim-javascript'
	Plug 'leafgarland/typescript-vim'
	Plug 'maxmellon/vim-jsx-pretty'
	
	"Python Linters
	Plug 'w0rp/ale'  " python linters

	"Plug 'valloric/youcompleteme'

	"Icons
	Plug 'ryanoasis/vim-devicons'
	"git Gutters
	Plug 'airblade/vim-gitgutter'
	" Comment out by gc
	Plug 'tpope/vim-commentary'  

	" ncm2
	Plug 'ncm2/ncm2-bufword'  " buffer keyword completion
	Plug 'ncm2/ncm2-path'  " filepath completion

	Plug 'evanleck/vim-svelte', {'branch': 'main'}
call plug#end()

" Plugin Settings
let g:airline#extensions#tabline#enabled = 1
let g:NERDTreeGitStatusWithFlags = 1
" enable theme oceanic material
" ShortCuts
map <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

"easy split movement
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" Search Options
set hlsearch  " highlight search and search while typing
set incsearch
set visualbell


set guifont=DroidSansMono\ Nerd\ Font\ 11

" Theme Settings
let g:lucius_style="dark"
let g:lucius_contrast="low"
set background=dark
colorscheme meta5 

let g:airline_powerline_fonts = 1
set fileformat=unix
set mouse=a  " change cursor per mode
set number  " always show current line number

