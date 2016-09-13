set encoding=utf-8
set nocompatible
set number
set mouse=an
filetype off
:set regexpengine=1
:syntax enable

set hlsearch

filetype plugin on
set omnifunc=syntaxcomplete#Complete

call plug#begin('~/.vim/plugged')

" solarize theme
Plug 'altercation/vim-colors-solarized'

" status bar
Plug 'vim-airline/vim-airline'


Plug 'metakirby5/codi.vim'

"auto save file
Plug 'vim-scripts/vim-auto-save'

"editor config plugin
Plug 'editorconfig/editorconfig-vim'

Plug 'majutsushi/tagbar'

"" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets'

" nerdtree block
Plug 'ryanoasis/vim-devicons'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Nopik/vim-nerdtree-direnter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }


" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf'


" Shorthand notation; fetches https://github.com/junegunn/m-easy-align
"Plug 'junegunn/vim-easy-align'
" autocompte plugin

" You Complete Me : need : cmake python nodejs sudo apt-get install python-dev
" python3-dev
Plug 'Valloric/YouCompleteMe', { 'do': 'git submodule update --init --recursive; ./install.py --tern-completer'  }

"tern javascript autocomplete
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

" Add plugins to &runtimepath
"Plug 'tpope/vim-sensible'
Plug 'pangloss/vim-javascript'
Plug 'alvan/vim-closetag'
Plug 'jelera/vim-javascript-syntax' 
Plug 'maksimr/vim-jsbeautify'
Plug 'scrooloose/syntastic'
Plug 'moll/vim-node'
Plug 'othree/javascript-libraries-syntax.vim'

"HTML5 plugin
Plug 'othree/html5-syntax.vim'
Plug 'othree/html5.vim'

" pair bracket etc ....
Plug 'jiangmiao/auto-pairs'
call plug#end()

set background=dark
colorscheme solarized


filetype plugin indent on
"set indent space number
":set shiftwidth=2

nmap <S-Up> V
nmap <S-Down> V
"nmap <Space> <CR>

" these are mapped in visual mode
vmap <S-Up> k
vmap <S-Down> j
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <F2> :NERDTreeToggle<CR>

"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>


"syntastic default config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']

" auto save set to 1 to enable
let g:auto_save = 0

nnoremap <F8> :TagbarToggle<CR>
nnoremap <C-B> :TernDef<CR>
