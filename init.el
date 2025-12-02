;; Meu init.el
;; Ele abre o init.el no meu dotfiles/emacs e usa ele para carregar os
;; orgfiles da minha configuração

;; Podemos usar aqui como sendo um symlink que tá tudo bem
(setq dotfiles-dir (file-name-directory
		    (file-truename (or (buffer-file-name) load-file-name))))

(require 'org)
(require 'ob-tangle)

(mapc #'org-babel-load-file (directory-files dotfiles-dir t "\\.org$"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
