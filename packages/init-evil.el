(use-package evil
  :init      ;; tweak evil's configuration before loading it
  (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
  (setq evil-want-keybinding nil)
  (setq evil-vsplit-window-right t)
  (setq evil-split-window-below t)
  (evil-mode))
(use-package evil-collection
  :after evil
  :config
  (setq evil-collection-mode-list '(dashboard dired ibuffer))
  (evil-collection-init)
  )
(use-package evil-commentary
  :after evil
  :config
  (evil-commentary-mode))

(use-package evil-anzu
  :after (evil anzu))

(use-package evil-easymotion)

(use-package evil-snipe
  :after evil
  :config
  (evil-snipe-mode t)
  (evil-snipe-override-mode t))

(use-package evil-visualstar
  :after evil
  :config
  (global-evil-visualstar-mode))
