# Brian's dotfiles

Installing

- `git clone git://github.com/bjenkinz/dotfiles ~/.dotfiles`
- `cd ~/.dotfiles`
- `./install.rb`

`install.rb` will symlink everything appropriately to your home directory except
for files in `init/`, which is intended for one-time initializations and should be run manually.

Running `install.rb` also updates the git submodules within `emacs.d/vendor`.

# Thanks

I originally forked Ryan McGeary's [dotfiles](https://github.com/rmm5t/dotfiles), but then got rid of a bunch of stuff and added
some of my own. However, my dotfiles are still largely a subset of Ryan's.