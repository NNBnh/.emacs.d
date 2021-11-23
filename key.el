(progn
  ;; Unset keys
  (global-unset-key (kbd "M-1")) ; digit-argument
  (global-unset-key (kbd "M-2")) ; digit-argument
  (global-unset-key (kbd "M-3")) ; digit-argument
  (global-unset-key (kbd "M-4")) ; digit-argument
  (global-unset-key (kbd "M-5")) ; digit-argument
  (global-unset-key (kbd "M-6")) ; digit-argument
  (global-unset-key (kbd "M-7")) ; digit-argument
  (global-unset-key (kbd "M-8")) ; digit-argument
  (global-unset-key (kbd "M-9")) ; digit-argument
  (global-unset-key (kbd "M-0")) ; digit-argument

  (global-unset-key (kbd "M-a")) ; backward-sentence
  (global-unset-key (kbd "M-b")) ; backward-word
  (global-unset-key (kbd "M-c")) ; capitalize-word
  (global-unset-key (kbd "M-d")) ; kill-word
  (global-unset-key (kbd "M-e")) ; forward-sentence
  (global-unset-key (kbd "M-f")) ; forward-word
  (global-unset-key (kbd "M-g")) ; (prefix)
  (global-unset-key (kbd "M-h")) ; mark-paragraph
  (global-unset-key (kbd "M-i")) ; tab-to-tab-stop
  (global-unset-key (kbd "M-j")) ; indent-new-comment-line
  (global-unset-key (kbd "M-k")) ; kill-sentence
  (global-unset-key (kbd "M-l")) ; downcase-word
  (global-unset-key (kbd "M-m")) ; back-to-indentation
  (global-unset-key (kbd "M-n")) ; nil
  (global-unset-key (kbd "M-o")) ; nil
  (global-unset-key (kbd "M-p")) ; nil
  (global-unset-key (kbd "M-q")) ; fill-paragraph
  (global-unset-key (kbd "M-r")) ; move-to-window-line
  (global-unset-key (kbd "M-s")) ; nil
  (global-unset-key (kbd "M-t")) ; transpose-words
  (global-unset-key (kbd "M-u")) ; upcase-word
  (global-unset-key (kbd "M-v")) ; scroll-down
  (global-unset-key (kbd "M-w")) ; kill-ring-save
  (global-unset-key (kbd "M-x")) ; execute-extended-command
  (global-unset-key (kbd "M-y")) ; yank-pop
  (global-unset-key (kbd "M-z")) ; zap-to-char

  (global-unset-key (kbd "M-\\")) ; delete-horizontal-space
  (global-unset-key (kbd "M-@")) ; mark-word
  (global-unset-key (kbd "M--")) ; negative-argument
  (global-unset-key (kbd "M-<")) ; beginning-of-buffer
  (global-unset-key (kbd "M->")) ; end-of-buffer
  (global-unset-key (kbd "M-{")) ; backward-paragraph
  (global-unset-key (kbd "M-}")) ; forward-paragraph

  (global-unset-key (kbd "<M-home>")) ; move-beginning-of-line
  (global-unset-key (kbd "<M-end>")) ; move-end-of-line

  (global-unset-key (kbd "C-1")) ; digit-argument
  (global-unset-key (kbd "C-2")) ; digit-argument
  (global-unset-key (kbd "C-3")) ; digit-argument
  (global-unset-key (kbd "C-4")) ; digit-argument
  (global-unset-key (kbd "C-5")) ; digit-argument
  (global-unset-key (kbd "C-6")) ; digit-argument
  (global-unset-key (kbd "C-7")) ; digit-argument
  (global-unset-key (kbd "C-8")) ; digit-argument
  (global-unset-key (kbd "C-9")) ; digit-argument
  (global-unset-key (kbd "C-0")) ; digit-argument

  (global-unset-key (kbd "C-a")) ; move-beginning-of-line
  (global-unset-key (kbd "C-b")) ; backward-char
  (global-unset-key (kbd "C-d")) ; delete-char
  (global-unset-key (kbd "C-e")) ; move-end-of-line
  (global-unset-key (kbd "C-f")) ; forward-char
  (global-unset-key (kbd "C-j")) ; newline-and-indent
  (global-unset-key (kbd "C-k")) ; kill-line
  (global-unset-key (kbd "C-l")) ; recenter
  (global-unset-key (kbd "C-n")) ; next-line
  (global-unset-key (kbd "C-o")) ; open-line
  (global-unset-key (kbd "C-p")) ; previous-line
  (global-unset-key (kbd "C-r")) ; isearch-backward
  (global-unset-key (kbd "C-s")) ; isearch-forward
  (global-unset-key (kbd "C-t")) ; transpose-chars
  (global-unset-key (kbd "C-v")) ; scroll-up
  (global-unset-key (kbd "C-w")) ; kill-region
  (global-unset-key (kbd "C-y")) ; yank
  (global-unset-key (kbd "C-z")) ; iconify-or-deiconify-frame

  (global-unset-key (kbd "C-/")) ; undo
  (global-unset-key (kbd "C-_")) ; undo
  (global-unset-key (kbd "C-<backspace>")) ; backward-kill-word

  (global-unset-key (kbd "C-@")) ; cua-set-mark set-mark-command

  (global-unset-key (kbd "C-<prior>")) ; scroll-right
  (global-unset-key (kbd "C-<next>")) ; scroll-left

  (global-unset-key (kbd "C-x d")) ; dired
  (global-unset-key (kbd "C-x h")) ; mark-whole-buffer

  (global-unset-key (kbd "C-x C-d")) ; list-directory
  (global-unset-key (kbd "C-x C-f")) ; find-file
  (global-unset-key (kbd "C-x C-s")) ; save-buffer
  (global-unset-key (kbd "C-x C-w")) ; write-file

  (global-unset-key (kbd "C-x 0")) ; delete-window
  (global-unset-key (kbd "C-x 1")) ; delete-other-windows
  (global-unset-key (kbd "C-x 2")) ; split-window-vertically
  (global-unset-key (kbd "C-x 3")) ; split-window-horizontally
  (global-unset-key (kbd "C-x o")) ; other-windows

  (global-unset-key (kbd "C-x 5 0")) ; delete-frame
  (global-unset-key (kbd "C-x 5 2")) ; make-frame-command

  (global-unset-key (kbd "C-M-%"))) ; query-replace-regexp

