; Now bind my F6-key to the run-prove command
(global-set-key [f6] 'run-prove)
(global-set-key (kbd "C-x p") 'perldoc-module)

; For multiple-cursors
;; (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
;; (global-set-key (kbd "C->") 'mc/mark-next-like-this)
;; (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
;; (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(global-set-key (kbd "C-c g") 'magit-status)
(define-key isearch-mode-map (kbd "C-y") 'isearch-yank-kill)

