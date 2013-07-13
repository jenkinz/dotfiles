# Symlinks dotfiles to the home directory.
#
# This makefile is idempotent.
#
# It will not symlink any files in the EXCLUDES list.
#
# Brian Jenkins <bj@jenkinz.com>
# Date: July 13, 2013

FILESPEC =

ifeq ($(OS),Windows_NT)
    FILESPEC = windows/
else
    UNAME_S := $(shell uname -s)
    ifeq ($(UNAME_S),Linux)
        FILESPEC = linux/
    endif
    ifeq ($(UNAME_S),Darwin)
        FILESPEC = macosx/
    endif
endif

EXCLUDES = README.md dotfiles.vpj init install.rb makefile .gitignore .gitmodules
FILES = $(realpath $(filter-out $(EXCLUDES), $(wildcard $(FILESPEC)*)))

SYMLINK_CMD = ln -nsf $(file) ~/$(addprefix ., $(notdir $(file)))

all .PHONY : $(FILES)

	@@$(foreach file, $(FILES), echo $(SYMLINK_CMD) && $(SYMLINK_CMD);)

