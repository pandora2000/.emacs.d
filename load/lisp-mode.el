
(add-hook 'lisp-mode-hook
	  '(lambda ()
	     (define-key global-map "\C-c\C-r" 'query-replace)
	     (define-key lisp-mode-map "\C-v" 'undo)
	     (define-key lisp-mode-map "\C-b" 'redo)))
