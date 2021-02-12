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

(org-babel-load-file (expand-file-name "~/.emacs.d/README.org"))
(set-fontset-font "fontset-default" 'unicode "Noto Color Emoji")
;; Code:

(provide 'init)
;;; init.el ends here
