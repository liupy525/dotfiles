""""""""""""""""""""""""""""""""""
""实用设置
""""""""""""""""""""""""""""""""""

" ColorScheme
colorscheme delek
let g:molokai_original = 1
set guifont=Monaco:h14

" 设置当文件被改动时自动载入
set autoread

"共享剪贴板  
""set clipboard+=unnamed 
set clipboard=unnamed

"从不备份  
set nobackup

"自动保存
set autowrite

set ruler                   " 打开状态栏标尺

set cursorline              " 突出显示当前行

set magic                   " 设置魔术

set guioptions-=T           " 隐藏工具栏

set guioptions-=m           " 隐藏菜单栏

" 折叠设置
" set foldenable            " 开启折叠
" set foldcolumn=0
" set foldmethod=indent 
" set foldlevel=3 

" 不要使用vi的键盘模式，而是vim自己的
set nocompatible

" 语法高亮
syntax on

" 去掉输入错误的提示声音
set noeb

" 在处理未保存或只读文件的时候，弹出确认
set confirm

" 自动缩进
set autoindent
set cindent

" Tab键的宽度
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4

"要用空格代替制表符
set expandtab

" 在行和段开始处使用制表符
" set smarttab

" 显示行号
set number

" 历史记录数
set history=1000

"禁止生成临时文件
set nobackup
set noswapfile

"搜索忽略大小写
set ignorecase

"搜索逐字符高亮
set hlsearch
set incsearch

"行内替换
set gdefault

"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn

" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ %y\ [Line:%l/%L,Column:%c]\ %{strftime(\"%m/%d-%H:%M\")}
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
" set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 
" set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

" 总是显示状态行
set laststatus=2

" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2

" 保存全局变量
set viminfo+=!

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" 字符间插入的像素行数目
set linespace=0

" 增强模式中的命令行自动完成操作
set wildmenu

" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2

" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

" 高亮显示匹配的括号
set showmatch

" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1

" 光标移动到buffer的顶部和底部时保持12行距离
set scrolloff=12

" 为C程序提供自动缩进
" set smartindent

" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt


"自动补全
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
":inoremap { {<CR>}<ESC>O
":inoremap } <c-r>=ClosePair('}')<CR>

function! ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		  return "\<Right>"
	else
		  return a:char
	endif
endfunction

" 打开文件类型监测，允许插件，允许特定文件缩进
filetype plugin indent on 


""""""""""""""""""""""""""""""""""
""插件设置
""""""""""""""""""""""""""""""""""

"添加WinManager侧边栏
let g:winManagerWindowLayout='FileExplorer'
nmap wm :WMToggle<cr>

"miniBuffer
" " use C-TAB and C-S-Tab to switch buffers
let g:miniBufExplMapCTabSwitchBufs = 1
" " use C-h,j,k,l to switch buffers
let g:miniBufExplMapWindowNavVim = 1

"SuperTab
let g:SuperTabDefaultCompletionType="context"  
" " I really HATE the preview window !!!
set completeopt=longest,menu



""""""""""""""""""""""""""""""""""
"" 自定义快捷键
""""""""""""""""""""""""""""""""""
:imap <C-h> <Left>
:imap <C-j> <Down>
:imap <C-k> <Up>
:imap <C-l> <Right>
