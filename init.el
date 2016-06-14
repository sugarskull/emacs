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

;; enable line numbers globally
(global-linum-mode t) 

; show the current line and column numbers in the stats bar
(line-number-mode t)
(column-number-mode t)



;; disable visual bell
(setq visible-bell nil)

;; auto close bracket insertion.
(electric-pair-mode 1)
;; make electric-pair-mode work on more brackets
(setq electric-pair-pairs '(
                            (?\" . ?\")
                            (?\{ . ?\})
                            ))

;; python
(elpy-enable)
(pyvenv-activate "/Users/mk/anaconda")
;;(pyvenv-activate "/Users/mk/anaconda/envs/p35/")
(elpy-use-ipython)
(setq elpy-rpc-backend "jedi")

;; markdown
(custom-set-variables
 '(markdown-command "/usr/local/bin/pandoc"))


;; AUCTex
                                  
 
(setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin/"))
(setq exec-path (append exec-path '("/Library/TeX/texbin/")))

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin/"))
(setq exec-path (append exec-path '("/usr/local/bin/")))

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

;(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'auto-fill-mode)               
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t) 



(set-language-environment "utf-8")
(set-default-coding-systems 'utf-8)

(setq-default indent-tabs-mode nil)
;;(define-key global-map (kbd "M-8") "{")
;;(define-key global-map (kbd "M-9") "}")
;;(define-key global-map (kbd "M-5") "[")
;;(define-key global-map (kbd "M-6") "]")
;;(define-key global-map (kbd "M-7") "\")


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
