(setq whitespace-style
			(quote (face lines-tail)))
(setq whitespace-line-column 100)
(add-hook 'find-file-hook 'whitespace-mode)
