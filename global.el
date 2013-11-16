(dolist (file (directory-files (concat emacs-dir "/global") t ".*\.el$" t)) (load-file file))
