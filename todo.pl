#!/usr/bin/perl
use strict;
use warnings;
my $reading;
#my $fiststring='+PID,';
#my $laststring=':';
my $tmpva=0;
my $tmpsum=0;
open(INFILE,'<','test.txt') or die "can not open the source file";
open(OUTFILE,'>','out.txt') or die "can not open the out file";

while($reading=<INFILE>)
{
    if($reading=~/\s*S*PID,(\S*):S*/)
    {
        print OUTFILE "$1\n";
        $tmpsum=$tmpsum+$1;
        print "$1\n";
        #print "\n";
    }
#print $tmpsum;
#print "\n";

}
print "tmp sum = $tmpsum\n";
close INFILE;
close OUTFILE;
