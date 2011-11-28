---
title: "OS X Tip: Get Current Airport IP"
layout: post
tp_urlid: "6a010534988cd3970b0120a5b361e9970c"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2004/11/os-x-tip-get-current-airport-ip.html"
---
I got a bit of help from the denizens of IRC (crschmidt, kpried) in creating a little bit of shell code that, when run, will get the current IP address of <code>en0</code> (on my Powerbook that&#39;s the Airport) and 1) put it on the clipboard, and 2) print it out. This should go on one line in your <code>.bash_profile</code>.

<code>alias ip=&#39;/sbin/ifconfig en1 inet | grep inet | sed -e &quot;s/.*inet (.*) netmask.*/1/&quot; | tr -ds &quot;n&quot; &quot;&quot; | tee /dev/tty | pbcopy; echo&#39;</code>

If you&#39;re running tcsh, modify as necessary.
