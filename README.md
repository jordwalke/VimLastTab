==============================================================================
@jordwalke's Plugin to switch between current tab and most recent tab.

**Install**
- If using Vundle, `Bundle "jordwalke/LastTab"`
- If using NeoBundle, `NeoBundle "jordwalke/LastTab"`

**Key Mappings**

- If using VimBox (http://www.github.com/jordwalke/VimBox), key mapping
  `Command+l` will switch to the last tab (and back again). To achieve this,
  it had to ensure that `Command+l` was unmapped from MacVim's default.

- Otherwise, you can customize the keymapping as follows:
   

In your `.gvimrc`

In your `.vimrc`
  map <D-l> :SwitchToLastTab<CR>
  imap <D-l> <Esc>:SwitchToLastTab<CR>
