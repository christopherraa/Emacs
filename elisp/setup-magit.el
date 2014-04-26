; Settings for Magit
(defun disable-magit-highlight-in-buffer () 
  (face-remap-add-relative 'magit-item-highlight '())
	(set-face-background 'magit-diff-hunk-header "black")
	(set-face-background 'magit-diff-file-header "black")
)
(add-hook 'magit-status-mode-hook 'disable-magit-highlight-in-buffer)
