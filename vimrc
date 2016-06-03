let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
set background=dark
"colorscheme solarized
"colorscheme gruvbox
colorscheme molokai
set t_Co=256
" <Leader>
let mapleader=";"
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
"nmap <Leader>w :w<CR>

"nmap <Leader>a <C-w-h>
"nmap <Leader>s <C-w-j>
"nmap <Leader>d <C-w-l>
"nmap <Leader>w <C-w-j>

" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
" 高亮显示搜索结果
set hlsearch
" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
set autoindent
set smartindent     " indent when

"hi Normal ctermfg=252 ctermbg=none

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'oblitum/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'Mizuchi/STL-Syntax'
Plugin 'gcmt/wildfire.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'rhysd/vim-clang-format'
call vundle#end()            " required
filetype plugin indent on    " required

" =======================================
" YCM Begin
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_confirm_extra_conf = 0
let g:ycm_cache_omnifunc=0
set completeopt-=preview
nnoremap <leader>j :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>k :YcmCompleter GoToDefinition<CR>
" YCM end
" =======================================

" =======================================
" WildFire.vim Begin
map <SPACE> <Plug>(wildfire-fuel)
vmap <C-SPACE> <Plug>(wildfire-water)

let g:syntastic_cpp_compiler_options='-std=c++11 -stdlib=libc++'

" =======================================
map <f6> :NERDTreeToggle<CR>
let NERDTreeWinSize=20

" ======================================
" 显示/隐藏 MiniBufExplorer 窗口
map <Leader><F4> :MBEToggle<cr>
" " buffer 切换快捷键
"map <Leader>a :MBEbn<cr>
"map <Leader>l :MBEbp<cr>

let g:solarized_termcolors=256
let g:solarized_degrade=1
