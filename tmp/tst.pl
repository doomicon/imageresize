#!/usr/bin/perl
#require './lib/subarg';
sub args {
        my ($in, $out) = @_;
        printf "$in\n";
        print "$out\n";
} #return 0;


args('/etc/hosts','/etc/hosts.new');

