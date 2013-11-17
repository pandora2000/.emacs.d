(defun open-current-directory-in-tmux-new-window ()
  "カレントディレクトリをtmuxの新しいwindowで開く."
  (interactive)
  (let* ((dir (if buffer-file-name
                  (file-name-directory buffer-file-name)
                (expand-file-name "~/")))
         (cmd (concat "tmux new-window \"cd " dir "; exec $SHELL\"")))
    (cond ((eq (shell-command cmd) 0)
           (message "Open directory %s in tmux new window." dir))
          (t
           (message "Failed to create new window in tmux.")))))
