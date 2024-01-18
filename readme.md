# Physics GRE solutions

- [Physics GRE (2008)](pdfs/pgre_2008.pdf) and [Solutions](pdfs/pgre_2008_solutions.pdf)
- [Physics GRE (2001)](pdfs/pgre_2001.pdf) and [Solutions](pdfs/pgre_2001_solutions.pdf)
- [Physics GRE (1996)](pdfs/pgre_1996.pdf) and [Solutions](pdfs/pgre_1996_solutions.pdf)
- [Physics GRE (1992)](pdfs/pgre_1992.pdf) and [Solutions](pdfs/pgre_1992_solutions.pdf)
- [Physics GRE (1986)](pdfs/pgre_1986.pdf) and [Solutions](pdfs/pgre_1986_solutions.pdf)


## usage

clone repo and submodules:
```bash
git clone https://github.com/jfdoolster/physics_gre_solutions.git
cd physics_gre_solutions
git submodule update --init --recursive # important! preamble submodule
```

to build a single solution manual from year `YYYY`:
```bash
cd physics_gre_solutions/src
latexmk ./pgre_YYYY_solutions.tex
```

to rebuild all solutions manuals:
``` bash
cd physics_gre_solutions
make       # output: physics_gre_solutions/pdfs/

make clean # clean aux files, pdfs not removed
```
