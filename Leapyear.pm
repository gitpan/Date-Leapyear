package Date::Leapyear;

require 5.005_62;
use strict;
use warnings;

require Exporter;
our @ISA = qw(Exporter);

our @EXPORT = qw( isleap );
our $VERSION = ( qw'$Revision: 1.02 $' )[1];

=head1 NAME

Date::Leapyear - Is a particular year a leap year?

=head1 SYNOPSIS

  use Date::Leapyear;
  if ( isleap(1945) ) {
    ...
  }

=head1 DESCRIPTION

Date::Leapyear exports one function - isleap - which returns 1 or 0 if
a year is leap, or not, respectively.

=head1 isleap

    $true = isleap( 2004 );

Returns 1 in a leap year, 0 otherwise.

=cut

sub isleap {
    my ($year) = @_;
    return 1 if ( ($year % 4 == 0) &&
        ( ($year % 100) || ($year % 400 == 0) ) );
    return 0;
}

1;

#{{{ CVS History

=head1 HISTORY

    $Log: Leapyear.pm,v $
    Revision 1.2  2001/06/04 03:48:34  rbowen
    The readme file was apparently copied over from another project. Oops.

    Revision 1.1.1.1  2001/06/02 11:51:13  rbowen
    date-leapyear

=cut

#}}}

=head1 AUTHOR

Rich Bowen (rbowen@rcbowen.com)

=cut

