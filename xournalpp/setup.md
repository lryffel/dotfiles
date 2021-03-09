# Custom Keybindings in xournal++
## Sources
The plugin I use for custom keybindings
is taken from
[here](https://github.com/xournalpp/xournalpp/issues/919#issuecomment-700247463).
For a quick setup, 
just copy the unzipped folder to
`/usr/share/xournalpp/plugins/`.
Then, in xournal++, select
`Plugin > Plugin Manager` and enable
`ShortcutsPlugin` (you may have to scroll down).

To disable a shortcut, comment out the corresponding line
in the file `/usr/share/xuornalpp/ShortcutsPlugin/main.lua`
by prefixing it with `--`. You probably want to do this
with color switching, at least for me it does not work.

To change a keybinding,
change the `["accelerator"]` parameter for the corresponding
shortcut in the `initUi()` function.

You also may want to delete some things from the lists.
E.g., `"TOOL_DRAW_SPLINE"` in the `drawingTypeList`
makes my xournal++ crash.

Also see the official
[plugin guide](https://xournalpp.github.io/guide/plugins/plugins/)
for more general information concerning plugins.

## Quick custom configuration
This is a description of how to get my particular
configuration with keybindings
  1. `q` for toggling between dotted and plain lines,
  2. `w` for using the pen tool,
  3. `e` for using the eraser tool,
  4. `f` for using the highlighter tool,
  5. `s` for using the select tool.

To use it, make a folder `ShortcutPlugin` in `usr/share/xournalpp/plugins/`
and save [this file](https://raw.githubusercontent.com/raw-bacon/dotfiles/main/xournalpp/plugins/ShortcutsPlugin/main.lua) there.
Then, select
`Plugin > Plugin Manager` in the xournal++ app
and enable
`ShortcutsPlugin` (you may have to scroll down).


## Setup for versioning
Plugins are located in `/usr/share/xournalpp/plugins/`.
So back up what is currently there, e.g. by renaming it:
```
cd /usr/share/xournalpp/plugins
sudo mv plugins plugins.old
```
Now `cd` to where you want to store your configurations.
For me, this is `~/repos`.
Clone this repository using
```
git clone https://github.com/raw-bacon/dotfiles
```
and go into it:
```
cd dotfiles
```
Symlink this directory here by using
```
sudo ln -s ~/.../dotfiles/xournalpp/plugins /usr/share/xournalpp
```
(for me, it's `~/repos/dotfiles/xournalpp/plugins`).

