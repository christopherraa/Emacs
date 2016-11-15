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

;; These overrides are here because I use emacs through tmux, with $TERM
;; set to screen-256color, and without these mappings the input would not
;; map to the correct windmove-function.
(define-key input-decode-map "\e[1;2A" [S-up])
(define-key input-decode-map "\e[1;2B" [S-down])
(define-key input-decode-map "\e[1;2C" [S-right])
(define-key input-decode-map "\e[1;2D" [S-left])
;; use Shift+arrow_keys to move cursor around split panes
(windmove-default-keybindings)

;; when cursor is on edge, move to the other side, as in a torus space
(setq windmove-wrap-around t )

;; Set emacs to install packages to ~/.elpa/
(setq package-user-dir (expand-file-name ".elpa" "~"))
