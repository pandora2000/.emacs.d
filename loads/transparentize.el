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
(defun my-set-transparency (x)
  (modify-frame-parameters nil (list (cons 'alpha x))))
