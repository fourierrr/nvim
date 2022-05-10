syntax on
let mapleader=" "
set hlsearch
set incsearch
set ignorecase
set smartcase
set cursorline
set number
set relativenumber

set cursorline
set wrap
set showcmd
set cmdheight=1
set updatetime=100
set encoding=UTF-8
set wildmenu

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
" set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set scrolloff=5
map <S-down> 7<down>
map <S-up> 7<up>
nmap <C-u> 7j
nmap <C-d> 7k

"move hole line up or down
nmap <A-up> <Esc>:m .-2<CR>
nmap <A-down> <Esc>:m .+1<CR>

"map <LEADER><LEADER> <ESC>/<++><CR>c4l
map <LEADER>html :%TOhtml<CR>

map <LEADER><up> <C-w>k
map <LEADER><down> <C-w>j
map <LEADER><left> <C-w>h
map <LEADER><right> <C-w>l

map <LEADER>n :set nu! relativenumber!<CR>:GitGutterToggle<CR>

noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

inoremap jk <ESC>

"vmode 快速调整代码缩进
vmap < <gv
vmap > >gv


nmap <leader>q :bdelete<cr>

map Q :q<CR>
map S :w<CR>
" Note: this has been replaced by plugin vim-floaterm
" open a terminal in a buttom split windows
" map T :sp<CR><C-w>j:term<CR>
map R :source %<CR>
map ; :

exec "nohlsearch"
au BufRead,BufNewFile Dockerfile.* set filetype=dockerfile

call plug#begin('~/.config/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'preservim/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'SirVer/ultisnips'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim',{ 'do': 'yarn install'  }
" Plug 'ayu-theme/ayu-vim'
Plug 'yegappan/mru'
Plug 'rakr/vim-one'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'voldikss/vim-floaterm'
Plug 'gcmt/wildfire.vim'
Plug 'honza/vim-snippets'
call plug#end()


"colorscheme conf ###############################################
"set termguicolors
"let ayucolor="dark"
"colorscheme ayu
colorscheme one
" set background=dark
highlight Normal guibg=NONE ctermbg=None
highlight Pmenu ctermbg=lightgray 
highlight Cursorline ctermbg=none cterm=underline 
" au BufRead,BufNewFile * highlight Pmenu ctermbg=lightgray 
" au BufRead,BufNewFile * highlight Cursorline ctermbg=none cterm=underline 




" ultisnips conf ###############################################
let g:UltiSnipsExpandTrigger="<tab>"



"mru conf #######################################
nnoremap mm :MRUToggle<CR>


"vim-go conf  ###############################################
" let g:go_def_mode="godef"
" let g:go_fmt_command = "goimports"
" let g:go_list_type = "quickfix"
" let g:go_fmt_autosave = 1
" let g:go_import_autosave = 1
" let g:go_auto_type_info = 1
" let g:go_highlight_types = 1
" let g:go_highlight_extra_types = 1
" let g:go_highlight_functions = 1
" let g:go_highlight_function_calls = 1
" let g:go_highlight_function_parameters = 1
" let g:go_highlight_fields = 1
" let g:go_highlight_operations = 1
let g:go_echo_go_info = 0
let g:go_doc_popup_window = 1
let g:go_def_mapping_enabled = 0
let g:go_template_autocreate = 0
let g:go_textobj_enabled = 0
let g:go_auto_type_info = 1
let g:go_def_mapping_enabled = 0
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_structs = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 0
let g:go_highlight_variable_declarations = 0
let g:go_doc_keywordprg_enabled = 0

"telescope conf
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>o <cmd>Telescope oldfiles<cr>




"fzf conf ###############################################
" nnoremap <silent><nowait> <LEADER>o :<C-u>FZF<CR> 
" nnoremap <silent><nowait> <LEADER>f :<C-u>Rg<CR> 
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

"nerdtree-git-plugin conf #######################################
"let g:NERDTreeGitStatusIndicatorMapCustom = {
"                \ 'Modified'  :'✹',
"                \ 'Staged'    :'✚',
"                \ 'Untracked' :'✭',
"                \ 'Renamed'   :'➜',
"                \ 'Unmerged'  :'═',
"                \ 'Deleted'   :'✖',
"                \ 'Dirty'     :'✗',
"                \ 'Ignored'   :'☒',
"                \ 'Clean'     :'✔︎',
"                \ 'Unknown'   :'?',
"                \ }

""nerdtree conf #################################################
"" autocmd vimenter * if !argc()|NERDTree|endif
"nnoremap ff :NERDTreeToggle<CR> 
"nnoremap fc :NERDTreeFind<CR>
"let NERDTreeShowHidden=1
"let g:NERDTreeWinSize = 35
""let g:NERDTreeDirArrowExpandable = '+'
""let g:NERDTreeDirArrowCollapsible = '-'
""let NERDTreeDirArrows = 1


"Togglebar conf #######################################
nmap tt :TagbarToggle<CR>
let g:tagbar_map_showproto = '\'
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }



"vim-ailline conf ###############################################
let g:airline_theme='one'
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTa

"vim-floaterm cof ###############################################
nmap T :FloatermToggle<CR>


"coc conf    #######################################
let g:coc_global_extensions = [
    \ 'coc-actions',
    \ 'coc-explorer',
    \ 'coc-snippets',
    \ 'coc-json',
    \ 'coc-yaml',
    \ 'coc-docker',
    \ 'coc-vimlsp',
	\ 'coc-go']

" 几个非常重要的定义跳转键,gd, gr
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>aw  <Plug>(coc-codeaction-selected)w
nmap <leader>rn <Plug>(coc-rename)

" coc-snippets
imap <C-a> <Plug>(coc-snippets-expand)
vmap <C-e> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-e>'
let g:coc_snippet_prev = '<c-n>'
imap <C-e> <Plug>(coc-snippets-expand-jump)
nmap ff :CocCommand explorer<CR>

"查找上一个下一个报错的代码段
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> <leader>- <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>= <Plug>(coc-diagnostic-next)

"在输入一部分字符的情况下，用tab来自动补全
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction


" 回车时，选择自动补全窗口的第一项
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


