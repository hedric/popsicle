# popsicle
Path of Exile flask and auto-clicker script for Linux

Only supported for X11. Make sure you have `xinput` and `xdotool` installed.

Unfortunately hard-coded for my own needs.

- F1 = toggles the left mouse button clicker script. Used for stashing items.
- F2 = toggles the flask script. Pressing 2 returns 245, which is where i have my utiliyu flasks. I usually have Life flask on 1, and Quicksilver on 3, and those i want to use manually.

The scripts are to be installed to: `$HOME/scripts/`, or change that manually by editing `poe.sh`.

KEYBOARD variable in `poe.sh` needs to match your current keyboard. Use `xinput` to figure the that out.

If you want to test the keycodes, you can run `xinput` to find the id of the keyboard and run: `xinput test id`

When everything is set up, simply run `poe.sh`.

