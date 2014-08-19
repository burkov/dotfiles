;;  '(cursor-in-non-selected-windows nil)
;;  '(custom-safe-themes (quote ("cf08ae4c26cacce2eebff39d129ea0a21c9d7bf70ea9b945588c1c66392578d1" default)))
;;  '(indent-tabs-mode nil)
;;  '(mouse-wheel-follow-mouse t)
;;  '(mouse-wheel-progressive-speed nil)
;;  '(mouse-wheel-scroll-amount (quote (4 ((shift) . 4))))

(scroll-bar-mode -1)
(tool-bar-mode -1)
(show-paren-mode 1)
(column-number-mode 1)
;; (setq show-paren-style 'expression)
(setq-default cursor-in-non-selected-windows nil)
(setq scroll-step 1)
(setq scroll-margin 8)
(setq make-backup-files nil)
(setq inhibit-startup-screen t)
(setq initial-frame-alist '((fullscreen . maximized)))
(setq tab-width 8)
(setq indent-tabs-mode t)
(savehist-mode)

;; move focus to newly created window after split
(defadvice split-window (after move-pointer-to-new-window activate)
  (other-window 1))

(add-to-list 'load-path "~/.emacs.d/color-themes/themes/tomorrow")
(require 'color-theme-tomorrow)
(color-theme-tomorrow-night)

(set-cursor-color "#ffffff")

;; keybindings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-x C-z") nil)
(global-set-key (kbd "C-v") nil)
(global-set-key (kbd "M-v") nil)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode)

;; (global-linum-mode)
(require 'misc)

(defun kill-to-word ()
  (interactive)
  (kill-region (point) (progn (forward-to-word 1)(point))))



(global-set-key (kbd "M-f") 'forward-to-word)
(global-set-key (kbd "M-b") 'backward-to-word)
(global-set-key (kbd "M-d") 'kill-to-word)

;; whitespace
(require 'whitespace)
(global-whitespace-mode)
(setq whitespace-style '(face trailing tabs tab-mark))
;; (setq whitespace-style '(face trailing))

;; ;; undo-tree
;; ;; (require 'undo-tree)
;; ;; (global-undo-tree-mode)

;; ido
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)


;; ;; deft
;; (require 'deft)

;; smex
(autoload 'smex "smex")
(global-set-key (kbd "M-x") 'smex)
