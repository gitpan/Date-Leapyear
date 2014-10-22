use Test::More qw(no_plan);

BEGIN { 
    use_ok ('Date::Leapyear');
}


# 1900
ok( isleap(1900) == 0, '1900 is not leap' );

# 1901
ok( isleap(1901) == 0, '1901 is not leap' );

# 1902
ok( isleap(1902) == 0, '1902 is not leap' );

# 1903
ok( isleap(1903) == 0, '1903 is not leap' );

# 1904
ok( isleap(1904) == 1, '1904 is leap' );

# 2000
ok( isleap(2000) == 1, '2000 is leap' );

# 2001
ok( isleap(2001) == 0, '2001 is not leap' );

# 2004
ok( isleap(2004) == 1, '2004 is leap' );

# 1984
ok( isleap(1984) == 1, '1984 is leap' );

# 1985
ok( isleap(1985) == 0, '1985 is not leap' );

# 1972
ok( isleap(1972) == 1, '1972 is leap' );

