(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :hook ((prog-mode . lsp-deferred)
         (lsp-mode . lsp-enable-which-key-integration))
  :custom
  (lsp-rust-analyzer-cargo-watch-command "clippy")
  (lsp-eldoc-render-all t)

  (lsp-enable-folding nil)
  (lsp-enable-links nil)
  (lsp-enable-snippet nil)
  (lsp-keymap-prefix "C-c ;")
  (read-process-output-max (* 1024 1024))
  :config
  (add-hook 'lsp-mode-hook 'lsp-ui-mode))
  

(use-package lsp-ui
  :ensure
  :commands lsp-ui-mode
  :custom
  (lsp-ui-peek-always-show t)
  (lsp-ui-sideline-show-hover t)
  (lsp-ui-doc-enable nil))

(use-package consult-lsp
  :commands (consult-lsp-diagnostics consult-lsp-symbols))
