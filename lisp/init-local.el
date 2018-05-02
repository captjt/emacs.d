;;; init-local.el --- Summary: custom local lisp functions.
;;; Commentary:
;;;   Just having some fun.



;;; Code:

;; Bootstrap use-package.el
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Editorconfig
(use-package editorconfig
             :ensure t
             :config
             (editorconfig-mode 1))

;; Show line numbers
(global-linum-mode 1)

;; Org-mode stuff
(use-package org-bullets
             :ensure t
             :config
             (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(provide 'init-local)
;;; init-local.el ends here
