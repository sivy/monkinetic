Slug: on-a-roll-statsd-from-perl
Date: 2011-02-18
Title: "On a Roll: StatsD from Perl"
layout: post


Apparently I'm having too much fun -- I've posted a perl client for Etsy's StatsD [on Github](https://github.com/sivy/statsd-client).


    use Net::StatsD::Client;

    my $client = Net::StatsD::Client->new();

    $client->timing('perl_test.timing',500);
    $client->increment('perl_test.inc_int');
    $client->decrement('perl_test.decr_int');

