(setq site-lisp-dir
			(expand-file-name "site-lisp" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path site-lisp-dir)
(add-to-list 'load-path "~/.emacs.d/elisp")

(dolist (project (directory-files site-lisp-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

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
(global-set-key (kbd "C-x p") 'perldoc-module)

; Make sure matching parens are highlighted, without delay
(show-paren-mode t)
(setq show-paren-style 'parenthesis)
(setq show-paren-delay 0)
;(set-face-background 'show-paren-match-face "#656565")

; Show trailing whitespace
(setq show-trailing-whitespace 1)
(setq cperl-invalid-face 'trailing-whitespace)

; Load custom yasnippets
(setq yas/root-directory "~/.emacs.d/elisp/yasnippet")
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
 '(cperl-continued-statement-offset 0)
 '(cperl-indent-comment-at-column-0 t)
 '(cperl-indent-parens-as-block t)
 '(cperl-label-offset 0)
 '(cperl-merge-trailing-else nil)
 '(cperl-min-label-indent 0)
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t)
 '(js2-mode-escape-quotes nil))
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
(put 'upcase-region 'disabled nil)

(require 'color-theme-solarized)
(put 'downcase-region 'disabled nil)


; Trying out multi-web-mode
;; (require 'multi-web-mode)
;; (setq mweb-default-major-mode 'html-mode)
;; (setq mweb-tags '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
;;                   (js-mode "<script[^>]*>" "</script>")
;;                   (css-mode "<style[^>]*>" "</style>")
;; 									(cperl-mode "<%=" "%>")
;; 									(cperl-mode "^\\(\t\\|\s\\)*%" "$")
;; 									(sql-mode "<<SQL" "^SQL")
;; ))
;; (setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5" "ep"))
;; (multi-web-global-mode 1)

; Multiple cursors
;; (require 'multiple-cursors)
;; (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
;; (global-set-key (kbd "C->") 'mc/mark-next-like-this)
;; (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
;; (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(define-key isearch-mode-map (kbd "C-y") 'isearch-yank-kill)

; Load wrap-region and enable it globally
(require 'wrap-region)
(define-globalized-minor-mode global-wrap-region-mode
  wrap-region-mode wrap-region-mode)
(global-wrap-region-mode 1)
