
(custom-set-variables '(haskell-mode-hook '(turn-on-haskell-indentation)))
(add-hook 'haskell-mode-hook
	  (lambda ()
	    (define-key haskell-mode-map "\C-c\C-v" 'split-window-vertically)
	    ))
