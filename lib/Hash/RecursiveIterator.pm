use utf8;

package Hash::RecursiveIterator;

use base qw(Hash::Iterator);
use strict;
use warnings FATAL => 'deprecated';

sub new {
  my $self = shift;
  $self->SUPER::new(@_);
}

# Returns true if an iterator can be created/returned for the current entry.
sub hasChildren
{
  my $self = shift;
  my $current = $self->peek_value;

  return ref $current;
}

# Note: getChildren() must return a RecursiveIterator or class derived from RecursiveIterator for the current entry.
sub getChildren()
{
  my $self = shift;
  my $subarray = $self->peek_value;

  return Hash::RecursiveIterator->new($subarray);
}

1;

=pod

=head1 NAME
    
    IRecursiveIterator
    
=head1 SYNOPSIS

    to indicate an example of use of the program
    
=head1 DESCRIPTION
    
    program description
    
=head1 AUTHORS

    Created by vladislav.mirkos on 23.10.2017.

=cut

1;