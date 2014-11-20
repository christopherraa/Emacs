; Prefer to use cperl-mode over ancient perl-mode
(defalias 'perl-mode 'cperl-mode)

(setq
	cperl-invalid-face (quote off) ; Disable annoying display of trailing whitespace as '_'
	cperl-electric-parens t ; Make parens electric (auto-insert matching)
	cperl-invalid-face 'trailing-whitespace
	cperl-break-one-line-blocks-when-indent nil
	cperl-close-paren-offset 0
	cperl-continued-statement-offset 0
	cperl-indent-comment-at-column-0 t
	cperl-indent-parens-as-block t
	cperl-label-offset 0
	cperl-merge-trailing-else nil
	cperl-min-label-indent 0)

(add-to-list 'auto-mode-alist '("\\.t\\'" . cperl-mode))

(defun my-cperl-mode-hook ()
  (interactive)
  (set-face-background 'cperl-hash-face "unspecified")
  (set-face-background 'cperl-array-face "unspecified")
  (message "cperl hook"))

(add-hook 'cperl-mode-hook 'my-cperl-mode-hook)

