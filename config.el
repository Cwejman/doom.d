(setq ns-right-alternate-modifier 'none)
(setq doom-font (font-spec :family "Menlo" :size 13))

(add-hook! 'before-save-hook 'delete-trailing-whitespace)

(defun +cwejman-vc-refresh-modelines (a)
  (dolist (buffer (doom-buffer-list))
    (set-buffer buffer)
    (vc-refresh-state)
    (+doom-modeline--update-vcs)))

(advice-add 'magit-checkout :after #'+cwejman-vc-refresh-modelines)
