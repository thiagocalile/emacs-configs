;; Meu init.el
;; Ele abre o init.el no meu dotfiles/emacs e usa ele para carregar os
;; orgfiles da minha configuração

;; Podemos usar aqui como sendo um symlink que tá tudo bem
(setq dotfiles-dir (file-name-directory
		    (file-truename (or (buffer-file-name) load-file-name))))

(require 'org)
(require 'ob-tangle)

(mapc #'org-babel-load-file (directory-files dotfiles-dir t "\\.org$"))
