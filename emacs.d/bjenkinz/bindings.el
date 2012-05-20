;;; Global key bindings

;; How to Define Keyboard Shortcuts in Emacs
;; http://xahlee.org/emacs/keyboard_shortcuts.html

;; Window manipulation
(global-set-key [(control kp-6)] 'enlarge-window-horizontally)
(global-set-key [(control kp-4)] 'shrink-window-horizontally)
(global-set-key [(control kp-8)] 'enlarge-window)
(global-set-key [(control kp-2)] 'shrink-window)

;; Keyboard macros
;; (global-set-key [(shift f4)] 'kmacro-start-macro-or-insert-counter)
;; (global-set-key [(f4)]    'kmacro-end-or-call-macro)  ;; already defined

;; Refresh-like
(global-set-key [(f5)]         'revert-buffer)
(global-set-key [(control f5)] 'revbufs)

;; Indenting and alignment
;; (global-set-key [(f8)]         'indent-region)
;; (global-set-key [(control f8)] 'align)
;; (global-set-key [(shift f8)]   'align-current)
;; (global-set-key [(meta f8)]    'align-regexp)

;; Version control and change related
;; (global-set-key [(control f9)]      'rails-svn-status-into-root)  ;; Move to rails mode?
;; (global-set-key [(control meta f9)] (lambda () (interactive) (svn-status default-directory)))
(global-set-key [(control f9)] (lambda () (interactive) (magit-status default-directory)))
(global-set-key [(f9)]         (lambda () (interactive) (magit-status default-directory)))
(global-set-key [(meta f9)]    'autotest-switch)  ;; Move to ruby/rails mode?

;; Find matching parens
(global-set-key (kbd "C-'") 'match-paren)

;; Easier buffer killing
(global-unset-key (kbd "M-k"))
(global-set-key (kbd "M-K") 'kill-this-buffer)

;; Easier Undo
(global-set-key (kbd "C-z") 'undo)
