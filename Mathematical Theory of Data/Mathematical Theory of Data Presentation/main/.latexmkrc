#------------------------------------------------------------
# Send ALL output and intermediate files to build/
#------------------------------------------------------------
$out_dir = 'build';
$aux_dir = $out_dir;
mkdir $out_dir unless -d $out_dir;

#------------------------------------------------------------
# Force DVI mode for pstricks + hyperref(dvips)
#------------------------------------------------------------
$latex  = 'latex -interaction=nonstopmode -halt-on-error -output-format=dvi %O %S';
$dvips  = 'dvips %O -o %D %S';
$ps2pdf = 'ps2pdf %O %S %D';

# Reduce verbosity (optional):
# $dvips  = 'dvips -q %O -o %D %S';
# $ps2pdf = 'ps2pdf -q %O %S %D';



