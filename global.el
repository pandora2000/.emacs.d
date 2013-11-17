(defvar emacs-dir "~/.emacs.d")
(dolist (file (directory-files (concat emacs-dir "/globals") t ".*\.el$" t)) (load-file file))
