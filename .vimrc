" ----  window  ----
syntax on         " 语法高亮
set laststatus=2  " 在底部显示状态信息 
set number        " 显示行号和相对行号
set relativenumber

" ---- edition ----
set shiftwidth=4  " 自动缩进长度
set tabstop=4     " tab宽度
set showmatch     " 括号匹配

" ----  search  ----
set ignorecase   " 搜索的大小写匹配：如果输入小写，大小写不敏感；输入大写，只搜大写
set smartcase
set incsearch    " 输入的同时实时搜索，不等全部输入完成

" ---- key binding ----
" Unbind some useless default key bindings.
nmap Q <Nop> 

set backspace=indent,eol,start " 让backspace的操作方式和习惯一致

" 将上下左右强制改到hjkl键位
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" ----  colorscheme  ----
colorscheme rkcolors
" ----  others  ----
set noerrorbells visualbell t_vb=  " 关闭提示音
set mouse+=a     " 支持鼠标 
set nocompatible  " enable vim over vi
set shortmess+=I  " 关闭vim默认的启动信息

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from 
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden
