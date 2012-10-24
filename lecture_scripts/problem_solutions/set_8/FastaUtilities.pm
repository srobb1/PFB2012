## tell Perl that we're creating a package, not a regular script
package FastaUtilities;

## tell perl that we'll be exporting stuff
use base "Exporter";

## export some functions
our @EXPORT = qw(get_id get_description get_sequence reformat_sequence);

## regex should be in single quotes since we have \
my $regex = '>(\S+)\s?(.*)';

## extract the id from the fasta entry
sub get_id {

  ## get the fasta string ">id description\nseq_chunk\nseq_chunk..."
  my $fasta = shift;

  ## break $fasta into individual lines
  my @lines = split /\n/, $fasta;

  ## the defline will be the first line in the entry
  my $defline = shift @lines;

  ## search the defline with our regex
  $defline =~ /$regex/;

  ## id will be the first subgrouping match
  my $id = $1;

  return $id;

}

## extract the description from the fasta entry
sub get_description {

  ## get the fasta string ">id description\nseq_chunk\nseq_chunk..."
  my $fasta = shift;

  ## break $fasta into individual lines
  my @lines = split /\n/, $fasta;

  ## the defline will be the first line in the entry
  my $defline = shift @lines;

  ## search the defline with our regex
  $defline =~ /$regex/;

  ## description will be the second subgrouping match
  my $description = $2;

  return $description;

}

## extract the sequence from the fasta entry
sub get_sequence {

  ## get the fasta string ">id description\nseq_chunk\nseq_chunk..."
  my $fasta = shift;

  ## break $fasta into individual lines
  my @lines = split /\n/, $fasta;

  ## get rid of the first line (defline) - we don't care about it here
  shift @lines;

  ## join the rest of the array (which is all sequence) as a single string
  my $sequence = join "", @lines;

  return $sequence;
}

## reformat the sequence to user specified number of characters
sub reformat_sequence {

  ## get the fasta string
  my $fasta = shift;

  ## get the line length
  my $length = shift;

  ## get the sequence - we're calling the defined function
  my $sequence = get_sequence($fasta);

  ## use s/// to insert newlines at $length number of character
  $sequence =~ s/(.{$length})/$1\n/g;

  return $sequence;  
}

## must always put "1;" at the end of a package
1;
