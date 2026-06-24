#!/usr/bin/env bash
# Fast screen lock for Super+L. Wired in via `wm.program.lock` in
# ~/.config/regolith3/Xresources (read by config.d/55_session_keybindings).
#
# Prefers betterlockscreen (blurred-wallpaper lock), falls back to plain i3lock,
# then to the GNOME/flashback screensaver — so there is always a working lock even
# before betterlockscreen is installed, and locking upgrades automatically once it is.
if command -v betterlockscreen >/dev/null 2>&1; then
    exec betterlockscreen --lock dimblur
elif command -v i3lock >/dev/null 2>&1; then
    exec i3lock --nofork --color 1a1b26
else
    exec dbus-send --type=method_call --dest=org.gnome.ScreenSaver \
        /org/gnome/ScreenSaver org.gnome.ScreenSaver.Lock
fi
