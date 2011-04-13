set nocompatible
syntax on
filetype plugin on
filetype plugin indent on


let mapleader = ","
set ruler		" show cursor line and column in the status line
set showmatch		" show matching brackets
set visualbell		" stop beeping on error
set history=500		" number of remembered commands
set backspace=2		" allow backspacing over everything in insert mode
set mouse=a		" enable mouse in all editing modes
set linebreak		" avoid breaking words when wrapping text (when using :set wrap)
set fileencoding=utf-8	" use UTF-8
set encoding=utf-8	" use UTF-8
set sidescroll=1	" how fast we should jump the screen when scrolling sideways
set switchbuf=usetab,split	" open file-links from the quickfix window in a existing or new tab
set tabstop=4
set shiftwidth=4	" number of spaces used by >> << and cindent
set smarttab
"set expandtab
set laststatus=2	" show filename and cursor position at the bottom of the screen
set wildmenu		" turn on wild menu, try typing :h and press <Tab>
"set switchbuf=newtablusetab	" things that switch buffers, like quickfix will open new tabs, but reuse already open tabs
set switchbuf=useopen,split	" things that switch buffers, like quickfix will open new windows, but reuse already open windows
set nowrap		" don't wrap text

" Statusline in the line at the bottom of the screen, showing filename and other info
set statusline=%#Identifier#%{winnr()}\ " window number
set statusline+=%* " Switch back to normal statusline highlight
set statusline+=%f
set statusline+=%#Comment#\ %r%m " [RO][modified]
set statusline+=%#Comment#\ (\%L\ lines)[%l:%c]\ " Lines in file, lineno, colno
set statusline+=%* " Switch back to normal statusline highlight



" Stuff for vim >= 7.3
if v:version >= 703
	" set colorcolumn=80
	
	set undofile
	set undodir=~/.vim/undodir
endif



" Tell vim to remember certain things when we exit
" '50 : marks will be remembered for up to 10 previously edited files
" "100 : will save up to 100 lines for each register
" :20 : up to 20 lines of command-line history will be remembered
" % : saves and restores the buffer list
" n... : where to save the viminfo files
set viminfo='50,\"100,:20,%,n~/.viminfo




" Filetypes
au BufRead,BufNewFile *.rst setlocal filetype=txt
au BufRead,BufNewFile *.apt setlocal filetype=txt
au BufRead,BufNewFile README setlocal filetype=txt
au BufRead,BufNewFile INSTALL setlocal filetype=txt
au BufRead,BufNewFile TODO setlocal filetype=txt
au BufRead,BufNewFile BUGS setlocal filetype=txt
au BufRead,BufNewFile *.mkd setlocal filetype=mkd
au BufRead,BufNewFile *.md setlocal filetype=mkd
au BufRead,BufNewFile *.zcml setlocal filetype=xml
au BufRead,BufNewFile *.pt setlocal filetype=xml
au BufRead,BufNewFile *.doctest setlocal filetype=doctest
au BufRead,BufNewFile *.django.html setlocal filetype=htmldjango
au BufRead,BufNewFile SConscript setlocal filetype=python
au BufNewFile,BufRead *.cu setlocal filetype=cpp.doxygen
au BufNewFile,BufRead *.cl setlocal filetype=opencl
au BufRead,BufNewFile *.json setlocal filetype=json
au BufRead,BufNewFile *.h setlocal filetype=cpp




" Configure taglist plugin
inoremap <F11> <ESC>:TlistToggle<CR>
noremap <F11> :TlistToggle<CR>
let Tlist_Auto_Highlight_Tag = 1
"let Tlist_Use_Right_Window = 1
let Tlist_Auto_Update = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_WinWidth=50
let Tlist_Show_One_File = 0
let Tlist_Inc_Winwidth = 1
let Tlist_Close_On_Select = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Compact_Format = 1
let Tlist_Sort_Type = "name"
"let Tlist_Display_Prototype = 1



" General global shortcuts
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
noremap <Leader>tt <ESC>:tabnew<CR>
noremap <Leader>bb <ESC>:bdelete<CR>
noremap <Leader>pp <ESC>:YRShow<CR>
command! -complete=help -nargs=1 H tab help <args>



" Fix mouse pointer in screen
if &term == "screen"
    set ttymouse=xterm2
endif





" Needed on some linux distros.
" see http://www.adamlowe.me/2009/12/vim-destroys-all-other-rails-editors.html
"filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

