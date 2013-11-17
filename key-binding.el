(define-default-keys global-map)
(define-default-keys dired-mode-map)
(dolist (my-mode default-keys-modes)
  (add-hook (intern (concat (symbol-name my-mode) "-mode-hook"))
	    `(lambda ()
	       (define-default-keys (eval (intern (concat (symbol-name (quote ,my-mode)) "-mode-map")))))))

(load-dir (concat emacs-dir "/key-bindings"))
