#!/usr/bin/perl
use strict;
use warnings;
#my $inputfile;
print "please enter the file name you wanna to deal(just same fileder)";
my $inputfile=<STDIN>;
chomp $inputfile;
my $outputfile="out$inputfile";
my $reading;
print "please enter first string:";
my $firststring=<STDIN>;#quotemeta("PID,");
chomp $firststring;
print "echo first string:$firststring \n";
print "enter last string:";
my $laststring=<STDIN>;#quotemeta(":");
chomp $laststring;
print "echo last string:$laststring \n";
my $tmpva=0;
my $tmpsum=0;
open(INFILE,'<',$inputfile) or die "can not open the source file";
open(OUTFILE,'>',$outputfile) or die "can not open the out file";

while($reading=<INFILE>)
{
   if($reading=~/\S*$firststring(\S*)$laststring\S*/)
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
