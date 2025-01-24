;;; $DOOMDIR/computer-specific.el -*- lexical-binding: t; -*-
;;;

(message "loading computer specific config")

;; (add-to-list 'default-frame-alist '(height . 45))
;; (add-to-list 'default-frame-alist '(width . 140))

(add-to-list 'default-frame-alist '(height . 45))
(add-to-list 'default-frame-alist '(width . 140))

;; (setq doom-font (font-spec :family "JetBrains Mono Light" :size 26)
;;       doom-variable-pitch-font (font-spec :family "Aptos")
;;       doom-symbol-font (font-spec :family "JuliaMono")
;;       doom-big-font (font-spec :family "JetBrains Mono" :size 34))

(setq doom-font (font-spec :family "Fira Code" :size 18 :weight 'light)
      doom-variable-pitch-font (font-spec :family "Aptos" :size 16 :weight 'light)
      doom-serif-font (font-spec :family "Aptos" :size 16 :weight 'light))

;; (setq org-use-sub-superscripts t
;;       org-directory (concat (getenv "onedrive") "/org/")
;;       projectile-project-search-path '("c:/code/"))

(setq org-use-sub-superscripts t
      projectile-project-search-path '("c:/code/"))
