;; Doom
(setq
 doom-font (font-spec :family "Menlo" :size 13)
 doom-theme 'doom-nord-light
 projectile-project-search-path '("~/Git")
 neo-window-fixed-size nil
 select-enable-clipboard t)

;; Org
(after! org
  (setq org-agenda-files (list "~/Git/org/")))

(setq browse-url-browser-function 'eww-browse-url)


;; (add-to-list 'default-frame-alist '(fullscreen . maximized))
(toggle-frame-fullscreen)

;; Eshell
(setq
 eshell-history-size 1000000
 eshell-destroy-buffer-when-process-dies t)

(add-hook 'eshell-mode-hook (lambda ()
 (add-to-list 'eshell-visual-subcommands '("yarn" "install"))))

;; Macos
(setq
 mac-option-modifier nil
 mac-command-modifier 'meta
 ns-right-alternate-modifier 'none)

;; Misc modes
(setq
 markdown-command "/usr/local/bin/pandoc"
 tide-server-max-response-length 409600
 nodejs-repl-arguments ["--config-file /Users/work/\@/web-admin/.babelrc"]
 nodejs-repl-command "babel-node"
 avy-timeout-seconds 0.15
 vterm-shell 'zsh)

;; Tabnine
(setq company-idle-delay 0.1)
 ;; company-show-numbers t)

;; (use-package! company-tabnine
;;   :ensure t
;;   :config)

(add-hook! 'typescript-mode-hook (lambda ()
 (set (make-local-variable '+lsp-company-backends)
   '((company-dabbrev-code company-ac-php-backend)))))

;; LSP
(setq lsp-eslint-server-command
   '("node"
     "/Users/jcwejman/.vscode/extensions/dbaeumer.vscode-eslint-2.1.20/server/out/eslintServer.js"
     "--stdio"))

;; Env
(setenv "SHELL" "zsh")

;; Pdf-view
(use-package pdf-view
  :hook (pdf-tools-enabled . pdf-view-midnight-minor-mode)
  :hook (pdf-tools-enabled . hide-mode-line-mode)
  :config
  (setq pdf-view-midnight-colors '("#ABB2BF" . "#282C35")))

;; Indents
(setq
 web-mode-code-indent-offset 2
 typescript-indent-level 2
 default-tab-width 2
 tab-width 2
 standard-indent 2)

(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))
(add-hook 'js-mode-hook (lambda () (setq js-indent-level 2)))
(add-hook 'css-mode-hook (lambda () (setq css-indent-offset 2)))
(add-hook 'web-mode (lambda () (setq web-mode-markup-indent-offset 2)))
(add-hook 'web-mode (lambda () (setq web-mode-sql-indent-offset 2)))
(add-hook 'web-mode (lambda () (setq web-mode-css-indent-offset 2)))


;; Extra
(add-hook! 'before-save-hook 'delete-trailing-whitespace)

;; (add-hook 'typescript-mode-hook (lambda () (flycheck-disable-checkers '(typescript-tide))))
;; (add-hook 'typescript-mode-hook (lambda () (setq flycheck--automatically-disabled-checkers '(typescript-tide typescript-tslint))))


;; Keymaps
(map!
 :en "C-h" #'evil-window-left
 :en "C-j" #'evil-window-down
 :en "C-k" #'evil-window-up
 :en "C-l" #'evil-window-right
 :en "M-(" #'paredit-wrap-round
 :en "M-l" #'paredit-forward-slurp-sexp
 :en "M-h" #'paredit-forward-burf-sexp
 :en "M-o" #'other-frame)

;; Magit modline refresh fix

(defun +cwejman-vc-refresh-modelines (a)
  (dolist (buffer (doom-buffer-list))
    (set-buffer buffer)
    (vc-refresh-state)
    (+doom-modeline--update-vcs)))

(advice-add 'magit-checkout :after #'+cwejman-vc-refresh-modelines)
