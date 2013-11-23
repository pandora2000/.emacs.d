
(let ((dir (concat emacs-dir "/saves")))
  ;;(setq auto-save-file-name-transforms `((".*" (let ((x "\\1")) (concat "~/.emacs.d/saves/" x)) t)))
  (setq backup-directory-alist `((".*" . ,dir)))
  (make-directory dir t)
  )
