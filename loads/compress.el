;;;;圧縮
(defun dired-do-comp (file-name)
  (interactive "F Compressed file name is: ")
  (let ((files (dired-get-marked-files t current-prefix-arg))
	(arg (cond ((string-match ".*\.tar\.bz2$" file-name) "tar jcvf")
		   ((string-match ".*\.zip$" file-name) "zip")
		   ((string-match ".*\.lzh$" file-name) "lha a")
		   (t "tar zcvf"))))
    (dired-do-shell-command
     (concat arg " " file-name " * &") nil files)))

;;;;解凍
(defun dired-do-decomp ()
  (interactive)
  (let ((files (dired-get-marked-files t current-prefix-arg)))
    (mapcar (lambda (e)
	      (let ((arg (cond ((string-match ".*\.tar.bz2$" e) "tar jxvf")
			       ((string-match ".*\.zip$" e) "unzip")
			       ((string-match ".*\.lzh$" e) "lha e")
			       (t "tar zxvf"))))
		(dired-do-shell-command (concat arg " *") nil (list e)))) files)))
