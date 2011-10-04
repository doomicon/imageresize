#!/usr/bin/perl
#Name:  thumbgen.pl
#Desc:  Generate thumbnail sized images from full product images.
#Author:  Rob Owens
##Change##
#initial:rowens/100411
#
#Notes:
#Development Env:
#ImageRoot:/var/www/html/images
#Full:/var/www/html/images/full
#Thumb:/var/www/html/images/thumb
#
#estore.savtira.net width=70
#
# PerlMagick Methods
#my($image, $x);
#
#$image = Image::Magick->new;
#$x = $image->Read('Blood_for_Blood_God_by_NachoMon.jpg');
#warn "$x" if "$x";
#
#$x = $image->Resize(geometry=>'70x');
#warn "$x" if "$x";
#
#$x = $image->Write('Blood_thumb.jpg');
#warn "$x" if "$x";
#
#
#
#my $FullDir = "/var/www/html/images/full";
use Image::Magick;
require './lib/imagelib';

my $FullDir = '/home/rowens/repos/imageresize/html/images/full';
my $ThumbDir = '/home/rowens/repos/imageresize/html/images/thumb';

opendir(D, "$FullDir") || die "Can't opedir $FullDir: $!\n";
my @tmpfull = readdir(D);
closedir(D);

#print "@full";



foreach $tmpfile (@tmpfull) {
	printf "PRE:  $ThumbDir/$tmpfile\n";
	next if ( -e "$ThumbDir/$tmpfile");
	printf "PST:  $ThumbDir/$tmpfile\n";
	push(@full, "$tmpfile");
}
#
foreach $file (@full) {
	resize("$FullDir/$file","$ThumbDir/$file"); 
#system("./rsze_tmp.pl", "$FullDir/$file","$ThumbDir/$file");
}
