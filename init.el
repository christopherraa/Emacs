;; Add some path variables for custom configuration
(setq elisp-dir (expand-file-name "elisp" user-emacs-directory))
;; Set up load path
(add-to-list 'load-path elisp-dir)

(load "general-settings")
(load "setup-packages")
(load "load-packages")
(load "init-keybindings")
(load "setup-ido-mode")
(load "setup-mu4e")
(load "setup-magit")
(load "setup-git-gutter+-mode")
(load "setup-perl-mode")
(load "setup-markdown-mode")
;; (load "setup-company-mode")
(load "setup-haskell-mode")
(load "setup-dired-mode")
(load "setup-css-mode")
(load "setup-wrap-region-mode")
(load "setup-show-paren-mode")
(load "setup-js2-mode")
(load "setup-yaml-mode")
(load "setup-shell-mode")
(load "setup-whitespace-mode")
(load "find-file-as-root")
(load "perl-convenience")
(load "setup-themes")
(load "setup-multiple-cursors")
(load "setup-flycheck")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
	 (quote
		("0542fbd0a5a636ff3000d77c5ddf5da6c375976c921efb83960f425e4b399a99" default)))
 '(puppet-indent-tabs-mode t)
 '(ruby-indent-tabs-mode t)
 '(sgml-xml-mode t))
