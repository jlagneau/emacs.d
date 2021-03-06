;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    shortcut.el                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/16 05:09:17 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/08 23:13:00 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

;; Mouse
(require 'mouse)
(when (display-graphic-p nil)
  (xterm-mouse-mode t)
  (defun track-mouse (e))
  (setq-default mouse-sel-mode t)
  (global-set-key
   [mouse-4]
   '(lambda ()
      (interactive)
      (scroll-down 1)))
  (global-set-key
   [mouse-5]
   '(lambda ()
      (interactive)
      (scroll-up 1))))

;; MacOS disable right Alt key
(when (eq system-type 'darwin)
  (setq-default mac-right-option-modifier 'none))

;; Global Shorcut
(global-set-key (kbd "C-A") 'undo)
(global-set-key (kbd "C-c h") 'replace-string)
(global-set-key (kbd "C-c C-d") 'comment-or-uncomment-region)
(global-set-key [mouse-20] 'previous-buffer)
(global-set-key [mouse-21] 'next-buffer)
(global-set-key (kbd "<f5>") 'compile)
(global-set-key (kbd "<f6>") 'recompile)
(global-set-key (kbd "TAB") 'tab-to-tab-stop)
;; Multi cursor shortcuts
(global-set-key (kbd "C-c d") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c D") 'mc/mark-all-like-this)
(global-set-key (kbd "C-c c") 'mc/edit-lines)
(global-unset-key (kbd "C-<down-mouse-1>"))
(global-set-key (kbd "C-<mouse-1>") 'mc/add-cursor-on-click)
;; Other packages shortcut
(global-set-key (kbd "<f8>") 'neotree-project-dir)
(global-set-key (kbd "<f9>") 'magit-status)
(global-set-key (kbd "C-c C-f") 'projectile-find-file)
(global-set-key (kbd "<f12>") 'projectile-switch-project)
