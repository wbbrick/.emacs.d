(defun ensure-package-installed (&rest packages)
  "Assure every package is installed, ask for installation if it��s not.
Return a list of installed packages or nil for every package not installed."
  (mapcar
   (lambda (package)
     (package-installed-p 'evil)
     (if (package-installed-p package)
         package
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package)
         nil)))
   packages))

(ensure-package-installed
 'ac-helm
 'anzu
 'browse-kill-ring
 'csv-mode
 'diminish
 'dired+
 'dired-details+
 'dired-details
 'dired-rainbow
 'dired-hacks-utils
 'dom
 'doremi-cmd
 'doremi-frm
 'doremi
 'faces+
 'flycheck
 'gh
 'git-gutter+
 'git-gutter
 'gitignore-mode
 'grizzl
 'gruvbox-theme
 'haskell-mode
 'helm-css-scss
 'helm
 'hexrgb
 'hiwin
 'js2-mode
 'json-mode
 'json-reformat
 'json-snatcher
 'key-chord
 'less-css-mode
 'markdown-mode
 'move-text
 'multiple-cursors
 'paredit
 'pcache
 'projectile
 'pkg-info
 'epl
 'rainbow-delimiters
 'rainbow-mode
 's
 'scss-mode
 'smartparens
 'dash
 'smex
 'auto-complete
 'popup
 'json
 'undo-tree
 'volatile-highlights
 'web-mode
 'yaml-mode
 )
