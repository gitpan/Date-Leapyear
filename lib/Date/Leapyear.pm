# $Header: /home/cvs/date-leapyear/lib/Date/Leapyear.pm,v 1.7 2001/12/31 04:03:16 rbowen Exp $
package Date::Leapyear;
use strict;

use Exporter;
use vars qw(@ISA @EXPORT $VERSION);
@ISA = qw(Exporter);

@EXPORT = qw( isleap );
$VERSION = ( qw'$Revision: 1.7 $' )[1];

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
    return 1 if (( $year % 400 ) == 0 ); # 400's are leap
    return 0 if (( $year % 100 ) == 0 ); # Other centuries are not
    return 1 if (( $year % 4 ) == 0 ); # All other 4's are leap
    return 0; # Everything else is not
}

1;

=head1 AUTHOR

Rich Bowen (rbowen@rcbowen.com)

=cut

