;; init.el --- Emacs configuration

;; INSTALL PACKAGES
;; --------------------------------------

(require 'package)

(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    ein
    elpy ;; add the elpy package
    material-theme))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;; BASIC CUSTOMIZATION
;; --------------------------------------
;; change yes no questions to y and y
(fset 'yes-or-no-p 'y-or-n-p)
;;smooth scrolling
(setq prelude-use-smooth-scrolling t)

(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load material theme
(global-linum-mode t) ;; enable line numbers globally

(elpy-enable)
(pyvenv-activate "/Users/mk/anaconda")
;;(elpy-use-ipython)
;;(setq elpy-rpc-backend "jedi")



;; AUCTex
(setenv "PATH" (concat (getenv "PATH") ":/usr/texbin"))
(setq exec-path (append exec-path '("/usr/texbin")))
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

;(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'auto-fill-mode)               
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t) 


;;idl
(setq idlwave-system-directory "/Applications/exelis/idl84/")





(set-language-environment "utf-8")
(set-default-coding-systems 'utf-8)

(setq-default indent-tabs-mode nil)
;;(define-key global-map (kbd "M-8") "{")
;;(define-key global-map (kbd "M-9") "}")
;;(define-key global-map (kbd "M-5") "[")
;;(define-key global-map (kbd "M-6") "]")
;;(define-key global-map (kbd "M-7") "\")
;; init.el ends here

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ns-right-alternate-modifier (quote none)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'erase-buffer 'disabled nil)
(put 'upcase-region 'disabled nil)
