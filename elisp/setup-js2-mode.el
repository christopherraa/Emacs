(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.es6\\'" . js2-mode))
(setq
 js2-strict-missing-semi-warning nil
 js2-missing-semi-one-line-override t
 js-indent-level 2
 js2-basic-offset 2
 js2-bounce-indent-p t
 js2-mode-escape-quotes nil)
