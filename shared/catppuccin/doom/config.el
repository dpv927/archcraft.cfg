;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "dpv927")

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;;(setq doom-theme 'doom-one)
(use-package doom-themes
  :config
  (setq doom-themes-enable-bold t     ;; enable bold
        doom-themes-enable-italic t)) ;; enable italic
(setq doom-theme 'catppuccin)
(setq catppuccin-flavor 'frappe) ;; or 'latte, 'macchiato, or 'mocha

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; Activate beacon
(beacon-mode 1)

;; Customize Doom Dashboard
(use-package dashboard
  :init
  (setq dashboard-set-heading-icons t) ;; Show heading icons
  (setq dashboard-set-file-icons t)    ;; Show file icons
  (setq dashboard-startup-banner "~/.config/doom/doom-emacs-dash.png") ;; Change doom logo
  (setq dashboard-center-content nil)       ;; The dashboard wont be placed in the center
  (setq dashboard-items '((recents . 5)     ;; Number of recent items to show
                          (agenda . 5 )     ;; Number of agendas to show
                          (bookmarks . 5)   ;; Number of bookmarks to show
                          (projects . 5)    ;; Number of proyects to show
                          (registers . 5))) ;; Number of registers to show
  ;; Set a message at the dashboard
  (setq dashboard-banner-logo-title "\nKEYBINDINGS:\
\nFind file               (SPC .)     \
Open buffer list    (SPC b i)\
\nFind recent files       (SPC f r)   \
Open the eshell     (SPC e s)\
\nOpen dired file manager (SPC d d)   \
List of keybindings (SPC h b b)")
  :config (dashboard-setup-startup-hook))

;; Ensure that emacsclient always opens on `dashboard' rather that the
;; default `scratch-buffer'
;;
(setq initial-buffer-choice 'dashboard-open)
(setq doom-fallback-buffer-name "*dashboard*")

;; Customize fonts
;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!
;;
(setq doom-font (font-spec :family "JetBrains Mono" :size 25)
      doom-variable-pitch-font (font-spec :family "Ubuntu" :size 25)
      doom-big-font (font-spec :family "JetBrains Mono" :size 34))

(after! doom-themes
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t))

(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic))

;; Markdown syntax
;; `markdown-header-face': This defines the basic appearance of Markdown headers.
;; They are inheriting the look of `font-lock-function-name-face' (normally used
;; to highlight function names in code) and are given a bold weight (:weight bold)
;; and the font is set to "variable-pitch" for a more elegant look.
;;
;; `markdown-header-face-1' to `markdown-header-face-6': These are specific heading
;; styles for different levels of headings in Markdown. Each inherits the look
;; of `markdown-header-face' and adjusts the font height (:height) for different
;; header levels, from 1.7 for the level 1 header to 1.2 for the level 6 header.
;;
(custom-set-faces
 '(markdown-header-face ((t (:inherit font-lock-function-name-face :weight bold :family "variable-pitch"))))
 '(markdown-header-face-1 ((t (:inherit markdown-header-face :height 1.7))))
 '(markdown-header-face-2 ((t (:inherit markdown-header-face :height 1.6))))
 '(markdown-header-face-3 ((t (:inherit markdown-header-face :height 1.5))))
 '(markdown-header-face-4 ((t (:inherit markdown-header-face :height 1.4))))
 '(markdown-header-face-5 ((t (:inherit markdown-header-face :height 1.3))))
 '(markdown-header-face-6 ((t (:inherit markdown-header-face :height 1.2)))))

;; Change some list icons when using Org-mode
(after! org
  (setq org-ellipsis " ▼ "
        org-superstar-headline-bullets-list '("◉" "●" "○" "◆" "●" "○" "◆")
        org-superstar-itembullet-alist '((?+ . ?➤) (?- . ?✦))))

;; Customize Doom modeline
(set-face-attribute 'mode-line nil :font "Ubuntu Mono-13")
(setq doom-modeline-height 55     ;; sets modeline height
      doom-modeline-bar-width 15  ;; sets right bar width
      doom-modeline--persp-name t ;; adds perspective name to modeline
      doom-modeline-persp-icon t) ;; adds folder icon next to persp name

;; Other settings
(setq display-line-numbers-type t)
