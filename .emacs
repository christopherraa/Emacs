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

; Load custom yasnippets
(setq yas/root-directory "~/.elisp/yasnippet")
(yas/load-directory yas/root-directory)


(setq-default tab-width 2)

; Use smart-tabs-mode
;(setq load-path (cons "~/.elisp/smarttabs" load-path))
;(setq cua-auto-tabify-rectangles nil)
;(require 'smart-tabs-mode)
;(require 'smarttabs)

;    for js2-mode
;(setq-default indent-tabs-mode nil)
;(add-hook 'js2-mode-hook 'smart-tabs-mode-enable)
;(smart-tabs-advice c-indent-line c-basic-offset)
;(smart-tabs-advice c-indent-region c-basic-offset)
;(smart-tabs-advice js2-indent-line js2-basic-offset)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(cperl-break-one-line-blocks-when-indent nil)
 '(cperl-close-paren-offset 0)
 '(cperl-indent-comment-at-column-0 t)
 '(cperl-indent-parens-as-block t)
 '(cperl-label-offset 0)
 '(cperl-merge-trailing-else nil)
 '(cperl-min-label-indent 0)
 '(js-indent-level 2))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(require 'css-mode)
(setq cssm-indent-level 2)
(setq cssm-newline-before-closing-bracket t)
(setq cssm-indent-function #'cssm-c-style-indenter)
(setq cssm-mirror-mode t)
