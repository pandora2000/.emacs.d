
;; Package manager
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

;; Load global settings
(defvar emacs-dir "~/.emacs.d")
(load-file (concat emacs-dir "/global.el"))

;; Load files
(dolist (dir (list "~/.emacs.d/packages" "~/.emacs.d/load"))
  (dolist (file (directory-files dir t ".*\.el$" t)) (load-file file)))
