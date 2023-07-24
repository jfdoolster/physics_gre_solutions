mkfile_dir := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

.PHONY: all info build clean

all: build

info:
	$(info mkfile_dir:	$(mkfile_dir))
	@:

build:
	latexmk pgre_2008_solutions

clean:
	latexmk -C