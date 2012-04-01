;; Batch run stuff

(setq debug-on-error t)

(setq package-dir
      (concat
       (file-name-directory
        (or (buffer-file-name)
            load-file-name))
       ".elpa"))

(setq package-user-dir package-dir)

(when (file-exists-p package-dir)
  (delete-directory package-dir t))

(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("marmalade" . "http://marmalade-repo.org/packages/")))

(package-initialize)
(package-refresh-contents)
(package-install "creole")
(ert-run-tests-batch-and-exit)

;; End
