;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Pavel Pereverzev"
      user-mail-address "gotoss08@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;; (setq doom-font (font-spec :family "JetBrains Mono Light" :size 26))

;; (setq doom-font (font-spec :family "Aptos Mono" :size 26 :weight 'light))
;; (setq doom-font (font-spec :family "Cascadia Code NF" :size 26 :weight 'light))

;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; My config

;; Add cyrillic input support
(set-input-method 'russian-computer)

(setq scroll-margin 2
      scroll-step 1
      scroll-conservatively 10000
      auto-window-vscroll nil
      mouse-wheel-scroll-amount '(1 ((shift) . 1)))

(setq default-process-coding-system '(utf-8 . utf-8))  ;; Ensure UTF-8 for processes
(setq locale-coding-system 'utf-8)  ;; Ensure UTF-8 for locale
(setq system-time-locale "C")  ;; Ensure consistent locale for shell commands
(setq w32-unicode-filenames 'utf-8)  ;; Ensure UTF-8 for filenames
(prefer-coding-system 'utf-8)  ;; Prefer UTF-8 for all text
;; Set UTF-8 encoding for processes and shell commands


;; Show hidden files && disable dired-omit-mode
(after! dired
  (setq dired-omit-mode nil))

;; Use a Unix-like shell (e.g., Git Bash)
(setq shell-file-name "C:/Program Files/Git/bin/bash.exe")  ;; Path to Git Bash
(setq explicit-shell-file-name shell-file-name)

;; Map "<leader> g /" to open C's header/source files
(map! :map c-mode-map
      :n "g /" #'lsp-clangd-find-other-file)

;; Load computer specific configs
(unless (file-exists-p "~/.doom.d/computer-specific.el")
  (write-region content nil "~/.doom.d/computer-specific.el"))
(load "~/.doom.d/computer-specific.el")
