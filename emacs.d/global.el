; Generic emacs settings

;; Use command as the meta key
(setq ns-command-modifier (quote meta))

;; Don't show the startup screen
(setq inhibit-startup-message t)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Display line and column numbers
(setq line-number-mode    t)
(setq column-number-mode  t)

;; Modeline info
(display-time-mode 1)

;; Small fringes
(set-fringe-mode '(1 . 1))

;; Disable scroll bars
(when (fboundp 'toggle-scroll-bar)
  (toggle-scroll-bar -1))

;; Explicitly show the end of a buffer
(set-default 'indicate-empty-lines t)

;; Line-wrapping
(set-default 'fill-column 80)

;; Turn on auto fill for all major modes
(setq-default auto-fill-function 'do-auto-fill)

;; Prevent beep on errors
(setq visible-bell t)

;; Make sure all backup files only live in one place
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; Show matching parentheses
(show-paren-mode t)

;; Don't truncate lines
(setq truncate-lines t)
(setq truncate-partial-width-windows nil)

;; Start the emacsclient server
(server-start)

;; Remove trailing whitespace on save
(add-hook 'before-save-hook (lambda () (whitespace-cleanup)))
