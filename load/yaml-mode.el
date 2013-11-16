
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-hook 'yaml-mode-hook
	  '(lambda ()
	     (define-key yaml-mode-map "\C-c\C-e" 'indent-all)
	     (define-key yaml-mode-map "\C-o" 'other-window)
	     (define-key yaml-mode-map "\C-j" 'fastdown)
	     (define-key yaml-mode-map "\C-h" 'fastup)
	     (define-key yaml-mode-map "\C-l" 'next-buffer)
	     (define-key yaml-mode-map "\M-l" 'previous-buffer)
	     (define-key yaml-mode-map "\C-m" 'newline-and-indent)))
