---
title: "On a Roll: StatsD from Perl"
layout: post
tp_urlid: "6a010534988cd3970b0147e2a7f5e3970b"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2011/02/on-a-roll-statsd-from-perl.html"
---
Apparently I'm having too much fun -- I've posted a perl client for Etsy's StatsD [on Github](https://github.com/sivy/statsd-client).


    use Net::StatsD::Client;

    my $client = Net::StatsD::Client->new();

    $client->timing('perl_test.timing',500);
    $client->increment('perl_test.inc_int');
    $client->decrement('perl_test.decr_int');

