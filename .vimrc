syntax on
set nocp

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
nnoremap <silent> <C-p> :Files<CR>
Plug 'fatih/vim-go'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
call plug#end()

set tabstop=2                 " Set tab length to 2
set expandtab                 " <tab> key replaced by spaces
set shiftwidth=2              " How many spaces to change with << and >>
set autoindent                " Keep indents already made
set smartindent               " Indent source code automatically

