;; based on https://realpython.com/emacs-the-best-python-editor/
;; init.el --- Emacs configuration

;; INSTALL PACKAGES
;; --------------------------------------

(require 'package)

(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)
(set-face-attribute 'default nil :height 100)
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))
(global-set-key (kbd "C-x g") 'magit-status) ;;keybind for displaying info about current git repo
(defvar myPackages
  '(better-defaults
    elpy
    flycheck
    material-theme
    py-autopep8
    magit
    markdown-mode
    pug-mode
    web-mode
    markdown-preview-mode
    websocket
    web-server
))


(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;; BASIC CUSTOMIZATION
;; --------------------------------------

(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load material theme
(global-linum-mode t) ;; enable line numbers globally

;; init.el ends here
 
(elpy-enable)

(require 'company)
(global-company-mode) 

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (pug-mode magit py-autopep8 flycheck elpy material-theme better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "DAMA" :slant normal :weight normal :height 128 :width normal)))))

;; correctly highlight ros launch files as XML files
;; http://wiki.ros.org/roslaunch/Tutorials/Using%20Roslaunch%20with%20Emacs
(add-to-list 'auto-mode-alist '("\\.launch$" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.urdf$" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.xacro$" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))

(setq markdown-preview-stylesheets (list "github.css"))
;;(setq markdown-command 'gfm-mode)
(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)

(load "${CVSDIR}/jsk_common/jsk_tools/dot-files/dot.emacs") ;; jsk標準
;; (load "${CVSDIR}/jsk_tendon_robot/install/tendon-init.el") ;; 必要に応じて


;; related to euslime https://github.com/furushchev/euslime
(add-to-list 'load-path "~/euslime_dir/slime")
(add-to-list 'load-path "~/euslime_dir/euslime")
(add-to-list 'load-path "~/euslime_dir/slime-repl-ansi-color")
(require 'slime-autoloads)
(require 'euslime)
(setq inferior-lisp-program "sbcl")
(setq inferior-euslisp-program "roseus")
(setq slime-contribs '(slime-fancy slime-repl-ansi-color))
