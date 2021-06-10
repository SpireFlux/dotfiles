set nocompatible          " turn off compatibility with vi

if has('filetype')
    filetype indent plugin on
endif

if has('syntax')
    syntax on             " enable syntax highlighting
endif

set visualbell             "visual alert instead of a beep

" Tabs and Spaces
set expandtab              "Tabs are spaces
set softabstop=4           "Sets how many columns vim uses when you hit Tab in insert mode
set tabstop=4              "number of spaces in tab when editing
set shiftwidth=4           "control how many columns text is indented with the reindent operations (<< and >>) and automatic C-style indentation.

set number                 "show line nnumbers
set ruler                  "show file stats
set showcmd                "show commands in bottom bar
set showmatch              "Highlight matching [{()}]
set title                  "Show the filename in the titlebar
set pastetoggle=<F2>       "toggle paste mode with F2 
set cmdheight=2            "set the command window to two rows
