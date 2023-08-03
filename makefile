mkfile_dir := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

.PHONY: all info build clean

all: build

info:
	$(info mkfile_dir:	$(mkfile_dir))
	@:

build:
	latexmk ./src/pgre_2008_solutions
	latexmk ./src/pgre_2001_solutions
	latexmk ./src/pgre_1996_solutions
	latexmk ./src/pgre_1992_solutions
	latexmk ./src/pgre_1986_solutions

clean:
	latexmk -C