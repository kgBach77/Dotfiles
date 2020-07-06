;; Load path
(add-to-list 'load-path "~/.emacs.d/lisp")

;; User Information
(setq user-full-name "Kyle Goldbeck"
      user-mail-address "kyle.goldbeck@gmail.com")

;; Initialize MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)


(package-initialize)

;; Initialize Org-mode and set related keybindings
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-agenda-files (list "~/org"))


;;;;---- Basic interface settings ----;;;;

;; Emacs Transparency
(set-frame-parameter (selected-frame) 'alpha '(85 . 50))


;; Hide startup splash screen
(setq inhibit-startup-screen t
      inhibit-scratch-message t)

;; Disable bell
(setq ring-bell-function 'ignore)

;; Disable menus and scrollbars
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Disable kill buffer warnings
(setq kill-buffer-query-functions
      (remq 'process-kill-buffer-query-function
	    kill-buffer-query-functions))

;; Disable tabs and fix indentation
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)

;; Set UTF-8 Encoding
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Hightlight current line
(when window-system (add-hook 'prog-mode-hook 'hl-line-mode))

;; Load Custom theme folder
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")


;; Change font size for ultrawide
(set-face-attribute 'default nil :height 120)

;; Set default column width
(setq-default fill-column 80)

;; Dashboard
(require 'dashboard)
(dashboard-setup-startup-hook)

(setq dashboard-startup-banner "~/.emacs.d/img/dashLogo.png")

(setq dashboard-center-content t)
(setq dashboard-items '((recents . 7)
                        (projects . 7)
                        (agenda . 7)))
(setq dashboard-banner-logo-title "")

;; Clock
(setq display-time-24hr-format t)
(setq display-time-format "%H:%M - %d %B %Y")
(setq display-time-mode 1)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (Seventies)))
 '(custom-safe-themes
   (quote
    ("9c643c2ee5bf1baabd59b89f5be2c7bde30f4fdac5107fe9a06d05d5b562ef5f" "40c84e05fe3bb555b6b348f8231332cf59d26ad6313a4ebabe725dfd8b5d66c8" "db772d32fdcc49ff5a18f3a027ae67ec3f76e62d4303decbe7fb2769803bad4d" "698d072bc75860ae449ac55c138e9a0d0e125c3cb58149238470e598ab9fae0d" default)))
 '(org-agenda-files nil)
 '(package-selected-packages
   (quote
    (switch-window ivy use-package fancy-battery origami magit eww-lnum flycheck auto-complete lsp-treemacs))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;;; Org-mode settings

;; Line Spacing and Code formatting
(setq org-export-with-toc nil)

;; Org-mode settings
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))

;; Auto-complete
(ac-config-default)

;;;;; Org-mode LaTeX settings ;;;;;

(setq org-latex-default-package-alist '("" "minted"))


;; Native tab in source blocks
(setq org-src-tab-acts-natively t)

;; Use syntax highlight in source blocks
(setq org-src-fontify-natively t)

;; Line wrapping
(add-hook 'org-mode-hook
          '(lambda()
             (visual-line-mode 1)))
;;; -------------------------------- ;;;;

;;;; ----- Other settings ----- ;;;;

;; Global line numbers
(global-display-line-numbers-mode)
(add-hook 'prog-mode-hook 'electric-pair-mode)

;; Disable mouse scrolling
(mouse-wheel-mode -1)

;; Disable mouse mode
(require 'disable-mouse)
(global-disable-mouse-mode)

;; Open shell hotkey and Shell vars
(defvar my-term-shell "/bin/bash")
(defadvice urxvt (before force-bash)
  (interactive (list my-term-shell)))
(ad-activate 'urxvt)

;; Load config hotkey
(defun config-visit ()
  (interactive)
  (find-file "~/.emacs"))
(global-set-key (kbd "C-c e") ' config-visit)

;; Reload config
(defun config-reload()
  "Reloads ~/.emacs"
  (interactive)
  (org-babel-load-file (expand-file-name "~/.emacs")))
(global-set-key (kbd "C-c r") 'config-reload)

