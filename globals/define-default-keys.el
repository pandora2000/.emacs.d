

(defun define-default-keys (map)
  (define-key map "\C-o" 'other-window)
  (define-key map "\C-c\C-v" 'split-window-vertically)
  (define-key map "\C-c\C-h" 'split-window-horizontally)
  (define-key map "\C-c\C-d" 'delete-other-windows)
  ;; (define-key map "\C-c\C-t" 'indent-all)
  (define-key map "\C-j" 'fastdown)
  (define-key map "\C-h" 'fastup)
  (define-key map "\C-l" 'anything)
  (define-key map "\C-c\C-q" (lambda () (interactive) (kill-buffer nil)))
  (define-key map "\C-c\C-l" (lambda () (interactive) (shell "/bin/bash") (rename-uniquely)))
  (define-key map "\C-c\C-r" 'query-replace)
  (define-key map "\C-c\C-o" 'comment-region)
  (define-key map "\C-c\C-p" 'uncomment-region)
  (define-key map "\C-v" 'undo-tree-undo)
  (define-key map "\M-v" 'undo-tree-redo)
  (define-key map "\C-w" 'kill-region)
  (define-key map "\M-w" 'kill-ring-save)
  (define-key map "\C-y" 'yank)
  
  (define-key map [C-mouse-4] 'increase-font-size)
  (define-key map [C-wheel-up] 'increase-font-size)
  (define-key map [?\C-+] 'increase-font-size)
  
  (define-key map [?\C-=] 'set-default-font-size)
  
  (define-key map [C-mouse-5] 'decrease-font-size)
  (define-key map [C-wheel-down] 'decrease-font-size)
  (define-key map [?\C--] 'decrease-font-size)

  ;; OS X
  (define-key map (kbd "C-7") (lambda() (interactive) (my-gradual-modify-transparency t)))
  (define-key map (kbd "C-8") (lambda() (interactive) (my-gradual-modify-transparency)))
  (define-key map (kbd "C-9") (lambda () (interactive) (my-set-transparency 72)))
  (define-key map (kbd "C-0") (lambda () (interactive) (my-set-transparency 100)))
  )