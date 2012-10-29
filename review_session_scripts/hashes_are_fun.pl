#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my $infile = shift;

#Order	Family	Genus	species	gene_family	ngenes

open(my $fh, '<', $infile) or die "a horrible death $!\n";

my %dnmts;

while (my $line = <$fh>) {
	chomp $line;
	my ($order, $family, $genus, $species, $gene_fam, $ngenes) = split ("\t", $line);	
#	$dnmts{$order}{$family}{$genus}{$species}{$gene_fam} = $ngenes;
	my $catty = $order."_".$family."_".$genus."_".$species;
	print $catty, "\n";
}









__END__
foreach my $gene_fam (keys %{$dnmts{"Hymenoptera"}{"Apidae"}{"Apis"}{"florea"}}) {
	my $ngenes = ${$dnmts{"Hymenoptera"}{"Apidae"}{"Apis"}{"florea"}}{$gene_fam};
	print "$gene_fam\: $ngenes\n";
}

close($fh) or die "did not close $!\n";



#foreach my $order (keys %dnmts) {
#	foreach my $family (keys %{$dnmts{$order}}) {
#		print "$order\: $family\n";
#	}
#}

## Find the gene families

foreach my $gene_fam (keys %{$dnmts{"Hymenoptera"}{"Apidae"}{"Apis"}{"mellifera"}}) {
	print $gene_fam, "\n";
}



__END__

print Dumper %dnmts, "\n";

Pull out all the orders in my hash (the list of keys from %dnmts)
foreach my $order (sort keys %dnmts) {
	print "\n$order\n";
}

#print out all the families for the order Hymenoptera

foreach my $family (keys %{$dnmts{"Hymenoptera"}}) {
	print "$family\n";
}



