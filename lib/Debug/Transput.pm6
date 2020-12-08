unit module Transput;

sub transay (\x) is export(:DEFAULT, :say) {
    say x;
    return-rw x;
}

sub transput (\x) is export(:DEFAULT, :put) {
    put x;
    return-rw x;
}

sub transprint (\x) is export(:DEFAULT, :print) {
    print x;
    return-rw x;
}

