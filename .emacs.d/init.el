(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cursor-in-non-selected-windows nil)
 '(custom-safe-themes (quote ("cf08ae4c26cacce2eebff39d129ea0a21c9d7bf70ea9b945588c1c66392578d1" default)))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(make-backup-files nil)
 '(mouse-wheel-follow-mouse t)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount (quote (4 ((shift) . 4))))
 '(scroll-bar-mode nil)
 '(scroll-margin 8)
 '(scroll-step 1)
 '(show-paren-mode t)
 '(show-paren-style (quote expression))
 '(tool-bar-mode nil))

;; move focus to newly created window after split
(defadvice split-window (after move-pointer-to-new-window activate)
  (other-window 1))

;; saves opened buffers
;; (desktop-save-mode 1)

(server-start)

;; change colortheme
(add-to-list 'load-path "~/.emacs.d/color-themes/themes/tomorrow")
(require 'color-theme-tomorrow)
(color-theme-tomorrow-night)

;; keybindings and aliases
(defalias 'qrr 'query-replace-regexp)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-x C-z") nil)
(global-set-key (kbd "C-v") nil)
(global-set-key (kbd "M-v") nil)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; package
(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;; rainbow-delimiters
(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode)

;; whitespace
(require 'whitespace)
(global-whitespace-mode)
(setq whitespace-style '(face trailing tabs tab-mark))

;; undo-tree
(require 'undo-tree)
(global-undo-tree-mode)

;; ido
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

;; misc
(global-linum-mode)
(savehist-mode)

;; smex
(autoload 'smex "smex"
  "Smex is a M-x enhancement for Emacs, it provides a convenient interface to your recently and most frequently used commands.")
(global-set-key (kbd "M-x") 'smex)

;; ido-ubiquitous
(setq ido-everywhere t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
