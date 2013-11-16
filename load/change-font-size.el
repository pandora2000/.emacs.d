(defun increase-font-size ()
  (interactive)
  (set-face-attribute 'default
		      nil
		      :height
		      (+ 10 (face-attribute 'default :height))))
(defun decrease-font-size ()
  (interactive)
  (set-face-attribute 'default
		      nil
		      :height
		      ((lambda (h) (if (<= h 1100 h (- h 10)))
			 (face-attribute 'default :height)))))
(global-set-key [C-mouse-4] 'increase-font-size)
(global-set-key [C-wheel-up] 'increase-font-size)
(global-set-key [?\C-+] 'increase-font-size)
(global-set-key [?\C-=] 'increase-font-size)
(global-set-key [C-mouse-5] 'decrease-font-size)
(global-set-key [C-wheel-down] 'decrease-font-size)
(global-set-key [?\C--] 'decrease-font-size)
