#!/usr/bin/perl
my $FullDir = "/home/rowens/repos/imageresize/html/images/full";
my $ThumDir = "/home/rowens/repos/imageresize/html/images/thumb";
#shift $d;
#my $d = shift;


opendir(D, "$FullDir") || die "Can't opedir $d: $!\n";
my @fulldir = readdir(D);
closedir(D);

foreach my $file (@fulldir) {
#  print "\$f = $f\n";
next if ( -e "$ThumDir/$file");
print "$file\n";
}
