unit module Transput;

sub transay (\x) is export(:DEFAULT, :say) {
    say x;
    return x;
}

sub transput (\x) is export(:DEFAULT, :put) {
    put x;
    return x;
}

sub transprint (\x) is export(:DEFAULT, :print) {
    print x;
    return x;
}

