""""""""""""""""""""""""""""""""""""
" terminal emulator setting
""""""""""""""""""""""""""""""""""""
tnoremap <Esc> <C-\><C-n>:q<CR> " exit neovim terminal

""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""
" normal settings
""""""""""""""""""""""""""""""""""""
set cursorline

set showmatch " highlight matching part of the pair for [] {} ()

syntax on " Enable syntax highlight

set clipboard=unnamed " make clipboard available everywhere

set nofoldenable    " disable folding

" Searching
set ignorecase " case insensitive search
set smartcase " case-sensitive if expresion contains a capital letter

set number "show line number

set title " show file path

set magic " regex magic

"tabs
set expandtab "replace tab by space
set tabstop=4 " one tab = 4 space
set shiftwidth=4

" Backups, Swap Files
set nobackup
set noswapfile

" vim omni completion
set omnifunc=syntaxcomplete#Complete

set rtp+=/usr/local/opt/fzf "load fzf

filetype plugin indent on " filetype rection plugin load and indent

let mapleader = ',' "mapleader for more key combos

colorscheme koehler

" complete menu color
hi Pmenu ctermfg=lightgreen ctermbg=NONE
hi PmenuSel ctermfg=red ctermbg=lightyellow


""""""""""""""""""""""""""""""""""""
" map settings
""""""""""""""""""""""""""""""""""""
nmap T :tabnew<CR>

"move vertically by visual line
nmap j gj
nmap k gk

nmap <tab> gt
nmap <S-tab> gT

" keep selection when shifting sidewards
xnoremap < <gv
xnoremap > >gv

map Z :so %<CR>

map <C-p> :FZF<CR>
""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""
" Plugings
""""""""""""""""""""""""""""""""""""
call plug#begin()
Plug 'junegunn/fzf.vim' " fzf wrapper for vim 
Plug 'Shougo/deoplete.nvim' " Dark powered asynchronous completion framework for neovim
Plug 'flazz/vim-colorschemes' " one stop shop for vim colorschemes
Plug 'mattn/emmet-vim' " emmet for vim
Plug 'mhinz/vim-signify' " show VCS diff via Vim sign column
Plug 'terryma/vim-multiple-cursors' " similar to Sublime Text multiple cursor
Plug 'tpope/vim-surround' " parentheses, brackets, quotes, XML tags, and more.
Plug 'jiangmiao/auto-pairs' " insert or del brackets, parens, quotes in pair 
Plug 'ervandew/supertab' " Use tab to loop through insert mode completion
Plug 'easymotion/vim-easymotion' "Vim motion on speed
Plug 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in visual mode
Plug 'ap/vim-css-color' " Preview colours in source code while editing
Plug 'benekastah/neomake' " A plugin for asynchronous :make using Neovim's job-control functionality
Plug 'mkitt/tabline.vim' " Configure tabs within Terminal Vim
Plug 'itchyny/lightline.vim' " customize vim statusline
Plug 'SirVer/ultisnips' " snippet engine
Plug 'honza/vim-snippets' " snippets for ultisnips
Plug 'klen/python-mode' " for python 
Plug 'ConradIrwin/vim-bracketed-paste' "automatic :set paste
Plug 'mhinz/vim-startify' " The fancy start screen for Vim.
call plug#end()
""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""
" Plugins settings
""""""""""""""""""""""""""""""""""""
" Deoplete
let g:deoplete#enable_at_startup = 1

" emmet settings
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_leader_key=','

" vim-signify
let g:signify_vcs_list=[ 'git'] " It determines the VCS to check for and in what order

" vim-easymotion settings
map <Leader> <Plug>(easymotion-prefix)
nmap / <Plug>(easymotion-sn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

" Neomake settings
autocmd! BufWritePost * Neomake " Run Neomake on every save
let g:neomake_open_list = 2 "Always open quickfix or location list

" lightline settings
let g:lightline = {
      \ 'colorscheme': 'landscape',
      \ }

" Ultisnips settings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
nnoremap <F7> :UltiSnipsAddFiletypes htmldjango<CR>
au FILETYPE htmldjango :UltiSnipsAddFiletypes htmldjango<CR>
