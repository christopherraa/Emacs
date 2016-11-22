;; Making the vertical divider between panes a little prettier
(set-display-table-slot standard-display-table 'vertical-border ?│)

;; Actual themeing
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'wombat t)
