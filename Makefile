update:
	git pull --rebase

install:
	ln --backup=numbered -n -s -r dir_colors $(HOME)/.dir_colors

Makefile: ; # Do not remake makefile.

.PHONY: all update install clean
