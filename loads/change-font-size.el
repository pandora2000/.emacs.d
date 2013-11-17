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
