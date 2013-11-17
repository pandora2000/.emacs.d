(defadvice ask-user-about-supersession-threat
  (around my-ask-user-about-supersession-threat-canceller last activate)
  (message "May be in supersession threat."))
;; (defun ask-user-about-supersession-threat (fn)
;;   (discard-input)
;;   (save-window-excursion
;;     (let ((prompt
;;            (format "%s changed on disk; \
;; really edit the buffer? (y, n, r or C-h) "
;;                    (file-name-nondirectory fn)))
;;           (choices '(?y ?n ?r ?? ?\C-h))
;;           answer)
;;       (while (null answer)
;;         (setq answer (read-char-choice prompt choices))
;;         (cond ((memq answer '(?? ?\C-h))
;;                (ask-user-about-supersession-help)
;;                (setq answer nil))
;;               ((eq answer ?r)
;;                ;; Ask for confirmation if buffer modified
;;                (revert-buffer nil (not (buffer-modified-p)))
;;                (signal 'file-supersession
;;                        (list "File reverted" fn)))
;;               ((eq answer ?n)
;;                (signal 'file-supersession
;;                        (list "File changed on disk" fn)))))
;;       (message
;;        "File on disk now will become a backup file if you save these changes.")
;;       (setq buffer-backed-up nil))))
