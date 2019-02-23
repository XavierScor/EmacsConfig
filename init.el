;; We configure Emacs in this file

;; comment starts with `;`


(set-default-font "-unknown-DejaVu Sans Mono-normal-normal-normal-*-21-*-*-*-m-0-iso10646-1")


(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))

(package-initialize)

;; disable toolbar
(tool-bar-mode -1)

;; disabel menubar
(menu-bar-mode -1)

(eval-when-compile
  (add-to-list 'load-path "/home/pi/.emacs.d/elpa")
  (require 'use-package))

(setq use-package-always-ensure t)

(use-package magit
  :bind ("C-x g" . magit-status))

(use-package lispy
  :config
  (add-hook 'emacs-lisp-mode-hook (lambda () (lispy-mode))))

(custom-set-variables
 '(jdee-server-dir "/home/pi/APPLICATIONS/myJars")
 '(package-selected-packages
   (quote
    (jdee auctex auto-complete-auctex cdlatex magit lispy use-package-chords))))
(custom-set-faces
 )

;; ==================================================
;; AUCTeX configuration
;; (use-package auctex)
(require 'auto-complete)
(use-package auto-complete-auctex)
(use-package cdlatex)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook 'auto-fill-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-ACUTeX t)
;; ==================================================

;; ==================================================
;; JDEE configuration
(use-package jdee)
;; ==================================================
