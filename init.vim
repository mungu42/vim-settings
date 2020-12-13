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
Plug 'preservim/nerdtree' "nerdTree Plugin for file explorer


" React Plugins 
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'

call plug#end()


