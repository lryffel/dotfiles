# Custom Keybindings in xournal++
## Setup
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
Restart xournal++ and you should be all set.

## Sources
The plugin I use for custom keybindings
is taken from
[here](https://github.com/xournalpp/xournalpp/issues/919#issuecomment-700247463)
and edited so that I feel comfortable using it.

## Tinkering with the plugin
To disable a shortcut, comment out the corresponding line
in the file `/usr/share/xuornalpp/ShortcutsPlugin/main.lua`
by prefixing it with `--`.

To change a keybinding,
change the `["accelerator"]` parameter for the corresponding
shortcut in the `initUi()` function.

Also see the official
[plugin guide](https://xournalpp.github.io/guide/plugins/plugins/)
for more general information concerning plugins.
