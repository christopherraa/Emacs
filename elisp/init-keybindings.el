(define-key isearch-mode-map (kbd "C-y") 'isearch-yank-kill)

(global-set-key "\M-[1;5A"    'backward-paragraph )  ; Ctrl+up   => jumping "up" one paragraph
(global-set-key "\M-[1;5B"    'forward-paragraph) ; Ctrl+down    => jumping "down" one paragraph
(global-set-key "\M-[1;5C"    'forward-word)  ; Ctrl+right   => forward word
(global-set-key "\M-[1;5D"    'backward-word) ; Ctrl+left    => backward word
