; Add .elisp directory to load-path
(setq load-path (cons "~/.elisp" load-path))

; Load my "perl-convenience" stuff
(load "perl-convenience")

; Now bind my F6-key to the run-prove command
(global-set-key [f6] 'run-prove)

; Prefer to use cperl-mode over ancient perl-mode
(defalias 'perl-mode 'cperl-mode)
; Disable the annoying display of trailing whitespace as '_'
(setq cperl-invalid-face (quote off))
; Make parens electric (auto-insert matching)
(setq cperl-electric-parens t)
; Make sure matching parens are highlighted, without delay
(show-paren-mode t)
(setq show-paren-style 'expression)
(setq show-paren-delay 0)
(set-face-background 'show-paren-match-face "#656565")
;(set-face-foreground 'show-paren-match-face "#FFFFFF")
