syntax enable
set background=dark
colorscheme solarized
set term=screen-256color

if has('mouse')
	set mouse=a
endif

set tabstop=2
set softtabstop=2
set ts=2
set shiftwidth=2
set expandtab
set cursorline
set number
set smartindent

set backspace=eol,start,indent
set whichwrap+=<,>

"开始使用Vundle的必须配置
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"使用Vundle来管理Vundle
Plugin 'gmarik/vundle'

"PowerLine插件 状态栏增强展示
Plugin 'Lokaltog/vim-powerline'
"vim有一个状态栏 加上powline则有两个状态栏
set laststatus=2
set t_Co=256
let g:Powline_symbols='fancy'

"Vundle配置必须 开启插件
filetype plugin indent on

Plugin 'Valloric/YouCompleteMe'
let g:ycm_auto_trigger = 1
Plugin 'scrooloose/syntastic'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_cpp_check_header = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

Plugin 'rdnetto/YCM-Generator'

Plugin 'rhysd/vim-clang-format'

Plugin 'vim-scripts/Conque-GDB'
let g:ConqueTerm_Color = 2    " 1: strip color after 200 lines, 2: always with color
let g:ConqueTerm_CloseOnEnd = 1    " close conque when program ends running
let g:ConqueTerm_StartMessages = 0 " display warning messages if conqueTerm is configured incorrectly 

call vundle#end()
filetype plugin indent on



set clipboard=unnamed

