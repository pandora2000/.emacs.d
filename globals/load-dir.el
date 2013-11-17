(defun load-dir (dir)
  (dolist (file (directory-files dir t ".*\.el$" t)) (load-file file)))
