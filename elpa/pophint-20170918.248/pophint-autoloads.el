;;; pophint-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "pophint" "pophint.el" (0 0 0 0))
;;; Generated autoloads from pophint.el

(defvar pophint:sources nil "\
Buffer local sources for pop-up hint tip flexibly.")

(make-variable-buffer-local 'pophint:sources)

(defvar pophint:global-sources nil "\
Global sources for pop-up hint tip flexibly")

(defvar pophint:dedicated-sources nil "\
Dedicated sources for pop-up hint tip in particular situation.")

(defstruct pophint:hint window popup overlay (startpt 0) (endpt 0) (value ""))

(defstruct pophint:action name action)

(autoload 'pophint:defsource "pophint" "\
Define the variable and command to pop-up hint-tip by using given source.

Arguments:
NAME is string. It's used for define variable and command as part of the name.
DESCRIPTION is string. It's used for define variable as part of the docstring.
SOURCE is alist. The member is the following.

 - shown         ... It's string to use for message in minibuffer when get user input.
                     If nil, its value is NAME.
                 
 - regexp        ... It's string to use for finding next point of pop-up.
                     If nil, its value is `pophint--default-search-regexp'.
                     If exist group of matches, next point is beginning of group 1, else it's beginning of group 0.
                 
 - requires      ... It's integer.
                     It's minimum length of matched text as next point.
                     If nil, its value is 0.
                 
 - limit         ... It's integer.
                     If non-nil, replace `pophint:popup-max-tips' with it while using the source.
                 
 - action        ... It's function to call when finish hint-tip selection.
                     If nil, its value is `pophint--default-action'.
                     It receive the object of `pophint:hint' selected by user.
                 
 - method        ... It's function to find next point of pop-up.
                     If nil, its value is `re-search-forward', and regexp is used.
                 
 - init          ... It's function to call before start to find pop-up point in each of window/direction.
                 
 - highlight     ... It's t or nil. Default is t.
                     If nil, don't highlight matched text when pop-up hint.
                 
 - dedicated     ... It's symbol or list of symbol means the particular situation that SOURCE is dedicated for.
                     If non-nil, added to `pophint:dedicated-sources' which has relation with `pophint:do-situationally'.

 - activebufferp ... It's function to call for checking if SOURCE is activated in the buffer.
                     It's required with 'dedicated' option.
                     It receives a buffer object and
                     needs to return non-nil if the buffer is the target of itself.

 - tip-face-attr ... It's plist for customize of `pophint:tip-face' temporarily.

Example:
 (pophint:defsource :name \"sexp-head\"
                    :description \"Head word of sexp.\"
                    :source '((shown . \"SexpHead\")
                              (regexp . \"(+\\([^() 	
]+\\)\")
                              (requires . 1)))

\(fn &key NAME DESCRIPTION SOURCE)" nil (quote macro))

