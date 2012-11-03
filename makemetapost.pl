#!/usr/bin/perl
use strict;
my $file = $ARGV[0];    
$file=~s/[.]mp$//;
print "Processing mpost file $file...\n";
system 'mpost',"$file.mp" || die 'metapost error';
open(OUT,'>',"_${file}_.tex");
print OUT "\\documentclass[12pt]{article}\n";
print OUT "\\usepackage{graphicx,color}\n";
print OUT "\\textwidth=\\paperwidth\n";
print OUT "\\textheight=\\paperheight\n";
print OUT "\\begin{document}\n";
print OUT "\\thispagestyle{empty}\n";
print OUT "\\includegraphics{$file.1}\n";
print OUT "\\end{document}\n";
close OUT;
system 'latex',"_${file}_.tex";
system 'dvips -E -o '.$file.'.eps '."_${file}_.dvi";
