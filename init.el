;;; init.el --- Main Emacs initialization file
;;; Commentary:

;;; Code:

;; General settings for Emacs
(menu-bar-mode -1)

;; Put custom-* stuff in a separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Require and initialize `package`, with Melpa added
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Adding use-package to encapsulate pr package initialization
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

;; Add flycheck to get linting
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

;; Rainbow delimiters are pretty, so add those
(use-package rainbow-delimiters
  :ensure t
  :commands rainbow-delimiters-mode
  :hook(
	(prog-mode . rainbow-delimiters-mode)
	(text-mode . rainbow-delimiters-mode)
	)
  )

;; Magit is an absolute must-have
(use-package magit
  :ensure t
  :bind ("C-c g" . magit-status)
  )

;;; init.el ends here
