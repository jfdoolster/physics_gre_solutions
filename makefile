mkfile_dir  := $(strip $(dir $(realpath $(lastword $(MAKEFILE_LIST)))))

.PHONY: all info build clean

all: info build

info:
	$(info mkfile_dir:   $(mkfile_dir))
	@:

build:
	latexmk ./src/pgre_2008_solutions
	latexmk ./src/pgre_2001_solutions
	latexmk ./src/pgre_1996_solutions
	latexmk ./src/pgre_1992_solutions
	latexmk ./src/pgre_1986_solutions

clean:
	latexmk ./src/pgre_2008_solutions -c
	latexmk ./src/pgre_2001_solutions -c
	latexmk ./src/pgre_1996_solutions -c
	latexmk ./src/pgre_1992_solutions -c
	latexmk ./src/pgre_1986_solutions -c

rsync_recdir:= $(strip $(dir $(HOME)/Documents/))
rsync_opts   = -aAXH --delete --inplace --out-format="%o %n"

.PHONY: check_lsync lsync

check_lsync:
	@rsync $(rsync_opts) -v --dry-run $(realpath $(mkfile_dir)) $(rsync_recdir)
	$(info tx:     $(realpath $(mkfile_dir)))
	$(info rx_dir: $(rsync_recdir))
	@( echo && read -ep "Are you sure?!? [Y/n]: " sure && \
		case "$$sure" in [yY]) true;; *) false;; esac )

lsync: check_lsync
	@rsync $(rsync_opts) --stats $(realpath $(mkfile_dir)) $(rsync_recdir)