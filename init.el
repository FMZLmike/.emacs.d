(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backup"))))
 '(column-number-mode t)
 '(global-font-lock-mode t nil (font-lock))
 '(indent-tabs-mode nil)
 '(package-selected-packages
   (quote
    (dockerfile-mode web-mode lua-mode moonscript scala-mode toml-mode swift-mode rust-mode go-mode)))
 '(show-trailing-whitespace t)
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; disable auto indent
(when (fboundp 'electric-indent-mode)
  (electric-indent-mode -1))
;; elpa support
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives
               '("melpa" . "https://melpa.org/packages/") t)
  (package-initialize))
;; toml support
(when (>= emacs-major-version 24)
  (require 'toml-mode))
