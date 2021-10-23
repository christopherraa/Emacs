(define-key isearch-mode-map (kbd "C-y") 'isearch-yank-kill)

(global-set-key "\M-[1;5A"    'backward-paragraph )  ; Ctrl+up   => jumping "up" one paragraph
(global-set-key "\M-[1;5B"    'forward-paragraph) ; Ctrl+down    => jumping "down" one paragraph
(global-set-key "\M-[1;5C"    'forward-word)  ; Ctrl+right   => forward word
(global-set-key "\M-[1;5D"    'backward-word) ; Ctrl+left    => backward word

(defun move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))


(defun move-line-down ()
  "Move down the current line."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

(global-set-key [(control meta up)]  'move-line-up)
(global-set-key [(control meta down)]  'move-line-down)
