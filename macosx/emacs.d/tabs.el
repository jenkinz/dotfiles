; Tab management

; Use spaces instead of tabs
(setq-default indent-tabs-mode nil)

; Make 1 tab = 2 spaces
(setq-default tab-width 2)

;; Java mode requires this special hook for the 2 space tab size
;; (http://www.emacswiki.org/emacs/IndentingJava)
(add-hook 'java-mode-hook (lambda ()
                                (setq c-basic-offset 2
                                      tab-width 2
                                      indent-tabs-mode nil)))

(global-set-key (kbd "TAB") 'self-insert-command)
