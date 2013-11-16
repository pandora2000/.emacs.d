(require 'haml-mode)
(add-hook 'haml-mode-hook
	  '(lambda ()
	     (setq indent-tabs-mode nil)
	     (define-key haml-mode-map "\C-c\C-r" 'query-replace)
	     ;;reindent-then-newline-and-indentはやばい場合がある
	     (define-key haml-mode-map "\C-m" 'newline-and-indent)))
