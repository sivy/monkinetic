---
title: "Autorelease Hell"
layout: post
tp_urlid: "6a010534988cd3970b0120a5b3606c970c"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2003/06/autorelease-hell.html"
---
I&#39;m working on a new app in my limited spare time. It&#39;s an OS X app, and this post is geeky, so you can move along is that&#39;s not your bag.

Ok, so I&#39;ve got things working pretty smoothly, but after all my app launch code is done executing, and the app is loading it&#39;s NIBs, I get a &quot;EXC_BAD_ACCESS&quot; during objc_msgSend right after the function NSPopAutoreleasePool gets called.

I know this is something I&#39;m releasing too many times, but for the life of me I can&#39;t figure out how to find out what it is that is being autoreleased here.

I&#39;d appreciate any help from any <a href="http://www.stone.com/StoneLog/">seasoned</a> <a href="http://www.pycs.net/bbum">Cocoa developers</a>! smile
