;; .emacs -- Emacs config

;; PACKAGE INSTALL
;; --------------------------------------------------------------------------
(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; MY CUSTOMIZATION
;; --------------------------------------------------------------------------

;; opening buffer
(setq initial-buffer-choice "~/")

;; relative linum
(require 'linum-relative)
(linum-relative-global-mode)

;; elpy for python 
(elpy-enable)
(setq elpy-rpc-backend "jedi")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (alect-black-alt)))
 '(custom-safe-themes
   (quote
    ("7356632cebc6a11a87bc5fcffaa49bae528026a78637acd03cae57c091afd9b9" default)))
 '(package-selected-packages (quote (magit ## elpy linum-relative alect-themes))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Use `display-line-number-mode` as linum-mode's backend for smooth performance
(setq linum-relative-backend 'display-line-numbers-mode)


