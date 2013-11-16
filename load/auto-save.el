
(let ((dir (concat emacs-dir "/saves")))
  (setq auto-save-file-name-transforms `((".*" ,dir t)))
  (setq auto-save-list-file-prefix dir))