(autoload 'pophint:defaction "pophint" "\
Define the action that called when finish hint-tip selection and the command using it.

Arguments:
KEY is string. It's one character. It's the key when read user input by `pophint:do-interactively'.
NAME is string. It's used for define command as part of the name and show message in minibuffer when get user input.
DESCRIPTION is string. It's used for define command as part of the docstring.
ACTION is function. For detail, see action of SOURCE for `pophint:defsource'.

Example:
 (pophint:defaction :key \"y\"
                    :name \"Yank\"
                    :description \"Yank the text of selected hint-tip.\"
                    :action (lambda (hint)
                              (kill-new (pophint:hint-value hint))))

\(fn &key KEY NAME DESCRIPTION ACTION)" nil (quote macro))

(autoload 'pophint:defsituation "pophint" "\
Define the command to pop-up hint-tip in SITUATION.

Arguments:
SITUATION is symbol. It's used for finding the sources that is dedicated
for SITUATION from `pophint:dedicated-sources'.

Example:
 (pophint:defsituation e2wm)

\(fn SITUATION)" nil t)

(function-put 'pophint:defsituation 'lisp-indent-function '0)

(autoload 'pophint:set-allwindow-command "pophint" "\
Define advice to FUNC for doing pop-up at all windows.

FUNC is symbol not quoted. e.g. (pophint:set-allwindow-command pophint:do-flexibly)

\(fn FUNC)" nil t)

(autoload 'pophint:set-not-allwindow-command "pophint" "\
Define advice to FUNC for doing pop-up at one window.

FUNC is symbol not quoted. e.g. (pophint:set-not-allwindow-command pophint:do-flexibly)

\(fn FUNC)" nil t)

(autoload 'pophint:defcommand-determinate "pophint" "\
Define a determinate command using SOURCE-NAME, ACTION-NAME.

\(fn &key SOURCE-NAME ACTION-NAME OTHER-WINDOWS-P ALL-WINDOWS-P IGNORE-ALREADY-DEFINED)" nil (quote macro))

(autoload 'pophint:defcommand-exhaustively "pophint" "\
Do `pophint:defcommand-determinate' for all sources/actions/windows.

\(fn &key FEATURE)" nil nil)

(autoload 'pophint:get-current-direction "pophint" "\
Get current direction of searching next point for pop-up hint-tip.

\(fn)" nil nil)

(autoload 'pophint:do "pophint" "\
Do pop-up hint-tip using given source on target to direction.

SOURCE is alist or symbol of alist. About its value, see `pophint:defsource'.
 If nil, its value is the first of SOURCES or `pophint--default-source'.
 If non-nil, `pophint--default-source' isn't used for SOURCES.
SOURCES is list of SOURCE. If this length more than 1, enable switching SOURCE when pop-up hint.
ACTION is function. About this, see action of SOURCE for `pophint:defsource'. If nil, it's used.
ACTION-NAME is string. About this, see name of `pophint:defaction'.
DIRECTION is symbol. The allowed value is the following.
 - forward  ... seek the pop-up point moving forward until `pophint:popup-max-tips'.
 - backward ... seek the pop-up point moving backward until `pophint:popup-max-tips'.
 - around   ... seek the pop-up point moving both until half of `pophint:popup-max-tips'.
 If nil, enable switching DIRECTION when pop-up hint.
NOT-HIGHLIGHT is t or nil. If non-nil, don't highlight matched text when pop-up hint.
WINDOW is window. find next point of pop-up in the window. If nil, its value is `selected-window'.
NOT-SWITCH-WINDOW is t or nil. If non-nil, disable switching window when select shown hint.
ALLWINDOW is t or nil. If non-nil, pop-up at all windows in frame.
USE-POS-TIP is t or nil. If omitted, inherit `pophint:use-pos-tip'.
TIP-FACE-ATTR is plist for customize of `pophint:tip-face' temporarily.

\(fn &key SOURCE SOURCES ACTION ACTION-NAME DIRECTION NOT-HIGHLIGHT WINDOW NOT-SWITCH-WINDOW ALLWINDOW (use-pos-tip (quote global)) TIP-FACE-ATTR CONTEXT)" t nil)

(autoload 'pophint:do-flexibly "pophint" "\
Do pop-up hint-tip using source in `pophint:sources'.

For detail, see `pophint:do'.

\(fn &key ACTION ACTION-NAME WINDOW)" t nil)

(autoload 'pophint:do-interactively "pophint" "\
Do pop-up hint-tip asking about what to do after select hint-tip.

\(fn)" t nil)

(autoload 'pophint:do-situationally "pophint" "\
Do pop-up hint-tip for SITUATION.

SITUATION is symbol used for finding active sources from `pophint:dedicated-sources'.

\(fn SITUATION)" t nil)

(autoload 'pophint:redo "pophint" "\
Redo last pop-up hint-tip using any sources.

\(fn)" t nil)

(autoload 'pophint:toggle-use-pos-tip "pophint" "\
Toggle the status of `pophint:use-pos-tip'.

\(fn)" t nil)

(autoload 'pophint:delete-last-hints "pophint" "\
Delete last hint-tip.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pophint" '("pophint")))

;;;***

;;;### (autoloads nil "pophint-config" "pophint-config.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from pophint-config.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pophint-config" '("pophint-config:features")))

;;;***

;;;### (autoloads nil "pophint-config---util" "pophint-config---util.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config---util.el

(defvar pophint-config:effect-default-activated nil "\
Whether to activate various effects in Emacs basic functions.")

(custom-autoload 'pophint-config:effect-default-activated "pophint-config---util" t)

(defvar pophint-config:run-defcommand-exhaustively-after-load nil "\
Whether to run `pophint-config:defcommand-exhaustively' after load each of `pophint-config:features'.")

(custom-autoload 'pophint-config:run-defcommand-exhaustively-after-load "pophint-config---util" t)

(defvar pophint-config:inch-length 3)

(autoload 'pophint-config:inch-forward "pophint-config---util" "\


\(fn)" nil nil)

(autoload 'pophint-config:make-hint-with-inch-forward "pophint-config---util" "\


\(fn &optional LIMITPT)" nil nil)

;;;***

;;;### (autoloads nil "pophint-config--dired" "pophint-config--dired.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--dired.el

(autoload 'pophint:do-direx-node "pophint-config--dired" "\


\(fn)" t nil)

(autoload 'pophint-config:dired-setup "pophint-config--dired" "\


\(fn)" nil nil)

(add-hook 'dired-mode-hook 'pophint-config:dired-setup t)

;;;***

;;;### (autoloads nil "pophint-config--direx" "pophint-config--direx.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--direx.el

(autoload 'pophint:do-direx-node "pophint-config--direx" "\


\(fn)" t nil)

(autoload 'pophint-config:direx-setup "pophint-config--direx" "\


\(fn)" nil nil)

(add-hook 'direx:direx-mode-hook 'pophint-config:direx-setup t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pophint-config--direx" '("pophint-config:")))

;;;***

;;;### (autoloads nil "pophint-config--e2wm" "pophint-config--e2wm.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--e2wm.el

(autoload 'pophint:do-situationally-e2wm "pophint-config--e2wm" "\


\(fn)" t nil)

(defvar pophint-config:goto-immediately-when-e2wm-array-p pophint-config:effect-default-activated)

(autoload 'pophint-config:set-goto-immediately-when-e2wm-array "pophint-config--e2wm" "\
Whether do `e2wm:dp-array-goto-prev-pst-command' immediately
when select hint-tip of `other-window' in array perspective of `e2wm.el'.

\(fn ACTIVATE)" nil nil)

(autoload 'pophint-config:e2wm-array-other-window "pophint-config--e2wm" "\
Do `pophint:do-each-window' in array perspective of `e2wm.el'.

\(fn)" t nil)

(defvar pophint-config:active-when-e2wm-array-p pophint-config:effect-default-activated)

(defadvice e2wm:dp-array (after do-pophint disable) (when (and (interactive-p) pophint-config:active-when-e2wm-array-p) (pophint-config:e2wm-array-other-window)))

(when pophint-config:active-when-e2wm-array-p (ad-enable-advice 'e2wm:dp-array 'after 'do-pophint) (ad-activate 'e2wm:dp-array))

(autoload 'pophint-config:set-automatically-when-e2wm-array "pophint-config--e2wm" "\
Whether do pop-up when `e2wm:dp-array'.

\(fn ACTIVATE)" nil nil)

(autoload 'pophint:do-e2wm-files "pophint-config--e2wm" "\


\(fn)" t nil)

(autoload 'pophint:do-e2wm-history "pophint-config--e2wm" "\


\(fn)" t nil)

(autoload 'pophint:do-e2wm-history2 "pophint-config--e2wm" "\


\(fn)" t nil)

(autoload 'pophint:do-e2wm-imenu "pophint-config--e2wm" "\


\(fn)" t nil)

(autoload 'pophint:do-e2wm-perspb "pophint-config--e2wm" "\


\(fn)" t nil)

(autoload 'pophint:do-e2wm-sww "pophint-config--e2wm" "\


\(fn)" t nil)

(autoload 'pophint:do-e2wm-term-history "pophint-config--e2wm" "\


\(fn)" t nil)

(eval-after-load "e2wm" `(progn (let ((key (ignore-errors (key-description (nth 0 (where-is-internal 'other-window global-map)))))) (when (and key (keymapp e2wm:dp-array-minor-mode-map)) (define-key e2wm:dp-array-minor-mode-map (read-kbd-macro key) 'pophint-config:e2wm-array-other-window)))))

;;;***

;;;### (autoloads nil "pophint-config--el" "pophint-config--el.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--el.el

(autoload 'pophint:do-sexp "pophint-config--el" "\


\(fn)" t nil)

(autoload 'pophint-config:elisp-setup "pophint-config--el" "\


\(fn)" nil nil)

(add-hook 'emacs-lisp-mode-hook 'pophint-config:elisp-setup t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pophint-config--el" '("pophint-config:regexp-sexp-start")))

;;;***

;;;### (autoloads nil "pophint-config--eww" "pophint-config--eww.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--eww.el

(autoload 'pophint-config:set-eww-use-new-tab "pophint-config--eww" "\
Whether open new tab of eww when action by eww function.

\(fn ACTIVATE)" nil nil)

(autoload 'pophint:do-eww-anchor "pophint-config--eww" "\


\(fn)" t nil)

(autoload 'pophint-config:eww-anchor-open "pophint-config--eww" "\
Do `pophint:do-eww-anchor' in current tab.

\(fn)" t nil)

(autoload 'pophint-config:eww-anchor-open-new-tab "pophint-config--eww" "\
Do `pophint:do-eww-anchor' in new tab.

\(fn)" t nil)

(autoload 'pophint-config:eww-anchor-open-invert "pophint-config--eww" "\
Do `pophint:do-eww-anchor' inverting `pophint-config:eww-use-new-tab'.

\(fn)" t nil)

(autoload 'pophint-config:eww-anchor-open-new-tab-continuously "pophint-config--eww" "\
Do `pophint:do-eww-anchor' in new tab continuously.

\(fn)" t nil)

(autoload 'pophint-config:eww-anchor-open-with-external "pophint-config--eww" "\
Do `pophint:source-eww-anchor' with external browser.

\(fn)" t nil)

(autoload 'pophint-config:eww-anchor-yank "pophint-config--eww" "\
Yank using `pophint:source-eww-anchor'.

\(fn)" t nil)

(autoload 'pophint-config:eww-anchor-focus "pophint-config--eww" "\
Focus using `pophint:source-eww-anchor'.

\(fn)" t nil)

(autoload 'pophint-config:eww-setup "pophint-config--eww" "\


\(fn)" nil nil)

(add-hook 'eww-mode-hook 'pophint-config:eww-setup t)

(eval-after-load "eww" `(progn (defadvice eww-setup-buffer (after pophint-config:handle-tabs activate) (when (string= (buffer-name) pophint-config:eww-buffer-name) (rename-uniquely)))))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pophint-config--eww" '("pophint-config:")))

;;;***

;;;### (autoloads nil "pophint-config--help" "pophint-config--help.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--help.el

(autoload 'pophint:do-help-btn "pophint-config--help" "\


\(fn)" t nil)

(autoload 'pophint-config:help-setup "pophint-config--help" "\


\(fn)" nil nil)

(add-hook 'help-mode-hook 'pophint-config:help-setup t)

;;;***

;;;### (autoloads nil "pophint-config--info" "pophint-config--info.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--info.el

(autoload 'pophint:do-info-ref "pophint-config--info" "\


\(fn)" t nil)

(autoload 'pophint-config:info-setup "pophint-config--info" "\


\(fn)" nil nil)

(add-hook 'Info-mode-hook 'pophint-config:info-setup t)

;;;***

;;;### (autoloads nil "pophint-config--isearch" "pophint-config--isearch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--isearch.el

(defvar pophint-config:active-when-isearch-exit-p pophint-config:effect-default-activated)

(defvar pophint-config:index-of-isearch-overlays 0)

(defadvice isearch-exit (before do-pophint disable) (when pophint-config:active-when-isearch-exit-p (pophint:do :not-highlight t :not-switch-window t :source '((shown . "Cand") (init lambda nil (setq pophint-config:index-of-isearch-overlays 0)) (method lambda nil (pophint--trace "overlay count:[%s] index:[%s]" (length isearch-lazy-highlight-overlays) pophint-config:index-of-isearch-overlays) (let* ((idx pophint-config:index-of-isearch-overlays) (ov (when (< idx (length isearch-lazy-highlight-overlays)) (nth idx isearch-lazy-highlight-overlays))) (startpt (when ov (overlay-start ov))) (endpt (when ov (overlay-end ov))) (value (when ov (buffer-substring-no-properties startpt endpt))) (ret `(:startpt ,startpt :endpt ,endpt :value ,value))) (when ov (incf pophint-config:index-of-isearch-overlays)) (when startpt (goto-char startpt)) ret)) (action lambda (hint) (goto-char (pophint:hint-startpt hint)))))))

(when pophint-config:active-when-isearch-exit-p (ad-enable-advice 'isearch-exit 'before 'do-pophint) (ad-activate 'isearch-exit))

(autoload 'pophint-config:set-automatically-when-isearch "pophint-config--isearch" "\
Whether do pop-up automatically when `isearch-exit'.

\(fn ACTIVATE)" nil nil)

(autoload 'pophint-config:isearch-yank-region "pophint-config--isearch" "\
Pull rest of region by selecting hint-tip from buffer into search string.

\(fn)" t nil)

(autoload 'pophint-config:set-isearch-yank-region-command "pophint-config--isearch" "\
Set advice to replace COMMAND with `pophint-config:isearch-yank-region'.

\(fn COMMAND)" nil t)

(function-put 'pophint-config:set-isearch-yank-region-command 'lisp-indent-function '0)

(eval-after-load "anything-c-moccur" '(progn (defadvice anything-c-moccur-from-isearch (around disable-pophint activate) (let ((exitconf pophint-config:active-when-isearch-exit-p)) (setq pophint-config:active-when-isearch-exit-p nil) ad-do-it (setq pophint-config:active-when-isearch-exit-p exitconf)))))

(eval-after-load "helm-c-moccur" '(progn (defadvice helm-c-moccur-from-isearch (around disable-pophint activate) (let ((exitconf pophint-config:active-when-isearch-exit-p)) (setq pophint-config:active-when-isearch-exit-p nil) ad-do-it (setq pophint-config:active-when-isearch-exit-p exitconf)))))

(autoload 'pophint-config:isearch-setup "pophint-config--isearch" "\


\(fn)" nil nil)

(add-hook 'isearch-mode-hook 'pophint-config:isearch-setup t)

(autoload 'pophint:do-flexibly-isearch "pophint-config--isearch" "\


\(fn)" t nil)

(autoload 'pophint-config:def-isearch-command "pophint-config--isearch" "\


\(fn COMMAND)" nil t)

(function-put 'pophint-config:def-isearch-command 'lisp-indent-function '0)

(pophint-config:def-isearch-command isearch-forward)

(pophint-config:def-isearch-command isearch-backward)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pophint-config--isearch" '("pophint-config:isearch-action-result")))

;;;***

;;;### (autoloads nil "pophint-config--line" "pophint-config--line.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--line.el

(defvar pophint-config:regexp-one-line (rx-to-string `(and bol (* (syntax whitespace)) (group (+ not-newline)))))

(pophint:defsource :name "one-line" :description "One line." :source '((shown . "Line") (regexp . pophint-config:regexp-one-line)))

(add-to-list 'pophint:global-sources 'pophint:source-one-line t)

(pophint:defsource :name "comment-line" :description "Part of `font-lock-comment-face' in line" :source '((shown . "Cmt") (method lambda nil (loop while (re-search-forward "\\s<+" nil t) for startpt = (progn (skip-syntax-forward " ") (point)) for endpt = (when (and (eq (get-text-property (point) 'face) 'font-lock-comment-face) (re-search-forward "\\s-*\\(\\s>+\\|$\\)")) (match-beginning 0)) for value = (when endpt (buffer-substring-no-properties startpt endpt)) if (and (stringp value) (not (string= value ""))) return `(:startpt ,startpt :endpt ,endpt :value ,value)))))

(add-to-list 'pophint:global-sources 'pophint:source-comment-line t)

;;;***

;;;### (autoloads nil "pophint-config--mark" "pophint-config--mark.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--mark.el

(defvar pophint-config:yank-immediately-when-marking-p nil)

(defvar pophint-config:mark-direction 'forward)

(defadvice set-mark-command (after do-pophint disable) (let ((pophint-config:mark-user-start (point)) (action-name (if pophint-config:yank-immediately-when-marking-p "Yank" "Focus")) (action (lambda (hint) (let ((currpt (point))) (goto-char (pophint:hint-startpt hint)) (when pophint-config:yank-immediately-when-marking-p (kill-ring-save currpt (point))))))) (case pophint-config:mark-direction (forward (pophint-config:do-with-narrow-or-wide :narrow-limit (point-at-eol) :use-pos-tip nil :action-name action-name :action action)) (backward (pophint-config:do-with-narrow-or-wide :backward-p t :narrow-limit (point-at-bol) :use-pos-tip nil :action-name action-name :action action)) (t (pophint:do :not-highlight t :not-switch-window t :use-pos-tip nil :direction pophint-config:mark-direction :source '((shown . "Region") (method lambda nil (when (= (point) pophint-config:mark-user-start) (pophint-config:inch-forward)) (pophint-config:make-hint-with-inch-forward))) :action-name action-name :action action)))))

(defadvice cua-set-mark (after do-pophint disable) (pophint:do :not-highlight t :not-switch-window t :use-pos-tip nil :direction pophint-config:mark-direction :source '((shown . "Region") (regexp . "[^a-zA-Z0-9]+") (action lambda (hint) (let* ((currpt (point))) (goto-char (pophint:hint-startpt hint)) (when pophint-config:yank-immediately-when-marking-p (kill-ring-save currpt (point))))))))

(when pophint-config:effect-default-activated (ad-enable-advice 'set-mark-command 'after 'do-pophint) (ad-enable-advice 'cua-set-mark 'after 'do-pophint) (ad-activate 'set-mark-command) (ad-activate 'cua-set-mark))

(autoload 'pophint-config:set-yank-immediately-when-marking "pophint-config--mark" "\
Whether yank immediately when select hint-tip after `set-mark-command' or `cua-set-mark'.

\(fn ACTIVATE)" nil nil)

(autoload 'pophint-config:set-mark-direction "pophint-config--mark" "\
Set direction when select hint-tip after `set-mark-command' or `cua-set-mark'.

\(fn DIRECTION)" nil nil)

(autoload 'pophint-config:set-automatically-when-marking "pophint-config--mark" "\
Whether do pop-up automatically when `set-mark-command' or `cua-set-mark'.

\(fn ACTIVATE)" nil nil)

;;;***

;;;### (autoloads nil "pophint-config--ow" "pophint-config--ow.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--ow.el

(autoload 'pophint:do-each-window "pophint-config--ow" "\


\(fn)" t nil)

(defvar pophint-config:active-when-other-window-p pophint-config:effect-default-activated)

(defadvice other-window (around do-pophint disable) (if (and (interactive-p) pophint-config:active-when-other-window-p (> (length (window-list)) 2)) (let ((pophint:use-pos-tip t)) (pophint:do-each-window)) ad-do-it))

(when pophint-config:active-when-other-window-p (ad-enable-advice 'other-window 'around 'do-pophint) (ad-activate 'other-window))

(autoload 'pophint-config:set-do-when-other-window "pophint-config--ow" "\
Whether do pop-up when `other-window'.

\(fn ACTIVATE)" nil nil)

;;;***

;;;### (autoloads nil "pophint-config--quote" "pophint-config--quote.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--quote.el

(defvar pophint-config:quote-chars '("\"" "'" "`"))

(defvar pophint-config:exclude-quote-chars nil)

(make-variable-buffer-local 'pophint-config:exclude-quote-chars)

(autoload 'pophint-config:quoted-point-p "pophint-config--quote" "\


\(fn PT)" nil nil)

(pophint:defsource :name "quoted" :description "Quoted range by `pophint-config:quote-chars'.\nIf exist the character that not be used for quote, set `pophint-config:exclude-quote-chars'.\nIt's a buffer local variable and list like `pophint-config:quote-chars'." :source '((shown . "Quoted") (method lambda nil (let* ((chars (loop for c in pophint-config:quote-chars if (not (member c pophint-config:exclude-quote-chars)) collect c)) (char-re (when chars (regexp-opt chars))) (re (when char-re (rx-to-string `(and (group (regexp ,char-re))))))) (while (and (pophint-config:quoted-point-p (point)) re (re-search-forward re nil t))) (loop while (and re (re-search-forward re nil t)) for word = (match-string-no-properties 1) for startpt = (point) for endpt = (or (when (and (< (point) (point-max)) (string= (format "%c" (char-after)) word)) (forward-char) (- (point) 1)) (when (re-search-forward (format "[^\\]%s" word) nil t) (- (point) 1))) for value = (when (and endpt (< startpt endpt)) (buffer-substring-no-properties startpt endpt)) if (not endpt) return nil if (and (stringp value) (not (string= value ""))) return `(:startpt ,startpt :endpt ,endpt :value ,value))))))

(add-to-list 'pophint:global-sources 'pophint:source-quoted t)

;;;***

;;;### (autoloads nil "pophint-config--region" "pophint-config--region.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--region.el

(autoload 'pophint-config:do-with-narrow-or-wide "pophint-config--region" "\


\(fn &key BACKWARD-P NARROW-LIMIT ACTION-NAME ACTION USE-POS-TIP)" nil nil)

(autoload 'pophint-config:forward-region "pophint-config--region" "\
Forward region by selecting hint-tip.

\(fn)" t nil)

(autoload 'pophint-config:backward-region "pophint-config--region" "\
Backward region by selecting hint-tip.

\(fn)" t nil)

(autoload 'pophint-config:kill-region "pophint-config--region" "\
Kill/Delete region by selecting hint-tip.

\(fn)" t nil)

(autoload 'pophint-config:backward-kill-region "pophint-config--region" "\
Kill/Delete region by selecting hint-tip.

\(fn)" t nil)

(autoload 'pophint-config:set-kill-region-kill-ring-save "pophint-config--region" "\
Whether to save into kill ring by `pophint-config:kill-region'/`pophint-config:backward-kill-region'.

\(fn ACTIVATE)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pophint-config--region" '("pophint-config:")))

;;;***

;;;### (autoloads nil "pophint-config--slack" "pophint-config--slack.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--slack.el

(autoload 'pophint:do-slack-link "pophint-config--slack" "\


\(fn)" t nil)

(autoload 'pophint-config:slack-setup "pophint-config--slack" "\


\(fn)" nil nil)

(add-hook 'slack-mode-hook 'pophint-config:slack-setup t)

;;;***

;;;### (autoloads nil "pophint-config--sym" "pophint-config--sym.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--sym.el

(pophint:defsource :name "symbol" :description "Symbol." :source '((shown . "Sym") (regexp . "\\_<.+?\\_>")))

(add-to-list 'pophint:global-sources 'pophint:source-symbol t)

;;;***

;;;### (autoloads nil "pophint-config--tags" "pophint-config--tags.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--tags.el

(autoload 'pophint-config:set-tag-jump-command "pophint-config--tags" "\
Set advice to move the point selected hint-tip before COMMAND.

If COMMAND receives point by interactive, give the argument index as POINT-ARG-INDEX.

\(fn COMMAND &key POINT-ARG-INDEX)" nil (quote macro))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pophint-config--tags" '("pophint-config:tag-jump-current-mode")))

;;;***

;;;### (autoloads nil "pophint-config--thing" "pophint-config--thing.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--thing.el

(autoload 'pophint-config:set-thing-at-point-function "pophint-config--thing" "\
Set advice to get thing by hint-tip as substitute for COMMAND.

\(fn FUNCTION)" nil t)

(function-put 'pophint-config:set-thing-at-point-function 'lisp-indent-function '0)

(autoload 'pophint-config:thing-def-command-with-toggle-effect "pophint-config--thing" "\
Define a command named `pophint-config:thing-do-COMMAND-with-toggle-effect' to do COMMAND with toggle `pophint-config:thing-at-point-effect-enabled'.

\(fn COMMAND)" nil t)

(function-put 'pophint-config:thing-def-command-with-toggle-effect 'lisp-indent-function '0)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pophint-config--thing" '("pophint-config:thing-at-point-effect-enabled")))

;;;***

;;;### (autoloads nil "pophint-config--url" "pophint-config--url.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--url.el

(defvar pophint-config:regexp-url (rx-to-string `(and (any "a-z") (+ (any "a-z0-9")) "://" (+ (any "a-zA-Z0-9#%&-=~@+:./_")))))

(defvar pophint-config:regexp-file-head (rx-to-string `(and (or (and (any "a-zA-Z") ":/") (and (32 (or "." ".." "~")) "/")))))

(pophint:defsource :name "url-or-path" :description "Format like URL or Filepath." :source '((shown . "Url/Path") (method lambda nil (let* ((u (save-excursion (when (re-search-forward pophint-config:regexp-url nil t) (let ((startpt (match-beginning 0)) (endpt (match-end 0)) (value (match-string-no-properties 0))) (pophint--trace "found url. pt:[%s] value:[%s]" startpt value) `(:startpt ,startpt :endpt ,endpt :value ,value))))) (f (when (functionp 'ffap-guesser) (save-excursion (loop while (re-search-forward pophint-config:regexp-file-head nil t) for startpt = (match-beginning 0) for guess = (ffap-guesser) if guess return (progn (pophint--trace "found path. pt:[%s] value:[%s]" startpt guess) `(:startpt ,startpt :endpt ,(+ startpt (length guess)) :value ,guess)))))) (next (cond ((not u) f) ((not f) u) ((<= (plist-get u :startpt) (plist-get f :startpt)) u) (t f)))) (when next (goto-char (plist-get next :endpt))) next))))

(add-to-list 'pophint:global-sources 'pophint:source-url-or-path t)

;;;***

;;;### (autoloads nil "pophint-config--vb" "pophint-config--vb.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--vb.el

(autoload 'pophint-config:vb-setup "pophint-config--vb" "\


\(fn)" nil nil)

(add-hook 'visual-basic-mode-hook 'pophint-config:vb-setup t)

;;;***

;;;### (autoloads nil "pophint-config--w3m" "pophint-config--w3m.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--w3m.el

(autoload 'pophint-config:set-w3m-use-new-tab "pophint-config--w3m" "\
Whether open new tab of w3m when action by w3m function.

\(fn ACTIVATE)" nil nil)

(autoload 'pophint:do-flexibly-search "pophint-config--w3m" "\


\(fn)" t nil)

(autoload 'pophint:do-w3m-anchor "pophint-config--w3m" "\


\(fn)" t nil)

(autoload 'pophint-config:w3m-anchor-open "pophint-config--w3m" "\
Do `pophint:do-w3m-anchor' in current tab.

\(fn)" t nil)

(autoload 'pophint-config:w3m-anchor-open-new-tab "pophint-config--w3m" "\
Do `pophint:do-w3m-anchor' in new tab.

\(fn)" t nil)

(autoload 'pophint-config:w3m-anchor-open-invert "pophint-config--w3m" "\
Do `pophint:do-w3m-anchor' inverting `pophint-config:w3m-use-new-tab'.

\(fn)" t nil)

(autoload 'pophint-config:w3m-anchor-open-new-tab-continuously "pophint-config--w3m" "\
Do `pophint:do-w3m-anchor' in new tab continuously.

\(fn)" t nil)

(autoload 'pophint-config:w3m-anchor-yank "pophint-config--w3m" "\
Yank using `pophint:source-w3m-anchor'.

\(fn)" t nil)

(autoload 'pophint-config:w3m-anchor-view-source "pophint-config--w3m" "\
View source using `pophint:source-w3m-anchor'.

\(fn)" t nil)

(autoload 'pophint-config:w3m-anchor-focus "pophint-config--w3m" "\
Focus using `pophint:source-w3m-anchor'.

\(fn)" t nil)

(autoload 'pophint-config:w3m-setup "pophint-config--w3m" "\


\(fn)" nil nil)

(add-hook 'w3m-mode-hook 'pophint-config:w3m-setup t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pophint-config--w3m" '("pophint-config:")))

;;;***

;;;### (autoloads nil "pophint-config--widget" "pophint-config--widget.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--widget.el

(autoload 'pophint:do-widget "pophint-config--widget" "\


\(fn)" t nil)

(autoload 'pophint-config:widget-setup "pophint-config--widget" "\


\(fn)" nil nil)

(add-hook 'Custom-mode-hook 'pophint-config:widget-setup t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pophint-config--widget" '("pophint-config:widget-")))

;;;***

;;;### (autoloads nil "pophint-config--yank" "pophint-config--yank.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pophint-config--yank.el

(autoload 'pophint:do-flexibly-yank "pophint-config--yank" "\


\(fn)" t nil)

(autoload 'pophint:do-flexibly-rangeyank "pophint-config--yank" "\


\(fn)" t nil)

(autoload 'pophint:do-rangeyank "pophint-config--yank" "\


\(fn)" t nil)

(autoload 'pophint-config:set-relayout-when-rangeyank-start "pophint-config--yank" "\
Whether re-layouting window when start searching the end point of RangeYank.

\(fn ACTIVATE)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pophint-config--yank" '("pophint-config:")))

;;;***

;;;### (autoloads nil nil ("pophint-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; pophint-autoloads.el ends here
