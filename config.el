(setq ns-right-alternate-modifier 'none)
(setq doom-font (font-spec :family "Menlo" :size 13))
(setq typescript-indent-level 2)
(setq default-tab-width 2)
(setq tab-width 2)
(setq markdown-command "/usr/local/bin/pandoc")
(setq tide-server-max-response-length 409600)
(setq neo-window-fixed-size nil)
(setq nodejs-repl-arguments ["--config-file /Users/work/\@/web-admin/.babelrc"])
(setq nodejs-repl-command "babel-node")

(add-hook! 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))
(add-hook 'js-mode-hook (lambda () (setq js-indent-level 2)))

(map! :en "C-h"   #'evil-window-left
      :en "C-j"   #'evil-window-down
      :en "C-k"   #'evil-window-up
      :en "C-l"   #'evil-window-right)

(defun +cwejman-vc-refresh-modelines (a)
  (dolist (buffer (doom-buffer-list))
    (set-buffer buffer)
    (vc-refresh-state)
    (+doom-modeline--update-vcs)))

(advice-add 'magit-checkout :after #'+cwejman-vc-refresh-modelines)

(map! "M-o" #'other-frame)
