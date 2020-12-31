;; Load path
(add-to-list 'load-path "~/.emacs.d/lisp")

;; User Information
(setq user-full-name "Kyle Goldbeck"
      user-mail-address "kyle.goldbeck@gmail.com")

;; Initialize MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(setq package-emable-at-startup nil)
(package-initialize)




;; Initialize Org-mode and set related keybindings
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-agenda-files (list "~/org/Homework.org"))

;; delete
(setq package-check-signature nil)

;;;;---- Basic interface settings ----;;;;

;; Dashboard
(require 'dashboard)
(dashboard-setup-startup-hook)

(setq dashboard-startup-banner "~/.emacs.d/img/dashLogo.png")

(setq dashboard-center-content t)
(setq dashboard-items '((recents . 7)
                        (projects . 7)
                        (agenda . 7)))
(setq dashboard-banner-logo-title "")


;; Emacs Transparency (disbaled on Windows PC)
;; (set-frame-parameter (selected-frame) 'alpha '(85 . 50))

;; Set default font
(set-frame-font "IBM Plex Mono Text-12.0" nil t)

;; Powerline
(require 'powerline)
(powerline-default-theme)

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


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(ansi-term-color-vector
   [unspecified "#1F1611" "#660000" "#144212" "#EFC232" "#5798AE" "#BE73FD" "#93C1BC" "#E6E1DC"])
 '(custom-enabled-themes (quote (Seventies)))
 '(custom-safe-themes
   (quote
    ("b89ae2d35d2e18e4286c8be8aaecb41022c1a306070f64a66fd114310ade88aa" "939ea070fb0141cd035608b2baabc4bd50d8ecc86af8528df9d41f4d83664c6a" "aded61687237d1dff6325edb492bde536f40b048eab7246c61d5c6643c696b7f" "4cf9ed30ea575fb0ca3cff6ef34b1b87192965245776afa9e9e20c17d115f3fb" "16bc8f14ddf7021ffc4e60f28eb2c2a866078f5c046421b96ccd918a1630b24d" "e0248214be7dbd262651ebeb55bb40f139821869874536dce9ad58578929eeff" "95a77bbbcf82eac085844f8f2d11e7196cf88748a145316ac84525e4516c3ff8" "9c643c2ee5bf1baabd59b89f5be2c7bde30f4fdac5107fe9a06d05d5b562ef5f" "40c84e05fe3bb555b6b348f8231332cf59d26ad6313a4ebabe725dfd8b5d66c8" "db772d32fdcc49ff5a18f3a027ae67ec3f76e62d4303decbe7fb2769803bad4d" "698d072bc75860ae449ac55c138e9a0d0e125c3cb58149238470e598ab9fae0d" default)))
 '(fci-rule-character-color "#452E2E")
 '(fci-rule-color "#452E2E")
 '(org-agenda-files nil)
 '(package-selected-packages
   (quote
    (gnu-elpa-keyring-update elpy powerline  rustic htmlize easy-jekyll weblogger flycheck-clangcheck flycheck-haskell flycheck-rust pdf-tools rust-mode javap-mode haskell-mode switch-window ivy use-package fancy-battery magit eww-lnum flycheck auto-complete lsp-treemacs)))
 '(pdf-view-midnight-colors (quote ("#fdf4c1" . "#32302f"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; This should automatically download any packages not already installed
(package-refresh-contents)
(package-install-selected-packages)


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

;; Windows shell options
(setq explicit-shell-file-name "C:/Program Files/Git/bin/bash.exe")

;; Easy-jekyll-mode

(setq easy-jekyll-basedir "C:/Users/Kyle/Documents/GitHub/kmg731.github.io")
(setq easy-jekyll-url "https://zhaba.dev")
(define-key global-map (kbd "C-c C-e")`easy-jekyll)

