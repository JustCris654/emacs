(use-feature dired
  :commands (dired)
  :custom
  (dired-listing-switches "-alh" "Human friendly file sizes.")
  (dired-kill-when-opening-new-dired-buffer t)
  :bind (:map dired-mode-map
              ("h" . dired-up-directory)
              ("j" . dired-next-line)
              ("k" . dired-previous-line)
              ("l" . dired-single-buffer))
  :general
  (+general-global-application "d" 'dired))

(use-package all-the-icons-dired
  :if (display-graphic-p)
  :hook (dired-mode . all-the-icons-dired-mode))
