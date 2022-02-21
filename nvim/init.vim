
if &compatible
  set nocompatible
endif

let s:dein_dir                   = '~/.cache/dein'
let s:dein_repo_dir              = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

let s:toml_dir                   = '~/repository/config/nvim/.dein'

let s:toml_defx_nvim          = s:toml_dir . '/defx-nvim.toml'
let s:toml_denite_nvim        = s:toml_dir . '/denite-nvim.toml'
let s:toml_vim_surround       = s:toml_dir . '/vim-surround.toml'
let s:toml_auto_pairs         = s:toml_dir . '/auto-pairs.toml'
let s:toml_tagbar             = s:toml_dir . '/tagbar.toml'
let s:toml_vim_commentary     = s:toml_dir . '/vim-commentary.toml'
let s:toml_vim_hug_neovim_rpc = s:toml_dir . '/vim-hug-neovim-rpc.toml'
let s:toml_nvim_yarp          = s:toml_dir . '/nvim-yarp.toml'
let s:toml_vim_devicons       = s:toml_dir . '/vim-devicons.toml'
let s:toml_echodoc_vim        = s:toml_dir . '/echodoc-vim.toml'
let s:toml_ale                = s:toml_dir . '/ale.toml'
let s:toml_vim_test           = s:toml_dir . '/vim-test.toml'
let s:toml_ultisnips          = s:toml_dir . '/ultisnips.toml'
let s:toml_vim_quickrun       = s:toml_dir . '/vim-quickrun.toml'
let s:toml_vimproc            = s:toml_dir . '/vimproc.toml'
let s:toml_vim_easy_align     = s:toml_dir . '/vim-easy-align.toml'
let s:toml_coc_nvim           = s:toml_dir . '/coc-nvim.toml'
let s:toml_nvim_jdtls         = s:toml_dir . '/nvim-jdtls.toml'
let s:toml_tabnine_vim        = s:toml_dir . '/tabnine-vim.toml'
let s:toml_vdebug             = s:toml_dir . '/vdebug.toml'
let s:toml_emmet_vim          = s:toml_dir . '/emmet-vim.toml'
let s:toml_vim_closetag       = s:toml_dir . '/vim-closetag.toml'
let s:toml_vim_easy_motion    = s:toml_dir . '/vim-easy-motion.toml'
let s:toml_dispatch_vim       = s:toml_dir . '/dispatch-vim.toml'
let s:toml_ack_vim            = s:toml_dir . '/ack-vim.toml'
let s:toml_vim_dadbob         = s:toml_dir . '/vim-dadbob.toml'
let s:toml_fzf_vim            = s:toml_dir . '/fzf-vim.toml'
let s:toml_vim_fugitive       = s:toml_dir . '/fzf-vim.toml'
let s:toml_any_jump_vim       = s:toml_dir . '/any-jaump-vim.toml'
let s:toml_vim_fugitive       = s:toml_dir . '/vim-fugitive.toml'
" let s:toml_deoplete_nvim = s:toml_dir . '/deoplete-nvim.toml'
" let s:toml_language_client_neovim = s:toml_dir . '/language-client-neovim.toml'

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(s:dein_dir)
	" call dein#load_toml(s:toml_deoplete_nvim)
	" call dein#load_toml(s:toml_ultisnips)

  call dein#begin(s:dein_dir)
  call dein#add(s:dein_repo_dir)

	call dein#load_toml(s:toml_vim_hug_neovim_rpc)
	call dein#load_toml(s:toml_nvim_yarp)

	call dein#load_toml(s:toml_coc_nvim)
	call dein#load_toml(s:toml_ale)

	call dein#load_toml(s:toml_defx_nvim)
	call dein#load_toml(s:toml_denite_nvim)

	call dein#load_toml(s:toml_tagbar)

	call dein#load_toml(s:toml_vim_surround)
	call dein#load_toml(s:toml_vim_commentary)
	call dein#load_toml(s:toml_auto_pairs)
	call dein#load_toml(s:toml_echodoc_vim)

	call dein#load_toml(s:toml_vim_test)
	call dein#load_toml(s:toml_vimproc)
	call dein#load_toml(s:toml_vim_quickrun)

	call dein#load_toml(s:toml_vim_easy_align)
	call dein#load_toml(s:toml_vdebug)

	call dein#load_toml(s:toml_emmet_vim)
	call dein#load_toml(s:toml_vim_closetag)

	call dein#load_toml(s:toml_dispatch_vim)

	" call dein#load_toml(s:toml_any_jump_vim)
	call dein#load_toml(s:toml_vim_easy_motion)
	call dein#load_toml(s:toml_ack_vim)
	call dein#load_toml(s:toml_fzf_vim)
	call dein#load_toml(s:toml_vim_dadbob)
	call dein#load_toml(s:toml_vim_fugitive)

	call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif



filetype plugin indent on
syntax enable


inoremap <silent> jj <ESC>
tnoremap <silent> jj <C-\><C-n>:wq

" inoremap <silent><C-l> <Del>

nnoremap <silent> <C-n> :bn<CR>
nnoremap <silent> <C-m> :bp<CR>
nnoremap <silent> X     :bdelete<CR>
nnoremap <silent> gj    gT 
nnoremap <silent> gk    gt 
nnoremap <silent> gx    :tabclose<CR> 
nnoremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>"
nnoremap <silent> R :%s/<C-r>=expand('<cword>')<CR>//g<Left><Left>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

set path+=$PWD/**
set inccommand=split

set laststatus=2
"set statusline=%t%m\ %<[%{&fenc!=''?&fenc:&enc}]\ [%{&ff}]\ %=[%Y]\ [%l/%L]
set statusline=%t%m\ %=[%l/%L]

language C
set encoding=utf-8
set fileencodings=utf-8
scriptencoding utf-8

colorscheme tokyonight

set fileformat=unix
set t_ut=""
set nolist
set noshowmode
set ambiwidth=single
set hidden
set guicursor=n-v-c:block,i-r:hor20
set cursorline
autocmd ColorScheme * highlight CursorLine  ctermfg=None ctermbg=240
autocmd ColorScheme * highlight Comment  ctermfg=246
set updatetime=50
set ttyfast

set nobackup

set iskeyword+=-

set virtualedit=block
set backspace=indent,eol,start


set wildmenu
set wildmode=full

set ignorecase

set smartcase

set smartcase
set incsearch

set nohlsearch


set noerrorbells

set showmatch matchtime=1
set shellslash
set display=lastline
set tabstop=2

set history=10000

set shiftwidth=2
set softtabstop=2

set noswapfile

set clipboard+=unnamed

syntax on

set visualbell t_vb=

nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Right> <Nop>
nnoremap <Left> <Nop>

inoremap <Up> <Nop>"
inoremap <Down> <Nop>
inoremap <Right> <Nop>
inoremap <Left> <Nop>
inoremap <BS> <Nop>


let g:python3_host_prog = '/root/.asdf/installs/python/3.9.9/bin/python'
