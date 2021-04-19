ROOT = $(HOME)
EMACS_ROOT = $(HOME)/.emacs.d

install: install-bin install-emacs

install-bin:
	./make-conf.sh
	cp gitfile gitfile-commit $(ROOT)/bin/.

install-emacs:
	cp gitfile.el $(EMACS_ROOT)/site-lisp/.

