set encoding=utf-8
set nocompatible
set number
set mouse=an
filetype off
:set regexpengine=1
:syntax enable

set hlsearch
set formatoptions-=cro

filetype plugin on
set omnifunc=syntaxcomplete#Complete

call plug#begin('~/.vim/plugged')

" theme

Plug 'szorfein/darkest-space'
Plug 'terryma/vim-multiple-cursors'

" gundo visual undo
Plug 'sjl/gundo.vim'

" status bar
Plug 'vim-airline/vim-airline'


Plug 'metakirby5/codi.vim'

"auto save file
Plug 'vim-scripts/vim-auto-save'

"editor config plugin
Plug 'editorconfig/editorconfig-vim'

Plug 'majutsushi/tagbar'
"Plug 'airblade/vim-gitgutter'
"" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets'

" nerdtree block

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

" Plug 'ryanoasis/vim-devicons'
" You Complete Me : need : cmake python nodejs sudo apt-get install python-dev
" python3-dev
Plug 'Valloric/YouCompleteMe', { 'do': 'git submodule update --init --recursive; ./install.py --clang-completer --js-completer --java-completer'  }

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


" need by typescript
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/vim-js-pretty-template'
Plug 'jason0x43/vim-js-indent'


"HTML5 plugin
Plug 'othree/html5-syntax.vim'
Plug 'othree/html5.vim'

" pair bracket etc ....
Plug 'jiangmiao/auto-pairs'

" snipplets engine
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
call plug#end()

" do sudo fc-cache -f -v to reshesh font cache
" nerd font
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
let g:airline_powerline_fonts = 1
set background=dark

" gundo parameters
let g:gundo_prefer_python3 = 1
nnoremap <F5> :GundoToggle<CR>

" youcompleteme
set completeopt-=preview


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
let g:syntastic_c_check_header = 1
let g:syntastic_c_checkers= ['']
let g:syntastic_c_compiler = 'clang'


let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker."
let g:syntastic_checkers_dockerfile = ['dockerfile_lint -r .dockerlint.yml']
" auto save set to 1 to enable
let g:auto_save = 0

nnoremap <F8> :TagbarToggle<CR>
nnoremap <C-B> :TernDef<CR>

" theme

colorscheme darkest-space

" sniplets configuration
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-v>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
