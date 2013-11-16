
					;Cpdt
					;(custom-set-variables
					; '(coq-prog-args '("-I" "/Users/tm/Library/cpdt/src"))
					;)
					;(load-file "/Users/tm/Library/ProofGeneral-4.1/ProofGeneral-4.1/generic/proof-site.el")

					;macros
(fset 'fastdown
      "\C-n\C-n\C-n\C-n\C-n\C-n\C-n\C-n\C-n\C-n\C-n\C-n\C-n\C-n\C-n\C-n\C-n\C-n\C-n\C-n")
(fset 'fastup
      "\C-p\C-p\C-p\C-p\C-p\C-p\C-p\C-p\C-p\C-p\C-p\C-p\C-p\C-p\C-p\C-p\C-p\C-p\C-p\C-p")

					;global-map
(define-key global-map "\C-o" 'other-window)
(define-key global-map "\C-c\C-v" 'split-window-vertically)
(define-key global-map "\C-c\C-h" 'split-window-horizontally)
(define-key global-map "\C-c\C-d" 'delete-other-windows)
(define-key global-map "\C-j" 'fastdown)
(define-key global-map "\C-h" 'fastup)
(define-key global-map "\C-l" 'next-buffer)
(define-key global-map "\C-k" 'previous-buffer)
(define-key global-map "\C-c\C-q" (lambda () (interactive) (kill-buffer nil)))
(define-key global-map "\C-c\C-l" (lambda () (interactive) (ansi-term "/bin/zsh") (rename-uniquely)))
(define-key global-map "\C-c\C-r" 'query-replace)

					;parentheses highlight
(show-paren-mode 1)
(setq show-paren-delay 0)

					;latex
(add-hook 'latex-mode-hook 
	  (lambda ()
	    (define-key latex-mode-map "\C-o" 'other-window)
	    (define-key latex-mode-map "\C-c\C-v" 'split-window-vertically)
	    (define-key latex-mode-map "\C-c\C-h" 'split-window-horizontally)
	    (define-key latex-mode-map "\C-c\C-d" 'delete-other-windows)
	    (define-key latex-mode-map "\C-j" 'fastdown)
	    (define-key latex-mode-map "\C-h" 'fastup)
	    (define-key latex-mode-map "\C-l" 'next-buffer)
	    (define-key latex-mode-map "\C-k" 'previous-buffer)
	    (define-key latex-mode-map "\C-c\C-q" (lambda () (interactive) (kill-buffer nil)))
	    (define-key latex-mode-map "\C-c\C-l" (lambda () (interactive) (ansi-term "/bin/zsh") (rename-uniquely)))
	    (define-key latex-mode-map "\C-c\C-r" 'query-replace)
	    ))

					;ansi-term
(add-hook 'ansi-term-mode-hook 
	  (lambda ()
	    (define-key ansi-term-mode-map "\C-o" 'other-window)
	    (define-key ansi-term-mode-map "\C-c\C-v" 'split-window-vertically)
	    (define-key ansi-term-mode-map "\C-c\C-h" 'split-window-horizontally)
	    (define-key ansi-term-mode-map "\C-c\C-d" 'delete-other-windows)
	    (define-key ansi-term-mode-map "\C-j" 'fastdown)
	    (define-key ansi-term-mode-map "\C-h" 'fastup)
	    (define-key ansi-term-mode-map "\C-l" 'next-buffer)
	    (define-key ansi-term-mode-map "\C-k" 'previous-buffer)
	    (define-key ansi-term-mode-map "\C-c\C-q" (lambda () (interactive) (kill-buffer nil)))
	    (define-key ansi-term-mode-map "\C-c\C-l" (lambda () (interactive) (ansi-term "/bin/zsh") (rename-uniquely)))
	    (define-key ansi-term-mode-map "\C-c\C-r" 'query-replace)
	    ))

					;tex
(add-hook 'tex-mode-hook 
	  (lambda ()
	    (define-key tex-mode-map "\C-o" 'other-window)
	    (define-key tex-mode-map "\C-c\C-v" 'split-window-vertically)
	    (define-key tex-mode-map "\C-c\C-h" 'split-window-horizontally)
	    (define-key tex-mode-map "\C-c\C-d" 'delete-other-windows)
	    (define-key tex-mode-map "\C-j" 'fastdown)
	    (define-key tex-mode-map "\C-h" 'fastup)
	    (define-key tex-mode-map "\C-l" 'next-buffer)
	    (define-key tex-mode-map "\C-k" 'previous-buffer)
	    (define-key tex-mode-map "\C-c\C-q" (lambda () (interactive) (kill-buffer nil)))
	    (define-key tex-mode-map "\C-c\C-l" (lambda () (interactive) (ansi-term "/bin/zsh") (rename-uniquely)))
	    (define-key tex-mode-map "\C-c\C-r" 'query-replace)
	    ))

					;dired-x
(load "dired-x")
(define-key dired-mode-map "\C-o" 'other-window)
(define-key dired-mode-map "\C-j" 'fastdown)
(define-key dired-mode-map "\C-h" 'fastup)
(define-key dired-mode-map "\C-l" 'next-buffer)
(define-key dired-mode-map "\C-k" 'previous-buffer)
(put 'dired-find-alternate-file 'disabled nil)

					;load-path
(add-to-list 'load-path "~/.emacs.d/")

					;haskell
(add-to-list 'load-path "~/.emacs.d/haskell-mode-2.8.0")

(require 'haskell-mode)
(require 'haskell-cabal)

(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.lhs$" . literate-haskell-mode))
(add-to-list 'auto-mode-alist '("\\.cabal\\'" . haskell-cabal-mode))

					;(add-to-list 'interpreter-mode-alist '("runghc" . haskell-mode))     ;#!/usr/bin/env runghc 用
					;(add-to-list 'interpreter-mode-alist '("runhaskell" . haskell-mode)) ;#!/usr/bin/env runhaskell 用

;; ghc-mod
;; cabal でインストールしたライブラリのコマンドが格納されている bin ディレクトリへのパスを exec-path に追加する
(add-to-list 'exec-path (concat (getenv "HOME") "/Library/Haskell/bin"))
;; ghc-flymake.el などがあるディレクトリ ghc-mod を ~/.emacs.d 以下で管理することにした
					;(add-to-list 'load-path "~/.emacs.d/ghc-mod")

					;(autoload 'ghc-init "ghc" nil t)

(add-hook 'haskell-mode-hook
	  (lambda () 
					;(ghc-init)
					;    (turn-on-haskell-doc-mode)
	    (turn-on-haskell-indent)
	    )
	  )

					;egison
					;(autoload 'egison-mode "egison-mode" "Major mode for editing Egison code." t)
					;(setq auto-mode-alist
					;(cons `("\\.egi$" . egison-mode) auto-mode-alist))


					;transparentize
(setq frame-alpha-lower-limit 0)
(setq my-transparency-modification-interval 7)
(defun my-gradual-modify-transparency (&optional dec)
  (let* ((alpha-or-nil (frame-parameter nil 'alpha)) ; nil before setting
    	 (oldalpha (if alpha-or-nil alpha-or-nil 100))
    	 (tm (if dec (- oldalpha my-transparency-modification-interval)
	       (+ oldalpha my-transparency-modification-interval)))
	 (newalpha (if (< tm frame-alpha-lower-limit) frame-alpha-lower-limit
		     (if (> tm 100) 100 tm))))
    (modify-frame-parameters nil (list (cons 'alpha newalpha)))))
;; C-8 will decrease transparency
;; C-9 will increase transparency
(global-set-key (kbd "C-7") 
		(lambda() (interactive) (my-gradual-modify-transparency)))
(global-set-key (kbd "C-8") 
		(lambda() (interactive) (my-gradual-modify-transparency t)))
(defun my-set-transparency (x)
  (modify-frame-parameters nil (list (cons 'alpha x))))
;; C-9 will set transparency 72
;; C-0 will set transparency 100, that is not transparent at all
(global-set-key (kbd "C-9") (lambda () (interactive) (my-set-transparency 72)))
(global-set-key (kbd "C-0") (lambda () (interactive) (my-set-transparency 100)))

;; ;(when (eq window-system 'mac)
;; ;  (add-hook 'window-setup-hook
;; ;            (lambda ()
;; ;;              (setq mac-autohide-menubar-on-maximize t)
;; ;              (set-frame-parameter nil 'fullscreen 'fullboth)
;; ;              )))
;; (defun mac-toggle-max-window ()
;;   (interactive)
;;   (if (frame-parameter nil 'fullscreen)
;;       (set-frame-parameter nil 'fullscreen nil)
;;     (set-frame-parameter nil 'fullscreen 'fullboth)))

;; Carbon Emacsの設定で入れられた. メニューを隠したり．
(custom-set-variables
 '(display-time-mode t)
 '(tool-bar-mode nil)
 '(transient-mark-mode t))
(custom-set-faces
 )
;;Color
(if window-system (progn
		    (set-background-color "Black")
		    (set-foreground-color "LightGray")
		    (set-cursor-color "Gray")
		    (set-frame-parameter nil 'alpha 100)
		    ))

					; font-size
(defun increase-font-size ()
  (interactive)
  (set-face-attribute 'default
		      nil
		      :height
		      (+ 10 (face-attribute 'default :height))))
(defun decrease-font-size ()
  (interactive)
  (set-face-attribute 'default
		      nil
		      :height
		      ((lambda (h) (if (<= h 10) h (- h 10)))
		       (face-attribute 'default :height))))
(global-set-key [C-mouse-4] 'increase-font-size)
(global-set-key [C-wheel-up] 'increase-font-size)
(global-set-key [?\C-+] 'increase-font-size)
(global-set-key [?\C-=] 'increase-font-size)
(global-set-key [C-mouse-5] 'decrease-font-size)
(global-set-key [C-wheel-down] 'decrease-font-size)
(global-set-key [?\C--] 'decrease-font-size)

					;backup
(setq backup-directory-alist `(("." . "~/.emacs.d/saves")))

					; anything.el
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/")
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)

(require 'multi-term)
(setq multi-term-program "/bin/zsh")
