; Brian's emacs configuration
;
; Thanks to:
;   Ryan McGeary - https://github.com/rmm5t/dotfiles
;   Vlad Piersec - http://caisah.info/emacs-for-python/

(add-to-list 'load-path "~/.emacs.d")
(load "env")
(load "global")
(load "bindings")
(load "tabs")
(load "fonts")
(load "utf-8")
(load "scratch")
(load "diff")
(load "mac")

; Package management
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

; Default theme
(load-theme 'zenburn t)

; Enable ido mode
(require 'ido)
(ido-mode t)

; Enable a backtrace when problems occur
(setq debug-on-error t)
