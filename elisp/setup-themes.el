;; Making the vertical divider between panes a little prettier
(set-display-table-slot standard-display-table 'vertical-border ?│)

;; Actual themeing
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(setq nord-comment-brightness 20)
(load-theme 'nord t)
