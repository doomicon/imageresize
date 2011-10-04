#!/usr/bin/perl
use Image::Magick;

#my($image, $x);
#open(IMAGE, 'Blood_for_Blood_God_by_NachoMon.jpg');
#$x = $image->Read('file=>\*IMAGE);
#warn "$x" if "$x";
$dir = "./thumb";
$infile = $ARGV[0];
$outfile = $ARGV[1];
my($image);

$image = Image::Magick->new;

$image->Read($infile);

$image->Resize(geometry=>'70x');

$image->Write($outfile);

