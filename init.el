;;; init.el --- Initialization file
;;; Commentary: Emacs startup file --- initialization of Emacs

;; Add some path variables for custom configuration

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
; (package-initialize)

;;; Code:

(setq elisp-dir (expand-file-name "elisp" user-emacs-directory))
;; Set up load path
(add-to-list 'load-path elisp-dir)
(add-to-list 'load-path "/home/christopher/share/emacs/site-lisp/mu4e")

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
(load "setup-emmet")
(load "setup-restclient")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
	 '("c5a71f8c0066b2dc91015a487f963931ac5a8eb1a3ef90898d899e7c3e71ccc5" "7f6d4aebcc44c264a64e714c3d9d1e903284305fd7e319e7cb73345a9994f5ef" "c7f10959cb1bc7a36ee355c765a1768d48929ec55dde137da51077ac7f899521" "2642a1b7f53b9bb34c7f1e032d2098c852811ec2881eec2dc8cc07be004e45a0" "9e31aff9afe3c20a33dd966b4c54c6a5151f07659362e4b06bde38ded5370dae" "6bc387a588201caf31151205e4e468f382ecc0b888bac98b2b525006f7cb3307" "445e30faa31222f339df0a313675e79b37fc33603cc65279e1704893e19b4f37" "82358261c32ebedfee2ca0f87299f74008a2e5ba5c502bde7aaa15db20ee3731" "bf390ecb203806cbe351b966a88fc3036f3ff68cd2547db6ee3676e87327b311" "e9df267a1c808451735f2958730a30892d9a2ad6879fb2ae0b939a29ebf31b63" "0542fbd0a5a636ff3000d77c5ddf5da6c375976c921efb83960f425e4b399a99" default))
 '(package-selected-packages
	 '(jinja2-mode ansible ansible-vault vlf csv-mode atom-dark-theme immaterial-theme cyberpunk-theme danneskjold-theme vue-mode wrap-region sudoku salt-mode restclient puppet-mode php-mode nord-theme markdown-mode magit less-css-mode js2-refactor js2-highlight-vars ido-vertical-mode groovy-mode graphviz-dot-mode go-mode go-autocomplete git-gutter+ flycheck emmet-mode dockerfile-mode cpanfile-mode 2048-game))
 '(puppet-indent-tabs-mode t)
 '(ruby-indent-tabs-mode t)
 '(sgml-xml-mode t))



;;; Commentary:
;; 

(require 'js2-refactor)
(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-m")

(defun auto-complete-for-go ()
	(auto-complete-mode 1))
(add-hook 'go-mode-hook 'auto-complete-for-go)
(with-eval-after-load 'go-mode
	(require 'go-autocomplete))

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init)

;;; init.el ends here
