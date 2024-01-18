
# https://texdoc.org/serve/latexmk.man1.pdf/0

$aux_dir = '../build';
$out_dir = '../pdfs';
$jobname = '%A';

$pdf_mode = 1;
$postscript_mode = $dvi_mode = 0;
$bibtex_use = 2;
$do_cd = 1;
$synctex = 0;

set_tex_cmds('-interaction=nonstopmode %O %S');