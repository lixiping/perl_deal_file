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
        $tmpsum += $1;
        print "$1,";
    }
}
print "\ntmp sum = $tmpsum\n";
close INFILE;
close OUTFILE;

#my $orderfile="order$outputfile";
open(INFILE2,'<',$outputfile) or die "can not open in file";
my $read;
my $line;
my @midlei;
my $i;
while($read=<INFILE2>)
{
  $line += 1;
  chomp $read;
  push @midlei ,"$read";
}
#print @midlei;
#print "\n";
my @endorder=sort{$a<=>$b}@midlei;

for($i=0;$i<$line;$i++)
{
print $endorder[$i],",";}
print "\n";
close INFILE2;
