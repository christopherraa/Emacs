;; Add some path variables for custom configuration
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
(load "general-settings")
(load "init-keybindings")
(load "setup-mu4e")
(load "setup-magit")
(load "setup-perl-mode")
(load "setup-markdown-mode")
;; (load "setup-company-mode")
(load "setup-haskell-mode")
(load "setup-yasnippet-mode")
(load "setup-dired-mode")
(load "setup-css-mode")
(load "setup-wrap-region-mode")
(load "setup-show-paren-mode")
(load "setup-js2-mode")
(load "perl-convenience")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-archives
	 (quote
		(("gnu" . "http://elpa.gnu.org/packages/")
		 ("marmalade" . "http://marmalade-repo.org/packages/"))))
 '(puppet-indent-tabs-mode t)
 '(ruby-indent-tabs-mode t)
 '(sgml-xml-mode t)
 '(sh-basic-offset 2))
