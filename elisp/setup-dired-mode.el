(require 'gnus-dired)
(put 'dired-find-alternate-file 'disabled nil)
;; make the `gnus-dired-mail-buffers' function also work on
;; message-mode derived modes, such as mu4e-compose-mode
(defun gnus-dired-mail-buffers ()
	"Return a list of active message buffers."
	(let (buffers)
		(save-current-buffer
			(dolist (buffer (buffer-list t))
				(set-buffer buffer)
				(when (and (derived-mode-p 'message-mode)
				           (null message-sent-message-via))
					(push (buffer-name buffer) buffers))))
		(nreverse buffers)))
(setq gnus-dired-mail-mode 'mu4e-user-agent)
(add-hook 'dired-mode-hook 'turn-on-gnus-dired-mode)
