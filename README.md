# Configured programs
## vim (Text editor)
Manage plugins
Includes the following plugins:
  1. gruvbox (a colorscheme)
  2. nerdtree
  3. nerdtree-git-plugin
  4. ultisnips (snippets)
  5. vim-commentary
  6. vim-rooter (configured to put the cwd at the location of the .git directory)
  7. vimtex (latex suite)
  8. vim-fugitive (git with :G)
  9. ale (linting)
  10. vim-repeat (make more commands repeatable)
  11. vim-rhubarb (github integration)
  12. rust-lang (rust support)
  13. vim-fish (fish support)
See junegunn/vim-plug for details of the plugin manager.
Run `:PlugInstall` in vim to install the plugins.

## fish (Shell)
Configured to use vi-mode. after pressing escape, enter insert mode by pressing `i`.
Change your default shell by running
`chsh -s /usr/bin/fish` or `usermod -s /usr/bin/fish $USER`.

## ranger (File manager)
Set to preview images automatically.

## sway (Window manager)
Keybindings, purple color scheme, starts waybar.

## waybar (Status bar)
Purple color scheme, some icons.

## zathura (PDF/Epub reader)
Configured to work with synctex and to start automatically in dark mode.

## vimb (Browser)
Configured to look minimalistic.
