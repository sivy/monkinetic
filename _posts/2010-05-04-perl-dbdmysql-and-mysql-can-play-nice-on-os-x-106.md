Slug: perl-dbdmysql-and-mysql-can-play-nice-on-os-x-106
Date: 2010-05-04
Title: "Perl, DBD::mysql, and MySQL *can* play nice on OS X 10.6"
layout: post

After 4 days of pain and frustration, I finally got perl, DBD::mysql, and MySQL running smoothly on my new MacBook Pro, which came with Snow Leopard pre-installed. I happened to run across [a post on ServerFault](http://serverfault.com/questions/137581/mac-os-x-10-6-setup-for-apache-mysql-perl) last night and decided to take the time to write up what worked for me as a response, and I'm re-posting it here for my own records:

>I just got a new Mac and have been trying to setup a local development environment for my perl applications for a few days now with no luck. I'm getting no where fast so I hope someone else who has done this successfully could help.


I've spent near 4 days fighting with this issue and here's the setup that finally got me there (read to the end for an update):

* don't use macports
* use the stock perl, with a twist:
    * Snow Leopard ships with **2** perls: `5.10.0` and `5.8.9` - switch to the earlier version like so:

> `% export VERSIONER_PERL_PREFER_32_BIT=yes`

> `% defaults write com.apple.versioner.perl Prefer-32-Bit -bool yes`

> `% defaults write com.apple.versioner.perl Version 5.8.9`

* download the 32bit version of mysql from http://dev.mysql.com/downloads/mysql/ ("Mac OS X ver. 10.6 (x86, 32-bit)")
    * *Find the instructions on Google - I just put the extracted directory in /usr/local and linked /usr/local/mysql to that directory*
* CPAN seems to prefer the 5.10.0-specific install locations, so I downloaded DBD::mysql from http://search.cpan.org and did the usual install:

> `% perl Makefile.PL`

> `% make`

> `% sudo make install`

UPDATE:

* In order to get CPAN to get its config from the right perl version, and to get Apache to run perl CGIs with the right perl version, use the following command instead of the last one in the above list:

> `% defaults write /Library/Preferences/com.apple.versioner.perl Version 5.8.9`

You'll have to be an admin to do this. After this, HUP apache and you'll be all set.


I've long since lost track of the page I found that lead me to Snow Leopard's perl switching magic, but [the perl(1) man page](http://developer.apple.com/mac/library/documentation/Darwin/Reference/ManPages/man1/perl.1.html) explains it:

> Using

> `% defaults write com.apple.versioner.perl Version 5.8.8`

> will make version 5.8.8 the user default when running the both the perl and a2p commands (versioner is the internal name of the version-selection software used).

> To set a system-wide default, replace `com.apple.versioner.perl` with `/Library/Preferences/com.apple.versioner.perl` (admin privileges will be required).
