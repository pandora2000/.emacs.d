(load-file (concat emacs-dir "/global.el"))
(dolist (dir (list (concat emacs-dir "/packages") (concat emacs-dir "/loads")))
  (dolist (file (directory-files dir t ".*\.el$" t)) (load-file file)))
(dolist (file (directory-files (concat emacs-dir "/key-bindings") t ".*\.el$" t)) (load-file file))
