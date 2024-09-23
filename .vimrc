"  Change Cursor Depending on Mode
"  https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes#For_VTE_compatible_terminals_.28urxvt.2C_st.2C_xterm.2C_gnome-terminal_3.x.2C_Konsole_KDE5_and_others.29_and_wsltty
"  https://github.com/kovidgoyal/kitty/issues/2045
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

"   line numbers
set number
set relativenumber

"   Keep cursor centered
"   https://stackoverflow.com/questions/64280931/keep-cursor-line-vertically-centered-in-vim
set scrolloff=999

"   enter the current millenium
set nocompatible

"   enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

"   Search down into subfolders
"   Provides tab-completion for all file-related tasks
set path+=**

"   Display all matching files when we tab complete
set wildmenu

"   NOW WE CAN: 
"   - Hit tab to :find by partial match
"   - Use * to make it fuzzy filename* or *filename

"   THINGS TO CONSIDER:
"   - :b lets you autocomplete any open buffer

"   KEYREMAPS:
"   'For simplicity, use :imap but careful Vimmers are in the habit of using :inoremap which does not attempt to interpret the result of the mapping (with the :imap command, the result is scanned to see whether it contains another mapping).'
"   https://vim.fandom.com/wiki/Avoid_the_escape_key
inoremap jk <Esc>

"   AUTOCOMPLETE:
"   (^ means CTRL key)
"   The good stuff is documented in |ins-complete|
"   HIGHLIGHTS:
"   - ^x^n for JUST this file
"   - ^x^f for filenames (works with our path trick!)
"   - ^x^] for tags only
"   - ^n for anything specified by the 'complete' option
"   NOW WE CAN:

"   AUTOCOMMANDS:
"   Put a line under current line when in insert mode
"   autocmd InsertEnter * set cursorline
"   autocmd InsertLeave * set nocursorline
"   autocmd InsertEnter,InsertLeave * set cul!

"   TAG JUMPING:
"   Create the 'tags' file (may need to install ctags first)
command! MakeTags !ctags -R .

"   NOW WE CAN:
"   - Use ^] to jump to tag under cursor
"   - Use g^] for ambiguous tags
"   - Use ^t to jump back up the tag stack
"
"   THINGS TO CONSIDER:
"   - This doesn't help if you want a visual list of tags


