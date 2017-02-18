; Most of this is shamelessly copied from :
; http://y.tsutsumi.io/emacs-from-scratch-part-2-package-management.html
; Convenient having packages be auto-installed upon load. Just be mindful
; that it sometimes takes a restart of emacs for the installed modules to
; have every function they need available.
(require 'cl)

(require 'package)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(defvar required-packages
	'(
		less-css-mode
		wrap-region
		dash
		markdown-mode
		yasnippet
		magit
		git-gutter+
		ido-vertical-mode
		flycheck
		js2-mode
		js2-highlight-vars
		restclient
		salt-mode
		) "a list of packages to ensure are installed at launch.")

; method to check if all packages are installed
(defun packages-installed-p ()
	(loop for p in required-packages
				when (not (package-installed-p p)) do (return nil)
				finally (return t)))

; if not all packages are installed, check one by one and install the missing ones.
(unless (packages-installed-p)
	; check for new packages (package versions)
	(message "%s" "Emacs is now refreshing its package database...")
	(package-refresh-contents)
	(message "%s" " done.")
	; install the missing packages
	(dolist (p required-packages)
		(when (not (package-installed-p p))
			(package-install p))))
