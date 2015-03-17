Slug: os-x-tip-get-current-airport-ip
Date: 2004-11-19
Title: "OS X Tip: Get Current Airport IP"
layout: post

I got a bit of help from the denizens of IRC (crschmidt, kpried) in creating a little bit of shell code that, when run, will get the current IP address of <code>en0</code> (on my Powerbook that&#39;s the Airport) and 1) put it on the clipboard, and 2) print it out. This should go on one line in your <code>.bash_profile</code>.

<code>alias ip=&#39;/sbin/ifconfig en1 inet | grep inet | sed -e &quot;s/.*inet (.*) netmask.*/1/&quot; | tr -ds &quot;n&quot; &quot;&quot; | tee /dev/tty | pbcopy; echo&#39;</code>

If you&#39;re running tcsh, modify as necessary.
