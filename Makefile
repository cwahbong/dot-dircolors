update:
	git pull --rebase

install:
	ln --backup=numbered -s -r dir_colors $(HOME)/.dir_colors

Makefile: ; # Do not remake makefile.

.PHONY: all update install clean
