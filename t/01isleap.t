
use strict;
use Test;
use Date::Leapyear;

BEGIN { plan tests => 11 }

# 1900
ok( isleap(1900), 0 );

# 1901
ok( isleap(1901), 0 );

# 1902
ok( isleap(1902), 0 );

# 1903
ok( isleap(1903), 0 );

# 1904
ok( isleap(1904), 1 );

# 2000
ok( isleap(2000), 1 );

# 2001
ok( isleap(2001), 0 );

# 2004
ok( isleap(2004), 1 );

# 1984
ok( isleap(1984), 1 );

# 1985
ok( isleap(1985), 0 );

# 1972
ok( isleap(1972), 1 );

