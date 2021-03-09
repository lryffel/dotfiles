# How to use this
To copy a configuration folder,
delete or back up your current configuration folder of the program
and symlink the configuration folder using
```
ln -s /absolute/path/to/repo/folder ~/.config
```
Of course you can also just copy the folder to where it needs to go,
but then it becomes a bit of a pain to synchronize changes across
machines.

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
Run `:PlugInstall` in `vim` to install the plugins.
Contrary to neovim, the `vim` configuration file is located at `~`
and is called `.vimrc`. To copy it, do
```
ln -s /absolute/path/to/repo/vimrc ~/.vimrc
```
Latex support requires you to install `xdotools`.

## neovim (Text editor)
To set this one up go run
```
pip install neovim
pip install neovim-remote
```
in addition to the instructions for vim.

## fish (Shell)
Configured to use vi-mode. after pressing escape, enter insert mode by pressing `i`.
Change your default shell by running
`chsh -s /usr/bin/fish` or `usermod -s /usr/bin/fish $USER`.

## ranger (File manager)
Could be set up to display images but I don't how currently.
Opens latex files with the `--servername VIM` option for vim
which, with my current setup, enables reverse synctex.

## sway (Wayland window manager)
Keybindings, purple color scheme, starts (and hence depends on) waybar.

## waybar (Wayland status bar)
Purple color scheme, some icons.

## i3 (X window manager)
Starts (and hence depends on) polybar.
Other programs you may want to install are
pavucontrol for controlling PulseAudio,
xclip for copying,
and brightnessctl for changing the brightness of your monitor
with the configured hotkeys.
Make sure to change `$terminal`, `$browser`,
`$filemanager` and `$mixer` in `i3/config`
to programs you have.
To change the background image, modify the file `i3/fehbg`
accordingly.

To get mouse tapping working, configure it in
`/etc/X11/xorg.conf.d`. Create a file
there called `30-touchpad.conf` and 
make it contain the following lines:

```xf86conf
Section "InputClass"
	Identifier "touchpad"
	Driver "libinput"
	MatchIsTouchpad "on"
	Option "Tapping" "on"
	Option "NaturalScrolling" "true"
	Option "HorizontalScrolling" "true"
EndSection
```

While you're there, you may want to consider adding
`Option "XkbOptions" "caps:swapescape"` to
`00-keyboard.conf`.

## polybar (X status bar)
Not very well configured, may need some work.

## zathura (PDF/Epub reader)
Configured to work with synctex and to start automatically in dark mode.

## vimb (Browser)
Configured so that text boxes can be opened in vim (using Ctrl+T).

## qutebrowser (Browser)
Dark mode even for websites that do not have a dark mode. Don't know
how to turn it off though.

## alacritty (Terminal emulator)
Just configured so that swiss keyboards can also zoom in.

