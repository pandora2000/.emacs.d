
;; font
(set-face-attribute 'default nil :family "Consolas" :height 104)
;; couldn't run on CUI
;; (set-fontset-font nil 'japanese-jisx0208 (font-spec :family "MeiryoKe_Console"))
;; (setq face-font-rescale-alist '(("MeiryoKe_Console" . 1.08)))

;; font-size
(defun set-default-font-size ()
  (interactive)
  (set-face-attribute 'default nil :height 130))
(set-default-font-size)
