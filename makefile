mkfile_dir := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

.PHONY: all info build clean

all: build

info:
	$(info mkfile_dir:	$(mkfile_dir))
	@:

build:
	cd $(mkfile_dir)/2008 && latexmk
	cd $(mkfile_dir)/2001 && latexmk
	cd $(mkfile_dir)/1996 && latexmk
	cd $(mkfile_dir)/1992 && latexmk
	cd $(mkfile_dir)/1986 && latexmk

clean:
	cd $(mkfile_dir)/2008 && latexmk -C
	cd $(mkfile_dir)/2001 && latexmk -C
	cd $(mkfile_dir)/1996 && latexmk -C
	cd $(mkfile_dir)/1992 && latexmk -C
	cd $(mkfile_dir)/1986 && latexmk -C