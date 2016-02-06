; Settings for Magit
(defun my-magit-defaults ()
	;; Styling of lines of code added
	(set-face-attribute 'magit-diff-added nil
											:background nil
											:foreground "green")
	(set-face-attribute 'magit-diff-added-highlight nil
											:background nil
											:foreground "green")
	;; Styling of lines of code removed
	(set-face-attribute 'magit-diff-removed nil
											:background nil
											:foreground "#aa2222")
	(set-face-attribute 'magit-diff-removed-highlight nil
											:background nil
											:foreground "#aa2222")

	(set-face-attribute 'magit-diff-context-highlight nil
											:background nil
											:foreground "white")
	(set-face-attribute 'magit-diff-context nil
											:foreground "white")
	(set-face-attribute 'magit-diff-file-heading-highlight nil
											:foreground "black")

	;; Styling header for hunks
	(set-face-attribute 'magit-diff-hunk-heading nil
											:background "#414141"
											:foreground "white")
	(set-face-attribute 'magit-diff-hunk-heading-highlight nil
											:background "#414141"
											:foreground "#ffc56b")
	)
(add-hook 'magit-status-mode-hook 'my-magit-defaults)
(global-set-key (kbd "C-c g") 'magit-status)
