if ($] < 5.006) {
    print "1..0\n";
    exit;
}


print "1..2\n";

require IO::String;

#$IO::String::DEBUG++;

$io = IO::String->new("foo");

print "not " unless <$io> eq "foo";
print "ok 1\n";

eval {
    open($io, "String.pm");
};
print "not " unless $@ && $@ =~ /^This handle is tied to IO::String/;
print "ok 2\n";

