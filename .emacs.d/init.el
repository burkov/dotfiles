;; TODO
;; * make tabs and spaces visible
;; * line-move-viaible & EOL cursor sticking
;; * rainbow-delimiters: change colors to more contrast
;; * paredit: investigate how to use it
;; * expand-region: same as paredit


(custom-set-variables
 '(cursor-in-non-selected-windows nil)              ; don't display cursor in inactive window
 '(show-paren-mode t)                               ; highlight matching parantesis
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

;; (add-to-list 'load-path "/opt/erlang/lib/tools-2.6.13/emacs/")

(server-start)                                      ; start in server mode, so you can use emacsclient 

(defadvice split-window (after move-pointer-to-new-window activate) ; move focus to newly created window after split
  (other-window 1))

;; (global-hl-line-mode 1)                                  ; enable current line highlighting
;; (set-face-background hl-line-face "gray20")              ; and choose it color
;; (load-file "~/.emacs.d/color-themes/themes/xoria256.el") ; load theme
;; (color-theme-xoria256)                                   ; and apply it
(load-theme 'tango-dark t)

(global-linum-mode)
(savehist-mode)

;; keybindings and aliases
(defalias 'qrr 'query-replace-regexp)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-x C-z") nil)
(global-set-key (kbd "C-v") nil)
(global-set-key (kbd "M-v") nil)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; package mirrors list
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; fonts
;; (set-face-attribute 'default nil :height 110 :family "DejaVu Sans Mono")
