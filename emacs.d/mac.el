; Mac-specific settings

(cond
 ((string-equal system-type "darwin")
  ; Environment variables
  (setq exec-path (cons "/Applications/Emacs.app/Contents/MacOS/bin" exec-path))
  (setenv "PATH" (concat "/Applications/Emacs.app/Contents/MacOS/bin:" (getenv "PATH")))

  ; Hide the tool bar
  (when (fboundp 'tool-bar-mode)
    (tool-bar-mode 0))
  )
)
