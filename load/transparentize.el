;; OS X
(setq frame-alpha-lower-limit 0)
(setq my-transparency-modification-interval 7)
(defun my-gradual-modify-transparency (&optional dec)
  (let* ((alpha-or-nil (frame-parameter nil 'alpha)) ; nil before setting
	 (oldalpha (if alpha-or-nil alpha-or-nil 100))
	 (tm (if dec (- oldalpha my-transparency-modification-interval)
	       (+ oldalpha my-transparency-modification-interval)))
	 (newalpha (if (< tm frame-alpha-lower-limit) frame-alpha-lower-limit
		     (if (> tm 100) 100 tm))))
    (modify-frame-parameters nil (list (cons 'alpha newalpha)))))
;; C-8 will decrease transparency
;; C-9 will increase transparency
(global-set-key (kbd "C-7") 
		(lambda() (interactive) (my-gradual-modify-transparency)))
(global-set-key (kbd "C-8") 
		(lambda() (interactive) (my-gradual-modify-transparency t)))
(defun my-set-transparency (x)
  (modify-frame-parameters nil (list (cons 'alpha x))))
;; C-9 will set transparency 72
;; C-0 will set transparency 100, that is not transparent at all
(global-set-key (kbd "C-9") (lambda () (interactive) (my-set-transparency 72)))
(global-set-key (kbd "C-0") (lambda () (interactive) (my-set-transparency 100)))
