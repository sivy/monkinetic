---
title: "Log-a-lyzing"
layout: post
tp_urlid: "6a010534988cd3970b0120a5b363ee970c"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2003/03/log-a-lyzing.html"
---
I&#39;ve got opus (my dual 200 linux box) chewing through 96mb of apache logs, doing reverse DNS lookups, and combining the separate files into a single file I can feed to <a href="http://awstats.sourceforge.net">AWStats</a> (I&#39;m using the logresolvemerge.pl script included with awstats). The combined file is up to 218mb right now!

Once I&#39;ve got my old logs in awstats&#39; database I&#39;ll set this machine up to download the log for <a href="http://www.redmonk.net">each</a> of the <a href="http://speakshermind.redmonk.net">sites</a> I&#39;m <a href="http://www.ivyarchpc.com">responsible</a> for each night and run the analyzer on them.
