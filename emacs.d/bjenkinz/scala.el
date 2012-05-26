;; Scala mode
(add-to-list 'load-path "~/.emacs.d/vendor/scala")
(require 'scala-mode-auto)

;; Ensime, for play framework (http://playframework.org)
(add-to-list 'load-path "~/.emacs.d/vendor/ensime/elisp")
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook) ; starts ensime when scala mode is started
