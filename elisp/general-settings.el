;; Disable menus, tollbar and scrollbars
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Show trailing whitespace
(setq show-trailing-whitespace 1)
(setq-default tab-width 2)

;; UP/down-casing regions rock, so enable it
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; Setting backup-options
;; Set a custom location for auto-save
(setq auto-save-file-name-transforms `((".*" ,(expand-file-name "tmp" "~") t)))
(setq backup-directory-alist `((".*" . ,(expand-file-name "tmp" "~"))))
(setq backup-by-copying t)
(setq delete-old-versions t
	kept-new-versions 6
	kept-old-versions 2
	version-control t)

;; don't keep message buffers around
(setq message-kill-buffer-on-exit t)

;; use Shift+arrow_keys to move cursor around split panes
(windmove-default-keybindings)

;; when cursor is on edge, move to the other side, as in a torus space
(setq windmove-wrap-around t )

;; Set emacs to install packages to ~/.elpa/
(setq package-user-dir (expand-file-name ".elpa" "~"))
