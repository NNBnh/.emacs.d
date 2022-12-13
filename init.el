(server-start)

(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(defun get-fullpath (@file-relative-path)
  (concat (file-name-directory (or load-file-name buffer-file-name)) @file-relative-path))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(avy-keys
   (quote
	(106 102 107 100 108 115 105 101 111 119 109 99 110 118)))
 '(backup-by-copying t)
 '(blink-cursor-mode t)
 '(column-number-mode t)
 '(create-lockfiles nil)
 '(cua-enable-cua-keys (quote shift))
 '(cua-mode t nil (cua-base))
 '(cua-remap-control-v nil)
 '(cua-remap-control-z nil)
 '(custom-safe-themes
   (quote
	("c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(delete-selection-mode t)
 '(dired-recursive-copies (quote always))
 '(electric-pair-mode t)
 '(global-hl-line-mode t)
 '(global-undo-tree-mode t)
 '(global-whitespace-mode t)
 '(highlight-indent-guides-character 9615)
 '(highlight-indent-guides-method (quote character))
 '(hscroll-step 1)
 '(inhibit-startup-screen t)
 '(ivy-count-format "%d/%d ")
 '(ivy-mode t)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(minibuffer-prompt-properties
   (quote
	(read-only t cursor-intangible t face minibuffer-prompt)))
 '(mode-line-format
   (quote
	("%e" mode-line-front-space "%p %l %C" "  " mode-line-buffer-identification "  " mode-line-modes
	 (vc-mode vc-mode)
	 "  " mode-line-misc-info mode-line-end-spaces)))
 '(mouse-wheel-scroll-amount (quote (3 ((shift) . 1) ((control)))))
 '(package-selected-packages
   (quote
	(srcery-theme all-the-icons all-the-icons-ivy all-the-icons-dired powerline rainbow-mode rainbow-delimiters highlight-indent-guides flycheck langtool aggressive-indent symon multiple-cursors avy goto-line-preview smartparens swiper visual-regexp-steroids dumb-jump ivy ivy-yasnippet company restart-emacs diff-hl fd-dired dired-rsync vterm magit pdf-tools mines)))
 '(pop-up-frames t)
 '(prettify-symbols-unprettify-at-point (quote right-edge))
 '(rainbow-html-colors nil)
 '(rainbow-r-colors nil)
 '(scroll-bar-mode nil)
 '(scroll-step 1)
 '(sentence-end-double-space nil)
 '(show-paren-mode t)
 '(smartparens-global-mode t)
 '(srcery-transparent-background t)
 '(tab-width 4)
 '(tetris-tty-colors
   ["#FED06E" "#68A8E4" "#FF8700" "#98BC37" "#F75341" "#FF5C8F" "#53FDE9"])
 '(tetris-x-colors
   [[1 0.8 0.4]
	[0.4 0.7 0.9]
	[1 0.5 0]
	[0.6 0.7 0.2]
	[0.9 0.3 0.3]
	[1 0.4 0.6]
	[0.3 1 0.9]])
 '(tool-bar-mode nil)
 '(truncate-lines t)
 '(undo-tree-enable-undo-in-region nil)
 '(whitespace-style (quote (face tabs tab-mark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "FiraCode Nerd Font" :foundry "CTDB" :slant normal :weight normal :height 120 :width normal))))
 '(mode-line ((t (:background "#2D2C29" :foreground "#FED06E"))))
 '(mode-line-buffer-id ((t (:background "#FED06E" :foreground "#2D2C29"))))
 '(mode-line-highlight ((t (:background "#2D2C29" :foreground "#FED06E" :box (:line-width 1 :color "#FED06E")))))
 '(mode-line-inactive ((t (:background "#2D2C29" :foreground "#918175"))))
 '(powerline-active1 ((t (:background "#FED06E" :foreground "#2D2C29"))))
 '(powerline-inactive1 ((t (:background "#FED06E" :foreground "#2D2C29"))))
 '(sml/line-number ((t (:inherit sml/modes))))
 '(whitespace-tab ((t (:distant-foreground "#918175" :foreground "#918175")))))


(load-theme 'srcery t)
(setq default-frame-alist '((cursor-color . "#FED06E")))
(all-the-icons-ivy-setup)
(load (get-fullpath "book-theme"))
(powerline-book-theme)

(load (get-fullpath "key"))
(defalias 'yes-or-no-p 'y-or-n-p)

(load (get-fullpath "prog"))
(load (get-fullpath "dired"))
(pdf-loader-install)
