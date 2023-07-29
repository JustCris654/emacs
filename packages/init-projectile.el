(use-package projectile
  :ensure t
  ;; :bind* (("M-m SPC d"   . projectile-find-file)
  ;;         ("M-m SPC D"   . projectile-switch-project)
  ;;         ("M-m SPC TAB" . projectile-find-other-file))
  :init
  (setq projectile-file-exists-remote-cache-expire (* 10 60))
  :diminish projectile-mode
  :config
  (projectile-global-mode))
