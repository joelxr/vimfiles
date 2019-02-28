SHELL = /bin/bash
nvim := $(shell which nvim)
nvim_version := '${shell $(nvim) --version}'
CACHE_HOME ?= $(HOME)/.cache

default: install

install:
	@mkdir -vp "$(CACHE_HOME)/nvim/"{backup,session,swap,tags,undo}; \
	$(nvim) --cmd 'set t_ti= t_te= nomore' -N -U NONE -i NONE \
		-c "try | call dein#update() | finally | call confirm('') | qall! | endtry"
	./venv.sh

update:
	@git pull --ff --ff-only; \
	$(nvim) --cmd 'set t_ti= t_te= nomore' -N -U NONE -i NONE \
		-c "try | call dein#clear_state() | call dein#update() | call dein#recache_runtimepath() | finally | call confirm('') | qall! | endtry"
	./venv.sh

upgrade: update

uninstall:
	rm -rf "$(CACHE_HOME)/vim"

test:
ifeq ('$(nvim)','nvim')
	$(info Testing NVIM...)
	$(if $(findstring NVIM,$(nvim_version)),\
		$(info OK),\
		$(error   .. MISSING! Is Neovim available in PATH?))
endif
	@echo All tests passed, hooray!


.PHONY: install update upgrade uninstall test
