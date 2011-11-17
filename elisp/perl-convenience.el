; Set the directory in which emacs was started
; I use this to be able to do such things as to go to project root
;  (since I assume that is where emacs was started) and run a command
; eg. 'prove'.
(setq startup-path (substring (pwd) 10))

; Jumps to the path in which emacs was started, runs prove. Output
; is sent to a new read-only buffer.
(defun run-prove ()
  (interactive)
  (cd startup-path)
  (get-buffer-create "*prove-buffer*")
  (switch-to-buffer "*prove-buffer*")
  (setq buffer-read-only nil)
  (clipboard-kill-region 1 (point-max))
  (beginning-of-buffer)
  (insert (shell-command-to-string "prove"))
  (toggle-read-only))
