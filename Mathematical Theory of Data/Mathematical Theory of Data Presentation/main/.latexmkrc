# Put aux and intermediate files in build/
$aux_dir = '.';       #should invoke from the 'build' directory.

# Put final outputs (pdf, ps, dvi) in output/
$out_dir = '../output';

# Ensure directories exist
mkdir $out_dir unless -d $out_dir;


#------------------------------------------------------------
# Force DVI mode for pstricks + hyperref(dvips)
#------------------------------------------------------------
$pdf_mode =0;
$dvi_node=1;
$latex  = 'latex -interaction=nonstopmode -halt-on-error -output-format=dvi %O %S';
$dvips  = 'dvips %O -o %D %S';
$ps2pdf = 'ps2pdf %O %S %D';


#------------------------------------------------------------
# Make latexmk -c clean intermediates in build/
#------------------------------------------------------------
@generated_exts = (
   'aux', 'log', 'toc', 'out', 'nav', 'snm', 'fls', 'fdb_latexmk',
   'bbl', 'blg', 'lof', 'lot', 'ilg', 'ind', 'idx', 'vrb',
   'synctex.gz', 'dvi', 'ps'
);

foreach my $ext (@generated_exts) {
    push @clean_ext,       "build/*.$ext";
    push @clean_full_ext,  "build/*.$ext";
}


#------------------------------------------------------------
# Force DVI mode for pstricks + hyperref(dvips)
#------------------------------------------------------------
$latex  = 'latex -interaction=nonstopmode -halt-on-error -output-format=dvi %O %S';
$dvips  = 'dvips %O -o %D %S';
$ps2pdf = 'ps2pdf %O %S %D';

# Reduce verbosity (optional):
# $dvips  = 'dvips -q %O -o %D %S';
# $ps2pdf = 'ps2pdf -q %O %S %D';



