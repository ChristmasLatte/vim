" File              : .vimrc"
" Author            : quan yizhuo"
" Date              : 2022-07-09"
" Last Modified Date: 2022-07-09"
" Last Modified By  : quan yizhuo"

" 关闭兼容模式。由于这个选项是最最基础的选项，会连带很多其它选项发生变动（称作副作用），所以它必需是第一个设定的选项 
set nocompatible
" 不忽略大小写
set noic

" 设置背景配色
set background=dark

" 设置文件编码
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,latin1
" unix和windows文件的结尾格式不同
set fileformat=unix
" 显示行号
set nu

" 高亮光标所在的行列
set cursorcolumn
set cursorline

" 高亮搜索结果
set hlsearch

" 设置终端下开启全部颜色
set t_Co=256

"设置一个tab缩进4个空格
set tabstop=4

" 设置缩进对应一个tab
set shiftwidth=4

" 设置之后，会把一个 tab 字符替换成 tabstop 选项值对应的多个空格
set expandtab

" 打开自动缩进
set autoindent

" 开启代码折叠
set foldmethod=indent
" 打开文件时不要自动折叠
set foldlevel=99
" 高亮当前行和当前列的缩写
" set cul
" set cuc


" 在终端上方显示文件路径
set title


" 打开底部状态栏
set laststatus=2
" 并在状态栏显示当前文件的路径
set statusline+=%#warningmsg#
set statusline+=%*


" 将前缀键定义为逗号，pymode插件中的一些快捷键会用到
let mapleader=","


execute pathogen#infect()
filetype off
" 启用pathogen
call pathogen#infect()
" 启用安装的插件自己的说明文档
call pathogen#helptags()

" jedi-vim's setting
" disable the auto-initialization
" let g:jedi#auto_initialization = 0
" 输入小数点时自动开始补全提示
let g:jedi#popup_on_dot = 1
" 不显示函数签名
let g:jedi#show_call_signatures = "2"
" Crtl+N 主动补全
let g:jedi#completions_command = "<C-N>"

" let g:ale_linters = {'python': ['flake8']}

" plugin indent filtype all on, this shoule after call pathogen#infect()
filetype plugin indent on
syntax on

" vim-latex-live-preview's setting
" let g:livepreview_previewer = 'open -a Preview'

" pymode's seting
" let g:pymode_options_max_line_length = 120
" let g:pymode_lint_options_pep8 = {'max_line_length': g:pymode_options_max_line_length}
" let g:pymode_options_colorcolumn = 1


" Nerd Commenter配置
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments"
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
" let g:NERDToggleCheckAllLines = 1

set timeout timeoutlen=3000

" 设置快捷键
" let python excution in VIM
:map <C-B> <Esc>:w<CR>:!clear;python %<CR>
imap <C-B> <Esc>:w<CR>:!clear;python %<CR>
" " Ctrl + S 保存文件
