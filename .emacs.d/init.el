(custom-set-variables
 '(cursor-in-non-selected-windows nil)              ; don't display cursor in inactive window
 '(show-paren-mode t)                               ; highlight matching parantesis
 '(show-paren-style 'expression)                    ; hightligt whole s-exp
 '(scroll-bar-mode nil)                             ; don't display scrollbars
 '(tool-bar-mode nil)                               ; don't display toolbar
 '(scroll-margin 8)                                 ; start scrolling 8 lines before end of a page
 '(scroll-step 1)                                   ; keyboard scroll step
 '(mouse-wheel-scroll-amount '(4 ((shift) . 4)))    ; one line at a time
 '(mouse-wheel-progressive-speed nil)               ; don't accelerate scrolling
 '(mouse-wheel-follow-mouse t)                      ; scroll window under mouse
 '(initial-frame-alist '((fullscreen . maximized))) ; open emacs window maximized
 '(inhibit-startup-screen t)                        ; don't show startup screen
 '(make-backup-files nil)                           ; do not create backup files~
 '(indent-tabs-mode nil)                            ; spaces only (tabs are evil)!
 '(column-number-mode t)                            ; always show column numbers
 )

;; move focus to newly created window after split
(defadvice split-window (after move-pointer-to-new-window activate)
  (other-window 1))

(server-start)

;; change colortheme
(load-theme 'tango-dark t)

;; keybindings and aliases
(defalias 'qrr 'query-replace-regexp)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-x C-z") nil)
(global-set-key (kbd "C-v") nil)
(global-set-key (kbd "M-v") nil)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; package
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

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
