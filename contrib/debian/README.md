
Debian
====================
This directory contains files used to package eoxd/eox-qt
for Debian-based Linux systems. If you compile eoxd/eox-qt yourself, there are some useful files here.

## eox: URI support ##


eox-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install eox-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your eox-qt binary to `/usr/bin`
and the `../../share/pixmaps/eox128.png` to `/usr/share/pixmaps`

eox-qt.protocol (KDE)

