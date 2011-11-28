---
title: "Stuck In The Far East Without A Compiler"
layout: post
tp_urlid: "6a010534988cd3970b0120a5b368c7970c"
tp_favoritecount: 0
tp_commentcount: 1
tp_permalink: "http://www.monkinetic.com/2007/11/stuck-in-the-far-east-without-a-compiler.html"
---
Seeing as [I've been in Vladivostok, Russia for a week and a half now](http://speakshermind.redmonk.net) adopting our second (and incredibly precious) daughter, this is going to sound remarkably petty. But I'm a geek and it's been driving me nuts.

Before we left I loaded up my Mom's PowerBook G4 with the applications I needed for communication - Firefox, Mailplane, Quicksilver, our .Mac account, etc. I installed [Textmate](http://macromate.com), checked out the source for [mofo](http://mofo.rubyforge.org) (I'm working on some XFN additions) and figured I was set.

The trouble, of course, was that I did not test out my rig before leaving. Since bringing Sophie back to the hotel from the baby home, I've had some down time to do some coding, and discovered that I had forgotten to load the the actual ruby gems for mofo and [Hpricot](http://code.whytheluckystiff.net/hpricot). When I ran <code>gem install mofo -y</code> I discovered that Mom's PowerBook does not have the dev tools installed and therefore could not build the native extension for Hpricot. KAAAAAHHHHHHHN!!!!!!

Ok, this can be overcome, I thought to myself. I tried contacting a few people (the 18 hour time difference to the States is a killer) and finally get a hold of [Matt Gemmell](http://mattgemmell.com) who was kind enough to go through the process of installing rubygems, then mofo and hpricot, then packaging up his gems directory and sending it all over.

30 minutes after starting I load up <code>irb</code> and try:

  irb(main):017:0&gt; require 'rubygems'
  =&gt; true
  irb(main):018:0&gt; require 'hpricot'
  /usr/local/lib/ruby/gems/1.8/gems/hpricot-0.6/lib/i686-linux/hpricot_scan.bundle: 
  [BUG] Bus   Error
  ruby 1.8.6 (2007-03-13) [universal-darwin8.0]

  Abort trap
  ~ azivys$

Oh, man, Murphy must HATE me.

Matt was on a PPC mac, but was running [Leopard](http://apple.com/macosx), so I don't know if that was the issue, or what. But I'm stumped, and while I've gotten some code written, it's code I can't run or test, which sucks.

So, I've got the call out to another friend, but don't know if I'm going to be able to get this going before it's time to come home (Saturday). Ironically, I've spent about 3x the brain cycles trying to solve this than I would have writing the code I planned to write in the first place.

*Sigh*.
