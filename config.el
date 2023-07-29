(setq package-archives '(("elpa" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("nongnu" . "https://elpa.nongnu.org/nongnu/")))

;; VISUAL
(when window-system
  (tool-bar-mode 0)
  (scroll-bar-mode 0)
  (tooltip-mode 0))

(toggle-frame-maximized)

;; when a line goes out of screen truncate it to make it visible
(setq-default truncate-lines t)


;; increase large files threshold
(setq large-file-warning-threshold (* 15 1024 1024))

;; respond with y or n to prompts instead of yes and no
(fset 'yes-or-no-p 'y-or-n-p)

;; move correctly over camelCased words
(subword-mode)


(setq recenter-positions '(top middle bottom))

(setq make-backup-files nil)


;; FONT
(set-face-attribute 'default nil
  :font "FiraCode Nerd Font"
  :height 130
  :weight 'medium)
(set-face-attribute 'variable-pitch nil
  :font "FiraCode Nerd Font"
  :height 140
  :weight 'medium)
(set-face-attribute 'fixed-pitch nil
  :font "FiraCode Nerd Font"
  :height 130
  :weight 'medium)
;; Makes commented text and keywords italics.
;; This is working in emacsclient but not emacs.
;; Your font must have an italic face available.
(set-face-attribute 'font-lock-comment-face nil
  :slant 'italic)
(set-face-attribute 'font-lock-keyword-face nil
  :slant 'italic)

;; This sets the default font on all graphical frames created after restarting Emacs.
;; Does the same thing as 'set-face-attribute default' above, but emacsclient fonts
;; are not right unless I also add this method of setting the default font.
(add-to-list 'default-frame-alist '(font . "FiraCode Nerd Font"))

;; Uncomment the following line if line spacing needs adjusting.
;; (setq-default line-spacing 0.12)

(global-display-line-numbers-mode 1)
(global-visual-line-mode t)
(setq display-line-numbers 'relative)




(load-file (expand-file-name "elpaca-init.el" user-emacs-directory))
(load-file (expand-file-name "packages.el" user-emacs-directory))

