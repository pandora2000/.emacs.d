(define-default-keys global-map)
(define-default-keys dired-mode-map)
(dolist (hook-and-map default-keys-modes)
  (add-hook (car hook-and-map)
	    '(lambda ()
	       (define-default-keys (cdr hook-and-map)))))

