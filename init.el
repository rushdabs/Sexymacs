;;; package --- Summary
;;; Commentary:
;;; Code:				;

(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-always-ensure t)

(org-babel-load-file (expand-file-name "~/.emacs.d/README.org"))
(set-fontset-font "fontset-default" 'unicode "Noto Color Emoji")
;; Code:

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(lua-mode neotree nasm-mode lsp-ivy lsp-ui ccls company-lsp lsp-mode company-irony yasnippet which-key use-package rainbow-delimiters org-bullets ivy-rich helpful forge flycheck evil doom-themes doom-modeline counsel-projectile company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
