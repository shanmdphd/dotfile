au BufRead,BufNewFile *.OUT set filetype=java

noremap <C-d> :sh<cr>
" vimrc 2016-09-21 "
" General Setting "
set number
set nobackup             " 백업파일을 만들지 않음 "

" Plugin Vundle"
set rtp+=~/.vim
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin('~/.vim/bundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'tomasr/molokai'
Plugin 'jalvesaq/nvim-r'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/vim-tomorrow-theme'

call vundle#end()

" Color Scheme"
syntax enable
" set background=dark
" colorscheme molokai
colorscheme tomorrow
"colorscheme solarized

" Syntastic Setting "
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Encoding "
set fenc=utf-8
set fencs=utf-8,cp949,cp932,euc-jp,shift-jis,big5,ucs-2le,latin1

" nvim-r "
let R_in_buffer = 0
let R_applescript = 1

" 마지막 커서 위치 기억하기 "
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 편집 기능 설정 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ESC키를 누르면 한글 모드가 해제 "
" 입력모드에서 이전 언어 설정 모드 유지 "
"inoremap <ESC> <ESC>:set imdisable<CR>
"nnoremap i :set noimd<CR>i
"nnoremap I :set noimd<CR>I
"nnoremap a :set noimd<CR>a
"nnoremap A :set noimd<CR>A
"nnoremap o :set noimd<CR>o
"nnoremap O :set noimd<CR>O    

" 정말 멋진 기능 mvim 전용 "
set noimd

" 입력모드에서 Ctrl+d로 백스페이스 기능 "
map! <C-d> <BS>

" Shift+Enter로 아래줄로 커서 넘기기 기능 "
map <S-CR> <ESC>o
map! <S-CR> <ESC>o

" 괄호 자동 완성 후 입력모드로 전환 "
"map! () ()<ESC>i
"map! (); ();<ESC>hi
"map! [] []<ESC>i
"map! {} {}<ESC>i
"map! {}; {};<BS><ESC>i<CR><ESC>O<BS>
"map! <> <><ESC>i
"map! '' ''<ESC>i
"map! "" ""<ESC>i

" 현재 줄의 마지막에 이어 쓰기 "
map! <C-TAB> <S-CR><ESC>i<BACKSPACE>

" 파일의 종류를 자동으로 인식 "
filetype on

" 자동 문법 강조 "
syntax on 

set nocompatible         " Vim 디폴트 기능들을 사용함 "
set number                " 줄 번호를 붙임  "
set backspace=2         " 삽입 모드에서 백스페이스를 계속 허용 "
set autoindent             " 자동 들여쓰기 "
set cindent             " C 언어 자동 들여쓰기 "
set smartindent         " 역시 자동 들여쓰기 "
"set nowrap                 " 자동 줄바꿈 안함  "
"set nowrapscan             " 찾기에서 파일의 맨 끝에 이르면 계속하여 찾지 않음 "
set ignorecase             " 찾기에서 대/소문자를 구별하지 않음 "
set incsearch             " 점진적으로 찾기  "
"set nobackup             " 백업파일을 만들지 않음 "
set nojoinspaces         " J 명령어로 줄을 붙일 때 마침표 뒤에 한칸만 띔 "
set ruler                 " 상태표시줄에 커서 위치를 보여줌 "
set keywordprg=ydic        " K를 눌렀을 때 실행할 명령어 "
set showcmd             " (부분적인)명령어를 상태라인에 보여줌 "
set showmatch             " 매치되는 괄호의 반대쪽을 보여줌 "
set autowrite             " :next나  :make 같은 명령를 입력하면 자동으로 저장 "
set linespace=3         " 줄간격 "
set title                 " 타이틀바에 현재 편집중인 파일을 표시 "
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\     " 다중 문서 작업을 위한 Status 줄 "
set tags+=./tags        " add current directory's generated tags file to available tags "

set softtabstop=4                              " TAB키를 눌렀을때 몇 칸을 이동?
set tabstop=4                                  " 하나의 TAB을 몇 칸으로 인식? 
set shiftwidth=4                               " <<, >>을 눌렀을 때 몇 칸을 이동?
set expandtab                                  " TAB을 space로 인식

