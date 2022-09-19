" 读取init.lua的设置
"
lua require('init')

" 设置vim和terminal的文件格式编码
set encoding=utf-8
set termencoding=utf-8
set mouse+=a " 允许鼠标
set syntax  " 语法高亮
set number " 开启行号
set relativenumber " 相对行号
set cursorline " 高亮光标所在行
set wrap " 自动换行
set ruler " 显示光标位置
set hlsearch " 高亮搜索结果
set incsearch " 即时搜索结果
set ignorecase " 搜索忽略大小写
set smartcase " 搜索结果智能匹配大小写
set list " 显示空字符
set history=1000 " 最多保存历史记录
set termguicolors " 显示24位颜色
set showcmd " 显示部分命令
set wildmenu " 输入命令时按Tab补全
set listchars=tab:\|\ ,trail:▫
" set foldmethod=indent  " 折叠
set autochdir " 在文件当前目录执行
set undofile " 设置持久化undo,下一行设置存放undofile的路径
set undodir=~/.config/nvim/undo

" 缩进长度
set tabstop=4
set softtabstop=4
set shiftwidth=4

set expandtab " tab转为空格
set autoindent " 自动缩进
set smartindent " 智能缩进
set smarttab " 智能tab
set completeopt=menu,menuone,noselect " 不自动补全

set scrolloff=4 " 上下滚动余量

" Keymapping
let mapleader = " "

" 保存
map S :w<CR>

" 关闭文件 
map Q :q<CR>

" 重新加载配置
map R :source $MYVIMRC<CR>
map ; :

" 开关拼写检查
map <LEADER>sc :set spell!<CR>

" 上下左右分屏
map sl :set splitright<CR>:vsp<CR>
map sh :set nosplitright<CR>:vsp<CR>
map sk :set nosplitbelow<CR>:sp<CR>
map sj :set splitbelow<CR>:sp<CR>

" 水平/垂直分屏互换
map sv <C-w>t<C-w>H
map ss <C-w>t<C-w>K

" 在分屏之间跳转光标
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l

" Barbar快捷键
nnoremap <silent> <LEADER>[ <Cmd>BufferPrevious<CR>
nnoremap <silent> <LEADER>] <Cmd>BufferNext<CR>
nnoremap <silent> <LEADER>1 <Cmd>BufferGoto 1<CR>
nnoremap <silent> <LEADER>2 <Cmd>BufferGoto 2<CR>
nnoremap <silent> <LEADER>3 <Cmd>BufferGoto 3<CR>
nnoremap <silent> <LEADER>4 <Cmd>BufferGoto 4<CR>
nnoremap <silent> <LEADER>5 <Cmd>BufferGoto 5<CR>
nnoremap <silent> <LEADER>6 <Cmd>BufferGoto 6<CR>
nnoremap <silent> <LEADER>7 <Cmd>BufferGoto 7<CR>
nnoremap <silent> <LEADER>8 <Cmd>BufferGoto 8<CR>
nnoremap <silent> <LEADER>9 <Cmd>BufferGoto 9<CR>
nnoremap <silent> <LEADER>q <Cmd>BufferClose<CR>
nnoremap <silent> <LEADER>o :BufferCloseBuffersLeft<CR>:BufferCloseBuffersRight<CR>
nnoremap <silent> <LEADER>p :BufferPick<CR>

" Find files using Telescope command-line sugar.
nnoremap <LEADER>ff <cmd>Telescope find_files<CR>
nnoremap <LEADER>fg <cmd>Telescope live_grep<CR>
nnoremap <LEADER>fb <cmd>Telescope buffers<CR>
nnoremap <LEADER>fh <cmd>Telescope help_tags<CR>

" 内置终端设置
tnoremap <ESC> <C-\><C-n>
nnoremap <LEADER>t :set splitright<CR>:vsp term://zsh<CR>i

" 调整分屏尺寸
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

" 新开tab以及前后切换
map tn :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>

" Tree
map tt :NvimTreeToggle<CR>
map tu :UndotreeToggle<CR>:UndotreeFocus<CR>

" 快速翻页
noremap K 5k
noremap J 5j

" 显示前/后搜索结果并居中
noremap n nzz
noremap N Nzz

" 清除搜索结果
noremap <LEADER><CR> :nohlsearch<CR> 

" 查找下一个<++>替换进入插入模式
noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>"_c4l

iab zw <++>
iab l <right>

" 利用autocmd在保存init.vim时自动加载
augroup NVIMRC
    autocmd!
    " init.vim保存时自动加载
    autocmd BufWritePost init.vim source %
    " 打开文件光标停留在上次关闭的位置
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END
