" Enable syntax highlighing.
syntax enable

" Set encoding shown in terminal to utf-8.
set encoding=utf-8
" Set encoding written to file to utf-8.
set fileencoding=utf-8
" Automatically change the current working directory to the path of the current
" file.
set autochdir

"Use system clipboard
set clipboard=unnamedplus

" =========================================================================== "
" Whitespace

" Maximum width of text that is being inserted. Vim will hard wrap at that
" column.
set textwidth=80

" Soft-wrap text that goes over the screen limit.
set wrap

" When wrapping text, prevent showing half of a word before the wrap and half
" after, rather wrap at word boundaries.
set linebreak

" Convert tabs to 4 spaces.
set expandtab
set tabstop=4

" The number of space characters to use for indentation.
set shiftwidth=4

" Copy indent from current line when starting a new line.
set autoindent

" Increase indent in the new line when following things like open braces on the
" current line.
set smartindent

" =========================================================================== "
" Navigation

" Show the cursor position all the time.
set ruler   
" Show line numbers relative to current position.
set number relativenumber 
" Be able to click and position the mouse anywhere on the screen.
set mouse=a
" Highlight the current line
set cursorline

" In the default vim behaviour, you cannot make changes to a file and then
" open a new file without saving the current one. With this option enabled,
" the unsaved file will be hidden, but not closed.
set hidden

" =========================================================================== "
" Colours and themes

" Support 256 colours
set t_Co=256
" Tell vim the background colour is dark
set background=dark

" =========================================================================== "
" UI

" Maximum number of items to show in the popup menu for insert mode completion.
set pumheight=10
" Number of screen lines to use for the command line.
set cmdheight=2                         " More space for displaying messages

" Always display the statusline
set laststatus=0

" Number of ms until (a) CursorHold is triggered and (b) a swap file is written
" to disk.
set updatetime=300

" Always show tabline
set showtabline=2