(progn
  ;; Undefine keys
  (define-key undo-tree-map (kbd "M-_") 'nil ))

(progn
  ;; VAT keybinding
  (global-set-key (kbd "TAB") 'insert-tab-char)
  (global-set-key (kbd "<pause>") 'keyboard-quit)
  
  (define-key key-translation-map (kbd "M-t") (kbd "C-x"))
  (define-key key-translation-map (kbd "M-`") (kbd "M-t"))
  (define-key key-translation-map (kbd "M-T") (kbd "C-c"))
  (define-key key-translation-map (kbd "C-`") (kbd "M-T"))
  (global-set-key (kbd "M-/") 'execute-extended-command)
  (global-set-key (kbd "M-?") 'shell-command)

  (global-set-key (kbd "M-z") 'undo-tree-undo)
  (global-set-key (kbd "M-Z") 'undo-tree-redo)
  (global-set-key (kbd "M-C-z") 'undo-tree-visualize)
  (global-set-key (kbd "M-f") 'undo-tree-undo)
  (global-set-key (kbd "M-F") 'undo-tree-redo)
  (global-set-key (kbd "M-C-f") 'undo-tree-visualize)
  (global-set-key (kbd "M-x") 'cut-or-backspace)
  (global-set-key (kbd "M-X") 'nil)
  (global-set-key (kbd "M-d") 'cut-or-backspace)
  (global-set-key (kbd "M-D") 'nil)
  (global-set-key (kbd "M-c") 'cua-copy-region)
  (global-set-key (kbd "M-C") 'nil)
  (global-set-key (kbd "M-v") 'cua-paste)
  (global-set-key (kbd "M-V") 'nil)
  
  (global-set-key (kbd "<home>") 'beginning-of-buffer)
  (global-set-key (kbd "<M-home>") 'beginning-of-buffer)
  (global-set-key (kbd "<end>") 'end-of-buffer)
  (global-set-key (kbd "<M-end>") 'end-of-buffer)
  (global-set-key (kbd "M-i") 'previous-line)
  (global-set-key (kbd "M-I") 'backward-paragraph)
  (global-set-key (kbd "M-C-i") 'scroll-down)
  (global-set-key (kbd "M-k") 'next-line)
  (global-set-key (kbd "M-K") 'forward-paragraph)
  (global-set-key (kbd "M-C-k") 'scroll-up)
  (global-set-key (kbd "M-j") 'backward-char)
  (global-set-key (kbd "M-J") 'sp-backward-sexp)
  (global-set-key (kbd "M-l") 'forward-char)
  (global-set-key (kbd "M-L") 'sp-forward-sexp)
  (global-set-key (kbd "M-u") 'backward-word)
  (global-set-key (kbd "M-U") 'backward-symbol)
  (global-set-key (kbd "M-o") 'forward-word)
  (global-set-key (kbd "M-O") 'forward-symbol)
  (global-set-key (kbd "M-n") 'back-to-indentation-or-beginning)
  (global-set-key (kbd "M-N") 'move-beginning-of-line)
  (global-set-key (kbd "M-m") 'move-end-of-line)
  
  (global-set-key (kbd "M-g") 'avy-goto-word-0)
  (global-set-key (kbd "M-G") 'end-of-buffer)

  (global-set-key (kbd "<delete>") 'delete-backward-char)
  (global-set-key (kbd "<M-backspace>") 'delete-backward-char)
  (global-set-key (kbd "<M-S-backspace>") 'nil)
  (global-set-key (kbd "<M-C-backspace>") 'delete-char)
  (global-set-key (kbd "<M-delete>") 'delete-backward-char)
  (global-set-key (kbd "<M-S-delete>") 'nil)
  (global-set-key (kbd "<M-C-delete>") 'delete-char)
  (global-set-key (kbd "M-e") 'backward-kill-word)
  (global-set-key (kbd "M-E") 'backward-kill-line)
  (global-set-key (kbd "M-r") 'kill-word)
  (global-set-key (kbd "M-R") 'kill-line)

  (global-set-key (kbd "M-s") 'set-mark-command)
  (global-set-key (kbd "M-S") 'mark-whole-buffer)
  
  (global-set-key (kbd "M-a") 'mc/edit-lines)
  (global-set-key (kbd "M-A") 'mc/mark-all-dwim)

  (global-set-key (kbd "M-h") 'swiper)
  (global-set-key (kbd "M-Y") 'vr/query-replace)

  (global-set-key (kbd "M-'") 'xah-comment-dwim)

  (global-set-key (kbd "M-=") 'text-scale-increase)
  (global-set-key (kbd "M-+") 'text-scale-increase)
  (global-set-key (kbd "<M-mouse-4>") 'text-scale-increase)
  (global-set-key (kbd "<M-wheel-up>") 'text-scale-increase)
  (global-set-key (kbd "M-_") 'text-scale-decrease)
  (global-set-key (kbd "M--") 'text-scale-decrease)
  (global-set-key (kbd "<M-mouse-5>") 'text-scale-decrease)
  (global-set-key (kbd "<M-wheel-down>") 'text-scale-decrease)
  (global-set-key (kbd "M-\\") 'global-visual-line-mode)
  
  (global-set-key (kbd "M-p") 'find-file)
  (global-set-key (kbd "M-P") 'bookmark-set)
  (global-set-key (kbd "M-;") 'save-buffer)
  (global-set-key (kbd "M-:") 'write-file))

(progn
  ;; make emacs use standard keys
  (global-set-key (kbd "C-z") 'undo-tree-undo)
  (global-set-key (kbd "C-y") 'undo-tree-redo)
  (global-set-key (kbd "C-S-z") 'undo-tree-redo)
  (global-set-key (kbd "C-v") 'cua-paste)

  (global-set-key (kbd "C-a") 'mark-whole-buffer)

  (global-set-key (kbd "C-f") 'swiper)
  (global-set-key (kbd "C-l") 'goto-line-preview)

  (global-set-key (kbd "<C-tab>") 'next-buffer)
  (global-set-key (kbd "<C-iso-lefttab>") 'previous-buffer)
  
  (global-set-key (kbd "C-n") 'make-frame-command)
  (global-set-key (kbd "C-o") 'find-file)
  (global-set-key (kbd "C-s") 'save-buffer)
  (global-set-key (kbd "C-S-s") 'write-file)
  (global-set-key (kbd "C-w") 'kill-buffer))

(progn
  ;; define ivy keys
  (define-key ivy-minibuffer-map (kbd "C-m") 'ivy-done)
  (define-key ivy-minibuffer-map [down-mouse-1] 'ignore)
  (define-key ivy-minibuffer-map [mouse-1] 'ivy-mouse-done)
  (define-key ivy-minibuffer-map [mouse-3] 'ivy-mouse-dispatching-done)
  (define-key ivy-minibuffer-map (kbd "C-M-m") 'nil) ;ivy-call
  (define-key ivy-minibuffer-map (kbd "C-j") 'nil) ;ivy-alt-done
  (define-key ivy-minibuffer-map (kbd "C-M-j") 'nil) ;ivy-immediate-done
  (define-key ivy-minibuffer-map (kbd "TAB") 'ivy-partial-or-done)
  (define-key ivy-minibuffer-map [remap next-line] 'ivy-next-line)
  (define-key ivy-minibuffer-map [remap previous-line] 'ivy-previous-line)
  (define-key ivy-minibuffer-map (kbd "C-s") 'nil) ;ivy-next-line-or-history
  (define-key ivy-minibuffer-map (kbd "C-r") 'nil) ;ivy-reverse-i-search
  (define-key ivy-minibuffer-map (kbd "SPC") 'self-insert-command)
  (define-key ivy-minibuffer-map [remap delete-backward-char] 'ivy-backward-delete-char)
  (define-key ivy-minibuffer-map [remap backward-delete-char-untabify] 'ivy-backward-delete-char)
  (define-key ivy-minibuffer-map [remap backward-kill-word] 'ivy-backward-kill-word)
  (define-key ivy-minibuffer-map [remap delete-char] 'ivy-delete-char)
  (define-key ivy-minibuffer-map [remap forward-char] 'ivy-forward-char)
  (define-key ivy-minibuffer-map (kbd "<right>") 'ivy-forward-char)
  (define-key ivy-minibuffer-map [reivy-minibuffer-map kill-word] 'ivy-kill-word)
  (define-key ivy-minibuffer-map [reivy-minibuffer-map beginning-of-buffer] 'ivy-beginning-of-buffer)
  (define-key ivy-minibuffer-map [reivy-minibuffer-map end-of-buffer] 'ivy-end-of-buffer)
  (define-key ivy-minibuffer-map (kbd "M-n") 'nil) ;ivy-next-history-element
  (define-key ivy-minibuffer-map (kbd "M-p") 'nil) ;ivy-previous-history-element
  (define-key ivy-minibuffer-map (kbd "C-g") 'minibuffer-keyboard-quit)
  (define-key ivy-minibuffer-map [remap scroll-up-command] 'ivy-scroll-up-command)
  (define-key ivy-minibuffer-map [remap scroll-down-command] 'ivy-scroll-down-command)
  (define-key ivy-minibuffer-map (kbd "<next>") 'ivy-scroll-up-command)
  (define-key ivy-minibuffer-map (kbd "<prior>") 'ivy-scroll-down-command)
  (define-key ivy-minibuffer-map (kbd "C-v") 'nil) ;ivy-scroll-up-command
  (define-key ivy-minibuffer-map (kbd "M-v") 'nil) ;ivy-scroll-down-command
  (define-key ivy-minibuffer-map (kbd "C-M-n") 'ivy-next-line-and-call)
  (define-key ivy-minibuffer-map (kbd "C-M-p") 'ivy-previous-line-and-call)
  (define-key ivy-minibuffer-map (kbd "M-a") 'nil) ;ivy-toggle-marks
  (define-key ivy-minibuffer-map (kbd "M-r") 'nil) ;ivy-toggle-regexp-quote
  (define-key ivy-minibuffer-map (kbd "M-j") 'nil) ;ivy-yank-word
  (define-key ivy-minibuffer-map (kbd "M-i") 'nil) ;ivy-insert-current
  (define-key ivy-minibuffer-map (kbd "C-M-y") 'nil) ;ivy-insert-current-full
  (define-key ivy-minibuffer-map (kbd "C-o") 'nil) ;hydra-ivy/body
  (define-key ivy-minibuffer-map (kbd "M-o") 'nil) ;ivy-dispatching-done
  (define-key ivy-minibuffer-map (kbd "C-M-o") 'nil) ;ivy-dispatching-call
  (define-key ivy-minibuffer-map [remap kill-line] 'ivy-kill-line)
  (define-key ivy-minibuffer-map [remap kill-whole-line] 'ivy-kill-whole-line)
  (define-key ivy-minibuffer-map (kbd "S-SPC") 'ivy-restrict-to-matches)
  (define-key ivy-minibuffer-map [remap kill-ring-save] 'ivy-kill-ring-save)
  (define-key ivy-minibuffer-map (kbd "C-'") 'nil) ;ivy-avy
  (define-key ivy-minibuffer-map (kbd "C-M-a") 'nil) ;ivy-read-action
  (define-key ivy-minibuffer-map (kbd "C-c C-o") 'ivy-occur)
  (define-key ivy-minibuffer-map (kbd "C-c C-a") 'ivy-toggle-ignore)
  (define-key ivy-minibuffer-map (kbd "C-c C-s") 'ivy-rotate-sort)
  (define-key ivy-minibuffer-map [remap describe-mode] 'ivy-help)
  (define-key ivy-minibuffer-map "$" 'ivy-magic-read-file-env))

(progn
  ;; define swiper keys

  ;; (define-key swiper-map (kbd "M-q") 'nil) ;swiper-query-replace
  ;; (define-key swiper-map (kbd "C-l") 'nil) ;swiper-recenter-top-bottom
  ;; (define-key swiper-map (kbd "C-'") 'nil) ;swiper-avy
  ;; (define-key swiper-map (kbd "C-7") 'nil) ;swiper-mc
  ;; (define-key swiper-map (kbd "C-c C-f") 'swiper-toggle-face-matching)
  ;; 
  ;; (define-key swiper-all-map (kbd "M-q") 'nil) ;swiper-all-query-replace
  ;; 
  ;; (define-key swiper-isearch-map (kbd "M-n") 'nil)) ;swiper-isearch-thing-at-point
  )

(progn
  (require 'dired )
  ;; define tetris keys
  ;; This looks ugly when substitute-command-keys uses C-d instead d:
  ;;  (define-key dired-mode-map "\C-d" 'dired-flag-file-deletion)
  ;; Commands to mark or flag certain categories of files
  (define-key dired-mode-map "#" 'nil) ;dired-flag-auto-save-files
  (define-key dired-mode-map "." 'nil) ;dired-clean-directory
  (define-key dired-mode-map "~" 'nil) ;dired-flag-backup-files
  
  ;; Upper case keys (except !) for operating on the marked files
  (define-key dired-mode-map "A" 'nil) ;dired-do-find-regexp
  (define-key dired-mode-map "C" 'nil) ;dired-do-copy
  (define-key dired-mode-map "B" 'nil) ;dired-do-byte-compile
  (define-key dired-mode-map "D" 'nil) ;dired-do-delete
  (define-key dired-mode-map "G" 'nil) ;dired-do-chgrp
  (define-key dired-mode-map "H" 'nil) ;dired-do-hardlink
  (define-key dired-mode-map "L" 'nil) ;dired-do-load
  (define-key dired-mode-map "M" 'nil) ;dired-do-chmod
  (define-key dired-mode-map "O" 'nil) ;dired-do-chown
  (define-key dired-mode-map "P" 'nil) ;dired-do-print
  (define-key dired-mode-map "Q" 'nil) ;dired-do-find-regexp-and-replace
  (define-key dired-mode-map "R" 'nil) ;dired-do-rename
  (define-key dired-mode-map "S" 'nil) ;dired-do-symlink
  (define-key dired-mode-map "T" 'nil) ;dired-do-touch
  (define-key dired-mode-map "X" 'nil) ;dired-do-shell-command
  (define-key dired-mode-map "Z" 'nil) ;dired-do-compress
  (define-key dired-mode-map "c" 'nil) ;dired-do-compress-to
  (define-key dired-mode-map "!" 'nil) ;dired-do-shell-command
  (define-key dired-mode-map "&" 'nil) ;dired-do-async-shell-command
  
  (define-key dired-mode-map "c" 'dired-rsync)
  (define-key dired-mode-map "d" 'dired-do-delete)
  (define-key dired-mode-map "x" 'dired-do-delete)
  
  (define-key dired-mode-map "h" 'dired-do-find-regexp)
  (define-key dired-mode-map "H" 'dired-do-find-regexp-and-replace)
  (define-key dired-mode-map "y" 'dired-do-rename)
  (define-key dired-mode-map "Y" 'dired-do-find-regexp-and-replace)
  
  (define-key dired-mode-map "/" 'dired-do-shell-command)
  
  ;; Comparison commands
  (define-key dired-mode-map "=" 'nil) ;dired-diff
  
  ;; Tree Dired commands
  (define-key dired-mode-map "\M-\C-?" 'dired-unmark-all-files)
  (define-key dired-mode-map "\M-\C-d" 'dired-tree-down)
  (define-key dired-mode-map "\M-\C-u" 'dired-tree-up)
  (define-key dired-mode-map "\M-\C-n" 'dired-next-subdir)
  (define-key dired-mode-map "\M-\C-p" 'dired-prev-subdir)
  
  ;; move to marked files
  (define-key dired-mode-map "\M-{" 'nil) ;dired-prev-marked-file
  (define-key dired-mode-map "\M-}" 'nil) ;dired-next-marked-file
  
  (define-key dired-mode-map (kbd "u") 'dired-prev-marked-file)
  (define-key dired-mode-map (kbd "o") 'dired-next-marked-file)
  
  ;; Make all regexp commands share a `%' prefix:
  ;; We used to get to the submap via a symbol dired-regexp-prefix,
  ;; but that seems to serve little purpose, and copy-keymap
  ;; does a better job without it.
  (define-key dired-mode-map "%" nil)
  (define-key dired-mode-map "%u" 'dired-upcase)
  (define-key dired-mode-map "%l" 'dired-downcase)
  (define-key dired-mode-map "%d" 'dired-flag-files-regexp)
  (define-key dired-mode-map "%g" 'dired-mark-files-containing-regexp)
  (define-key dired-mode-map "%m" 'dired-mark-files-regexp)
  (define-key dired-mode-map "%r" 'dired-do-rename-regexp)
  (define-key dired-mode-map "%C" 'dired-do-copy-regexp)
  (define-key dired-mode-map "%H" 'dired-do-hardlink-regexp)
  (define-key dired-mode-map "%R" 'dired-do-rename-regexp)
  (define-key dired-mode-map "%S" 'dired-do-symlink-regexp)
  (define-key dired-mode-map "%&" 'dired-flag-garbage-files)
  
  ;; Commands for marking and unmarking.
  (define-key dired-mode-map "*" 'nil) ;nil
  (define-key dired-mode-map "**" 'nil) ;dired-mark-executables
  (define-key dired-mode-map "*/" 'nil) ;dired-mark-directories
  (define-key dired-mode-map "*@" 'nil) ;dired-mark-symlinks
  (define-key dired-mode-map "*%" 'nil) ;dired-mark-files-regexp
  (define-key dired-mode-map "*c" 'nil) ;dired-change-marks
  (define-key dired-mode-map "*s" 'nil) ;dired-mark-subdir-files
  (define-key dired-mode-map "*m" 'nil) ;dired-mark
  (define-key dired-mode-map "*u" 'nil) ;dired-unmark
  (define-key dired-mode-map "*?" 'nil) ;dired-unmark-all-files
  (define-key dired-mode-map "*!" 'nil) ;dired-unmark-all-marks
  (define-key dired-mode-map "U" 'nil) ;dired-unmark-all-marks
  (define-key dired-mode-map "*\177" 'nil) ;dired-unmark-backward
  (define-key dired-mode-map "*\C-n" 'nil) ;dired-next-marked-file
  (define-key dired-mode-map "*\C-p" 'nil) ;dired-prev-marked-file
  (define-key dired-mode-map "*t" 'nil) ;dired-toggle-marks
  
  (define-key dired-mode-map (kbd "s") 'dired-toggle-marks)
  (define-key dired-mode-map (kbd "S") 'dired-mark-directories)
  (define-key dired-mode-map (kbd "C-s") 'dired-mark)
  (define-key dired-mode-map (kbd "a") 'dired-unmark)
  (define-key dired-mode-map (kbd "A") 'dired-unmark-all-files)
  (define-key dired-mode-map (kbd "C-S-a") 'dired-unmark-all-marks)
  
  ;; Lower keys for commands not operating on all the marked files
  (define-key dired-mode-map "a" 'dired-find-alternate-file)
  (define-key dired-mode-map "d" 'dired-flag-file-deletion)
  (define-key dired-mode-map "e" 'dired-find-file)
  (define-key dired-mode-map "f" 'dired-find-file)
  (define-key dired-mode-map "\C-m" 'dired-find-file)
  (put 'dired-find-file :advertised-binding "\C-m")
  (define-key dired-mode-map "g" 'nil) ;revert-buffer
  (define-key dired-mode-map "i" 'nil) ;dired-maybe-insert-subdir
  (define-key dired-mode-map "j" 'nil) ;dired-goto-file
  (define-key dired-mode-map "k" 'nil) ;dired-do-kill-lines
  (define-key dired-mode-map "l" 'nil) ;dired-do-redisplay
  (define-key dired-mode-map "m" 'nil) ;dired-mark
  (define-key dired-mode-map "n" 'nil) ;dired-next-line
  (define-key dired-mode-map "o" 'nil) ;dired-find-file-other-window
  (define-key dired-mode-map "\C-o" 'nil) ;dired-display-file
  (define-key dired-mode-map "p" 'nil) ;dired-previous-line
  (define-key dired-mode-map "s" 'nil) ;dired-sort-toggle-or-edit
  (define-key dired-mode-map "t" 'nil) ;dired-toggle-marks
  (define-key dired-mode-map "u" 'nil) ;dired-unmark
  (define-key dired-mode-map "v" 'nil) ;dired-view-file
  (define-key dired-mode-map "w" 'nil) ;dired-copy-filename-as-kill
  (define-key dired-mode-map "W" 'nil) ;browse-url-of-dired-file
  (define-key dired-mode-map "x" 'nil) ;dired-do-flagged-delete
  (define-key dired-mode-map "y" 'nil) ;dired-show-file-type
  
  (define-key dired-mode-map (kbd "p") 'dired-create-directory)
  
  ;; moving
  (define-key dired-mode-map "<" 'nil) ;dired-prev-dirline
  (define-key dired-mode-map ">" 'nil) ;dired-next-dirline
  (define-key dired-mode-map "^" 'nil) ;dired-up-directory
  (define-key dired-mode-map " " 'nil) ;dired-next-line
  (define-key dired-mode-map [?\S-\ ] 'nil) ;dired-previous-line

  (define-key dired-mode-map (kbd "<up>") 'dired-previous-line)
  (define-key dired-mode-map (kbd "<S-up>") 'scroll-down)
  (define-key dired-mode-map (kbd "i") 'dired-previous-line)
  (define-key dired-mode-map (kbd "I") 'scroll-down)
  (define-key dired-mode-map (kbd "<down>") 'dired-next-line)
  (define-key dired-mode-map (kbd "<S-down>") 'scroll-up)
  (define-key dired-mode-map (kbd "k") 'dired-next-line)
  (define-key dired-mode-map (kbd "K") 'scroll-up)
  (define-key dired-mode-map (kbd "<left>") 'dired-up-directory)
  (define-key dired-mode-map (kbd "d") 'dired-up-directory)
  (define-key dired-mode-map (kbd "j") 'dired-up-directory)
  (define-key dired-mode-map (kbd "<right>") 'dired-find-file)
  (define-key dired-mode-map (kbd "D") 'dired-find-file)
  (define-key dired-mode-map (kbd "l") 'dired-find-file)
  
  
  ;; hiding
  (define-key dired-mode-map "$" 'nil) ;dired-hide-subdir
  (define-key dired-mode-map "\M-$" 'nil) ;dired-hide-all
  (define-key dired-mode-map "(" 'nil) ;dired-hide-details-mode
  
  (define-key dired-mode-map (kbd "\\") 'dired-hide-details-mode)
  
  ;; isearch
  (define-key dired-mode-map (kbd "M-s a C-s")   'nil) ;dired-do-isearch
  (define-key dired-mode-map (kbd "M-s a M-C-s") 'nil) ;dired-do-isearch-regexp
  (define-key dired-mode-map (kbd "M-s f C-s")   'nil) ;dired-isearch-filenames
  (define-key dired-mode-map (kbd "M-s f M-C-s") 'nil) ;dired-isearch-filenames-regexp
  
  ;; misc
  (define-key dired-mode-map "?" 'nil) ;dired-summary
  (define-key dired-mode-map "\177" 'nil) ;dired-unmark-backward
  
  (define-key dired-mode-map [remap undo-tree-undo] 'dired-undo)
  
  ;; thumbnail manipulation (image-dired)
  (define-key dired-mode-map "\C-td" 'image-dired-display-thumbs)
  (define-key dired-mode-map "\C-tt" 'image-dired-tag-files)
  (define-key dired-mode-map "\C-tr" 'image-dired-delete-tag)
  (define-key dired-mode-map "\C-tj" 'image-dired-jump-thumbnail-buffer)
  (define-key dired-mode-map "\C-ti" 'image-dired-dired-display-image)
  (define-key dired-mode-map "\C-tx" 'image-dired-dired-display-external)
  (define-key dired-mode-map "\C-ta" 'image-dired-display-thumbs-append)
  (define-key dired-mode-map "\C-t." 'image-dired-display-thumb)
  (define-key dired-mode-map "\C-tc" 'image-dired-dired-comment-files)
  (define-key dired-mode-map "\C-tf" 'image-dired-mark-tagged-files)
  (define-key dired-mode-map "\C-t\C-t" 'image-dired-dired-toggle-marked-thumbs)
  (define-key dired-mode-map "\C-te" 'image-dired-dired-edit-comment-and-tags)
  
  ;; encryption and decryption (epa-dired)
  (define-key dired-mode-map ":d" 'epa-dired-do-decrypt)
  (define-key dired-mode-map ":v" 'epa-dired-do-verify)
  (define-key dired-mode-map ":s" 'epa-dired-do-sign)
  (define-key dired-mode-map ":e" 'epa-dired-do-encrypt))

(progn
  ;; define tetris keys
  (require 'tetris )

  (define-key tetris-mode-map (kbd "r") 'tetris-start-game)
  (define-key tetris-mode-map (kbd "x") 'tetris-pause-game)

  (define-key tetris-mode-map (kbd "j") 'tetris-move-left)
  (define-key tetris-mode-map (kbd "l") 'tetris-move-right)
  (define-key tetris-mode-map (kbd "k") 'tetris-move-down)
  (define-key tetris-mode-map (kbd "i") 'tetris-move-bottom)
  (define-key tetris-mode-map (kbd "f") 'tetris-rotate-prev)
  (define-key tetris-mode-map (kbd "d") 'tetris-rotate-next))


(defun insert-tab-char ()
  (interactive)
  (insert "\t"))

(defun cut-or-backspace ()
  (interactive)
  (if current-prefix-arg
      (progn ; not using kill-region because we don't want to include previous kill
        (kill-new (buffer-string))
        (delete-region (point-min) (point-max)))
    (progn (if (use-region-p)
               (kill-region (region-beginning) (region-end) t)
             (delete-char -1)))))

(defun back-to-indentation-or-beginning () (interactive)
  (if (= (point) (progn (back-to-indentation) (point)))
      (beginning-of-line)))

(defun backward-symbol ()
  (interactive)
  (forward-symbol -1))

(defun backward-kill-line (arg)
  (interactive "p")
  (kill-line (- 1 arg)))

(defun xah-comment-dwim ()
  (interactive)
  (if (region-active-p)
      (comment-dwim nil)
    (let (($lbp (line-beginning-position))
          ($lep (line-end-position)))
      (if (eq $lbp $lep)
          (progn
            (comment-dwim nil))
        (if (eq (point) $lep)
            (progn
              (comment-dwim nil))
          (progn
            (comment-or-uncomment-region $lbp $lep)
            (forward-line )))))))
