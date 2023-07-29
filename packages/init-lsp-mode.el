(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :hook ((prog-mode . lsp-deferred)
         (lsp-mode . lsp-enable-which-key-integration))
  :custom
  (lsp-enable-folding nil)
  (lsp-enable-links nil)
  (lsp-enable-snippet nil)
  (lsp-keymap-prefix "C-c ;")
  (read-process-output-max (* 1024 1024)))

(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode))

(use-package consult-lsp
  :commands (consult-lsp-diagnostics consult-lsp-symbols))
