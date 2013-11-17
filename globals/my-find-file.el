;; (defun my-find-file (filename &rest rest)
;;   (setq filename
;; 	(catch 'done
;; 	  (loop for (abbrev . name) in tramp-abbreviations
;; 		if (string-match ((concat "/" filename)
