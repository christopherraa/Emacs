(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(setq
	site-lisp-dir (expand-file-name "site-lisp" user-emacs-directory)
	elisp-dir (expand-file-name "elisp" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path site-lisp-dir)
(add-to-list 'load-path elisp-dir)

(dolist (project (directory-files site-lisp-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

(load "load-packages")
(load "setup-mu4e")
(load "init-keybindings")
(load "setup-perl-mode")
(load "setup-magit")
(load "setup-markdown-mode")
(load "perl-convenience")
(load "setup-company-mode")
(load "setup-haskell-mode")
(load "setup-yasnippet")


; Make sure matching parens are highlighted, without delay
(show-paren-mode t)
(setq show-paren-style 'parenthesis)
(setq show-paren-delay 0)
;(set-face-background 'show-paren-match-face "#656565")

; Show trailing whitespace
(setq show-trailing-whitespace 1)



(setq-default tab-width 2)

; Use smart-tabs-mode
;(setq load-path (cons "~/.elisp/smarttabs" load-path))
;(setq cua-auto-tabify-rectangles nil)

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
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t)
 '(js2-mode-escape-quotes nil)
 '(puppet-indent-tabs-mode t)
 '(ruby-indent-tabs-mode t)
 '(sgml-xml-mode t)
 '(sh-basic-offset 2))

(setq cssm-indent-level 2)
(setq cssm-newline-before-closing-bracket t)
(setq cssm-indent-function #'cssm-c-style-indenter)
(setq cssm-mirror-mode t)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

; Trying out multi-web-mode
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


; Load wrap-region and enable it globally
(define-globalized-minor-mode global-wrap-region-mode
  wrap-region-mode wrap-region-mode)
(global-wrap-region-mode 1)

; Setting backup-options
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
	kept-new-versions 6
	kept-old-versions 2
	version-control t)

;; don't keep message buffers around
(setq message-kill-buffer-on-exit t)

; Dired stuff
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

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-set-key "\M-[1;5C"    'forward-word)  ; Ctrl+right   => forward word
(global-set-key "\M-[1;5D"    'backward-word) ; Ctrl+left    => backward word
