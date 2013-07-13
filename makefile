# Symlinks dotfiles to the home directory.
#
# This makefile is idempotent.
#
# It will not symlink any files in the EXCLUDES list.
#
# Brian Jenkins <bj@jenkinz.com>
# Date: July 13, 2013

EXCLUDES = README.md dotfiles.vpj install.rb makefile .gitignore .gitmodules
FILES = $(realpath $(filter-out $(EXCLUDES), $(wildcard *)))

all .PHONY : $(FILES)
	@@echo "Symlinking to home directory..."
	@@$(foreach file, $(FILES), ln -nsf $(file) ~/$(notdir $(file));)
	@@echo "...Done"

