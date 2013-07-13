; Brian's emacs configuration
;
; Thanks to:
;   Ryan McGeary - https://github.com/rmm5t/dotfiles
;   Vlad Piersec - http://caisah.info/emacs-for-python/

(add-to-list 'load-path "~/.emacs.d")
(load "env")
(load "global")
(load "bindings")
(load "packages")
(load "tabs")
(load "fonts")
(load "utf-8")
(load "scratch")
(load "diff")
(load "mac")

; Following http://caisah.info/emacs-for-python/ below:
; Python mode
(add-hook 'python-mode-hook 'auto-complete-mode)
(add-hook 'python-mode-hook 'jedi:ac-setup)
; Flycheck mode
(add-hook 'after-init-hook #'global-flycheck-mode)
; Autopair
(autopair-global-mode t)

; Default theme
(load-theme 'zenburn t)

; Enable ido mode
(require 'ido)
(ido-mode t)

; Enable a backtrace when problems occur
(setq debug-on-error t)
