(require 'ido-vertical-mode)
(ido-mode t)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)
(setq ido-use-faces t)
(set-face-attribute 'ido-vertical-first-match-face nil
										:background nil
										:foreground "orange")
(set-face-attribute 'ido-vertical-only-match-face nil
										:background nil
										:foreground nil)
(set-face-attribute 'ido-vertical-match-face nil
										:foreground nil)
(ido-vertical-mode 1)


(setq emacs-persistence-directory (concat user-emacs-directory "persistence/"))
(unless (file-exists-p emacs-persistence-directory)
    (make-directory emacs-persistence-directory t))
(setq ido-save-directory-list-file
    (concat emacs-persistence-directory "ido-last"))
