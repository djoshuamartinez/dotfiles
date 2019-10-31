;;; Joshua's emacs configuration

(require 'package)

;;; Repositories
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

; Initialize packages at this point for the symbols/vars/fns
; to be available for further configuration
(setq package-enable-at-startup nil)
(package-initialize)

; eVIl mode
(require 'evil)
(evil-mode 1)

; Interactive DO
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

; Projectile project management
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
; Required for grep searching in project
(require 'subr-x)

; Recent files tracking
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)

; Line numbers
(global-linum-mode t)

; Tabs to spaces
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

; Enable company mode everywhere
(add-hook 'after-init-hook 'global-company-mode)

; Magit key shortcut
(global-set-key (kbd "C-x g") 'magit-status)

; Transparency
;(set-frame-parameter (selected-frame) 'alpha '(65 50))
;(add-to-list 'default-frame-alist '(alpha 65 50))

(load-theme 'dracula)
(toggle-scroll-bar -1)
;(setq inhibit-startup-screen t)


(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
; SGML indentation
(setq-default sgml-basic-offset 4)
; Enable React JSX mode key shortcut
(global-set-key (kbd "C-c r") 'rjsx-mode)

(require 'flycheck)
; Disable default js flycheck lint to use eslint
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(javascript-jshint json-jsonlint)))
; Use eslint on rjsx-mode
(flycheck-add-mode 'javascript-eslint 'rjsx-mode)

; Use eslint from node_modules
;(add-hook 'flycheck-mode-hook 'add-node-modules-path)

; Enable flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)


(tool-bar-mode -1)
(menu-bar-mode -1)
(defvar toggle-menu-state)
(setq toggle-menu-state 1)
(defun toggle-menus ()
    "Toggle header menus."
    (interactive)
    (tool-bar-mode toggle-menu-state)
    (menu-bar-mode toggle-menu-state)
    (setq toggle-menu-state (* -1 toggle-menu-state))
)
(global-set-key (kbd "C-w m") 'toggle-menus)


;(add-hook 'web-mode-hook
          ;(lambda ()
            ;(when (string-equal "tsx" (file-name-extension buffer-file-name))
              ;(setup-tide-mode))))

; React components mode
;(add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))

; Nice buffer completion
;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;'(ido-mode (quote both) nil (ido))
 ;'(package-selected-packages
   ;(quote
    ;(projectile tide company typescript-mode elm-mode erlang ox-ioslide evil-org 2048-game php-mode haskell-mode neotree dirtree-prosjekt dirtree magit web-mode rjsx-mode evil-visual-mark-mode dracula-theme))))


;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;)


;(setq org-todo-keywords '((sequence "TODO" "WAITING" "|" "DONE")))

;(require 'org-re-reveal)


;(defun setup-tide-mode ()
  ;(interactive)
  ;(tide-setup)
  ;(flycheck-mode +1)
  ;(setq flycheck-check-syntax-automatically '(save mode-enabled))
  ;(eldoc-mode +1)
  ;(tide-hl-identifier-mode +1)
  ;(company-mode +1))

;; aligns annotation to the right hand side
;(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
;(add-hook 'before-save-hook 'tide-format-before-save)

;(add-hook 'typescript-mode-hook #'setup-tide-mode)

;; enable typescript-tslint checker
;(flycheck-add-mode 'typescript-tslint 'web-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("b46ee2c193e350d07529fcd50948ca54ad3b38446dcbd9b28d0378792db5c088" default)))
 '(package-selected-packages
   (quote
    (add-node-modules-path company-php helm-projectile helm windata web-mode use-package typescript-mode tree-mode rjsx-mode prosjekt projectile php-mode org-re-reveal neotree magit haskell-mode flycheck-package evil-visual-mark-mode evil-org erlang elm-mode dracula-theme company 2048-game))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
