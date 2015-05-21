; Load wrap-region and enable it globally
(require 'wrap-region)
(define-globalized-minor-mode global-wrap-region-mode
  wrap-region-mode wrap-region-mode)
(global-wrap-region-mode 1)
