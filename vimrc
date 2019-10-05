" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work  with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

" Restore cursor position, window position, and last search after running a
" command.
function! Preserve(command)
  " Save the last search.
  let search = @/

  " Save the current cursor position.
  let cursor_position = getpos('.')

  " Save the current window position.
  normal! H
  let window_position = getpos('.')
  call setpos('.', cursor_position)

  " Execute the command.
  execute a:command

  " Restore the last search.
  let @/ = search

  " Restore the previous window position.
  call setpos('.', window_position)
  normal! zt

  " Restore the previous cursor position.
  call setpos('.', cursor_position)
endfunction

" Re-indent the whole buffer.
function! Indent()
  call Preserve('normal gg=G')
endfunction

""""""""""""




set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required


"AUTOINDENTATIONN PLUS TAB

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
"GIVES HE SMARTINDENT




" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ








"encoding and spell checks :"
map <F5> :setlocal spell! spelllang=fr,en_us   <CR>
map <F6> :setlocal spell! spelllang=en_us   <CR>
set encoding=utf-8
set fileencoding=utf-8
call vundle#begin()
" ...

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'vim-airline/vim-airline'
Plugin 'christoomey/vim-system-copy'
Plugin 'terryma/vim-multiple-cursors'

Plugin 'tpope/vim-commentary'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'Raimondi/delimitMate'
Plugin  'davidhalter/jedi-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'w0rp/ale'
Plugin 'tikhomirov/vim-glsl'
Plugin 'thinca/vim-quickrun'
Plugin 'vim-latex/vim-latex'
" ...
call vundle#end()

"ALE PLUGIN"
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

map <C-o> :NERDTreeToggle<CR>
map <Space> :ALEToggle <CR>

" Enable completion where available.
" This setting must be set before ALE is loaded.
let g:ale_completion_enabled = 1




"colorscheme lucid
colorscheme afterglow
nnoremap <Left> :echo "No left for you!"<CR>
nnoremap <Right> :echo "No right for you!"<CR>
nnoremap <Up> :echo "No up for you!"<CR>
nnoremap <Down> :echo "No down for you!"<CR>
"twig colore
au BufRead,BufNewFile *.twig set syntax=htmldjango


"ESCAPE ON MAJ
"au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
"au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
"display line numbers
set number

"eclim


"make Wq like wq
":command WQ wq
:command Wq wq
:command W w
:command Q q
:command WQ wq




"YCM"
 nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
let g:ycm_key_list_stop_completion = ['<Space>']






 nnoremap <F1> :!clear ; git status ; git log --oneline<CR>


 nnoremap <F2> :!clear;git pull origin master; git diff %<CR>

 nnoremap <F3> :!clear;git add %<CR>


 nnoremap <F4> :!clear; read -p "Enter Your Commit name: "  commitname;git commit -m "$commitname" %<CR>

 nnoremap <F5> :!git push -f origin master<CR>


 nnoremap <F6> :QuickRun<CR>


"glsl autocompletion
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl
