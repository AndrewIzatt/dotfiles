"OPTIONS:
"learn about any option with :h '<option name>' ex. :h 'autoindent'
"   enter the current millenium
" If I run vim, I have separate settings that Neovim already has on by default
" See :nvim-defaults
colorscheme slate

if !has('nvim')
    source ~/.vim/.vimrc_vimonly
endif

" Set shift width to 4 spaces.
" >> indents by 4 spaces.
set shiftwidth=4

" >> indents to next multiple of 'shiftwidth'.
set shiftround

" Set tab width to 4 columns. Tab key indents by 4 spaces
set tabstop=4

" Use space characters instead of tabs.
set expandtab

"underline cursor's current line position
set cursorline
" allows fine-grained control (options - line, screenline, number, both (default))
"set cursorlineopt=screenline

"   https://stackoverflow.com/questions/64280930/keep-cursor-line-vertically-centered-in-vim
"   Keep cursor centered
set scrolloff=999

"   Change Cursor Depending on Mode
"   https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes#For_VTE_compatible_terminals_.28urxvt.2C_st.2C_xterm.2C_gnome-terminal_3.x.2C_Konsole_KDE5_and_others.29_and_wsltty
"   https://github.com/kovidgoyal/kitty/issues/2045
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" Add numbers to each line on the left-hand side.
set number
set relativenumber

" show sign column so that text doesn't shift
"set signcolumn=number
set signcolumn=yes

" Ignore capital letters during search.
set ignorecase
" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Pressing CTRL-V to enter Visual Mode allows cursor to extend beyond
" characters in line
set virtualedit=block

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" (I still don't really know what this does)
" Show matching words during a search
"set showmatch

" Do not save backup files.
set nobackup

" Open new windows below the current window.
set splitbelow

" Open new windows right of the current window.
set splitright

" turn off swapfile
set noswapfile

"Search down into subfolders
"Provides tab-completion for all file-related tasks
set path+=**

"with path+=** and wildmenu set (by default in nvim, in .vimrc_vimonly)
"now we can: 
"- Hit tab to :find by partial match
"- Use * to make it fuzzy filename* or *filename

"things to consider:
"- :b lets you autocomplete any open buffer


"NETRW OPTIONS:
" from: https://vonheikemen.github.io/devlog/tools/using-netrw-vim-builtin-file-explorer/
"hide the banner. To show temporarily, use `I` inside Netrw
let g:netrw_banner = 0

" change copy command to enable recursive copy of directories
let g:netrw_localcopydircmd = "cp -r"

let g:netrw_preview=1
let g:netrw_alto=1

"The |g:netrw_browse_split| option, which is zero by default, may be used to
"cause the opening of files to be done in a new window or tab instead of the
"default.  When the option is one or two, the splitting will be taken
"horizontally or vertically, respectively.  When the option is set to three, a
"<cr> will cause the file to appear in a new tab.
let g:netrw_browse_split=3

"Keep current directory and the browsing directory synced. This help you avoid
"the move files error
let g:netrw_keepdir=0

"KEYREMAPS:
let mapleader = ";"
nnoremap \ ;
"n = normalmode
"i = insertmode
"
"'For simplicity, use :[i/n]map but careful Vimmers
"are in the habit of using :[i/n]noremap which does 
"not attempt to interpret the result of the mapping :
"(with the :imap command, the result is scanned to 
"see whether it contains another mapping).'
"https://vim.fandom.com/wiki/Avoid_the_escape_key
inoremap jk <Esc>

nnoremap <leader>ee :Lexplore %:p:h<CR>

"AUTOCOMPLETE:
"(^ means CTRL key)
"The good stuff is documented in |ins-complete|
"HIGHLIGHTS:
"- ^x^n for JUST this file
"- ^x^f for filenames (works with our path trick!)
"- ^x^] for tags only
"- ^n for anything specified by the 'complete' option
"NOW WE CAN:
"AUTOCOMMANDS:
"Put a line under current line when in insert mode
"autocmd InsertEnter * set cursorline
"autocmd InsertLeave * set nocursorline
"autocmd InsertEnter,InsertLeave * set cul!

"Highlight on yank
" autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup='Visual', timeout=300}

"TAG JUMPING:
"Create the 'tags' file (may need to install ctags first)
"command! MakeTags !ctags -R .

"NOW WE CAN:
"- Use ^] to jump to tag under cursor
"- Use g^] for ambiguous tags
"- Use ^t to jump back up the tag stack

"THINGS TO CONSIDER:
"- This doesn't help if you want a visual list of tags

"By also including the following lines in your .vimrc, one may have netrw
"immediately activate when using [g]vim without any filenames, showing the
"current directory:
" Augroup VimStartup:
augroup VimStartup
  au!
  au VimEnter * if expand("%") == "" | e . | endif
augroup END
