
(require 'dired-x)
(setq dired-listing-switches "-alh")
(define-key dired-mode-map "\C-o" 'other-window)
(define-key dired-mode-map "\C-j" 'fastdown)
(define-key dired-mode-map "\C-h" 'fastup)
(define-key dired-mode-map "\C-l" 'next-buffer)
(define-key dired-mode-map "\M-l" 'previous-buffer)
(put 'dired-find-alternate-file 'disabled nil)
