package Date::Leapyear;
use strict;

use Exporter;
use vars qw(@ISA @EXPORT $VERSION);
@ISA = qw(Exporter);

@EXPORT = qw( isleap );
$VERSION = ( qw'$Revision: 1.6 $' )[1];

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

#{{{ CVS History

=head1 HISTORY

    $Log: Leapyear.pm,v $
    Revision 1.6  2001/08/07 00:26:29  rbowen
    Updating version number for new release

    Revision 1.5  2001/08/04 02:02:04  rbowen
    Added LICENSE
    Removed 'warnings' from Leapyear.pm so that it will run on earlier
    Perl 5's.

    Revision 1.4  2001/08/02 00:51:42  rbowen
    There's no reason to require 5.6

    Revision 1.3  2001/07/24 15:59:29  rbowen
    Changed the leapyear algorithm to be a little more readable. Moved
    tests to Test::More.

    Revision 1.2  2001/06/04 03:48:34  rbowen
    The readme file was apparently copied over from another project. Oops.

    Revision 1.1.1.1  2001/06/02 11:51:13  rbowen
    date-leapyear

=cut

#}}}

=head1 AUTHOR

Rich Bowen (rbowen@rcbowen.com)

=cut

