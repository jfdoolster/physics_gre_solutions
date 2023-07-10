mkfile_dir := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

.PHONY: all info build clean

all: build

info:
	$(info mkfile_dir:	$(mkfile_dir))
	@:

build:
	latexmk pgre_1986_solutions
	latexmk pgre_1992_solutions
	latexmk pgre_1996_solutions
	latexmk pgre_2001_solutions
	latexmk pgre_2008_solutions

clean:
	latexmk -C