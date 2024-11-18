"OPTIONS:
"learn about any option with :h '<option name>' ex. :h 'autoindent'
"   enter the current millenium
" If I run vim, I have separate settings that Neovim already has on by default
" See :nvim-defaults
colorscheme slate

"Turns off highlighting automatically after 4 seconds
"See usr_05.txt in Neovimdocs
"packadd nohlsearch
"Not currently working across installations

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

"Unnecessary since filetype indent on by default in Neovim and my .vimrc_vimonly and more robust
"set cindent
"
" Allows arrow keys to work in normal and insert mode
" See usr_05.txt
set whichwrap=b,s,<,>,[,]

" Every tab will be displayed as ">---" and trailing whites space as "-"
" See usr_05.txt
set list
set listchars=tab:>-,trail:-
"Increases message window at bottom of vim to 2
set cmdheight=2

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
" Set the timeout length for mapped sequences (in milliseconds)
" Controls the time Vim waits for a mapped sequence to complete
" Default 1000ms
set timeoutlen=300
" set the timeout length for key codes (in milliseconds)
" Controls the tiem Vim waits for key codes to complete. The default is -1
" which means no timeout. 
" Changed from 50
set ttimeoutlen=10
let mapleader = " "
"nnoremap \ ;
"n = normalmode
"i = insertmode
"
"'For simplicity, use :[i/n]map but careful Vimmers
"are in the habit of using :[i/n]noremap which does 
"not attempt to interpret the result of the mapping :
"(with the :imap command, the result is scanned to 
"see whether it contains another mapping).'
"https://vim.fandom.com/wiki/Avoid_the_escape_key
" remap <Esc> key in insert mode
inoremap jk <Esc>
" Map jk to escape in visual mode
xmap jk <Esc>
"Run Netrw in Vertical split mode
nnoremap <leader>ee :Lexplore %:p:h<CR>
" maps <leader>n to :next to navigate multiple files
nnoremap <leader>n :next<CR>
" maps <leader>p to :prev to navigate multiple files
nnoremap<leader>p :prev<CR>
" maps <leader>wn to :wnext to save and move next to navigate multiple files
nnoremap <leader>wn :wnext<CR>
" maps <leader>wp to :wprev to save and move next to navigate multiple files
nnoremap <leader>wp :wprev<CR>
" maps <Leader>cn to :cnext command
nnoremap <leader>cn :cnext<CR>
" maps <Leader>cp to :cprev command
nnoremap <leader>cp :cprev<CR>

"Navigating tabs
"Open a new tab (o for open)
nnoremap <leader>to <cmd>tabnew<CR>
" Go to next tab
nnoremap <leader>tn <cmd>tabn<CR>
" Go to previous tab
nnoremap <leader>tp <cmd>tabp<CR>
" Close current tab
nnoremap <leader>tx <cmd>tabc<CR>
" move current buffer to new tab
nnoremap <leader>tf <cmd>tabnew %<CR>

"Navigating window splits
"split vertically
nnoremap <leader>wv <C-w>v
" split horizontally
nnoremap <leader>wh <C-w>s
" makes splits equal size
nnoremap <leader>we <C-w>=
" make horizontal split maximum size
nnoremap <leader>w_ <C-w>_
" make vertical split maximum size
nnoremap <leader>w<Bar> <C-w><Bar>
" Resize horizontal split (up) by 10 lines (use = to not have to hit shift) (=
" is <leader>se
nnoremap <leader>w= 10<C-w>+
" Resize horizontal split (down) by 10 lines
nnoremap <leader>w- 10<C-w>-
" Resize vertical split (right) by 10 lines
" Give vertical split more space on the right by 10 lines
nnoremap <leader>w. 10<C-w>>
" Give vertical split more space on the left by 10 lines
" <lt> is `<` character
nnoremap <leader>w, 10<C-w><lt>
"close a window
nnoremap <leader>wx <cmd>close<CR>

"Clear search highlighting
nnoremap <leader>nh :nohl<CR>

" Move selected line up and down in Visual Mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>-2<CR>gv=gv

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
"current directory
" Augroup VimStartup:
augroup VimStartup
  au!
  au VimEnter * if expand("%") == "" | e . | endif
augroup END
