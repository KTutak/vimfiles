execute pathogen#infect()
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_linters_explicit = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
filetype plugin indent on
set autoindent
set encoding=utf-8
set fileencoding=utf-8
set undodir=~/vimfiles/.undo//
set backupdir=~/vimfiles/.backup//
set directory=~/vimfiles/.swp//
set number
set relativenumber
set expandtab
set tabstop=4
set shiftwidth=4
set guioptions=
syntax on
set background=dark
let g:solarized_italic=0
color solarized
let g:javascript_plugin_jsdoc = 1
set hlsearch
set incsearch
set completeopt-=preview
map Y y$
nnoremap <C-L> :nohl<CR><C-L>
let g:UltiSnipsSnippetDirectories=[$HOME.'/vimfiles/snips']
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = "~/vimfiles/snips"
" vim wiki
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
:command! CopyBuffer let @+ = expand('%:p')
nnoremap <SPACE> <Nop>
let mapleader="\<Space>"
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
