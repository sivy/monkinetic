Slug: twitter-down-and-i-didnt-know-about-it
Date: 2008-04-23
Title: Twitter down, and I didn't know about it
layout: post

<a href="http://www.xmpp.org/about/"><img  alt="Extensible Messaging and Presence Protocol" class="alignright size-medium wp-image-2712 " height="76" src="http://redmonk.net/mt/mt-static/uploads/2008/04/xmpp.png" title="XMPP" width="74" /></a>

B/c Twitter is frowned on at work, I don't visit and did not know until last night that there was an ongoing outage in progress. Dave [has one plan for a route-around](http://www.scripting.com/stories/2008/04/22/howToDecoupleFromTwitterNo.html), I've got another:

It's been discussed extensively elsewhere, but I'll repeat it here: I think what might do the trick is to start federating Twitter using XMPP. Twitter uses XMPP internally, and some very interesting federating work was done in the halls at Social Graph Foo Camp between Blaine Cook (Twitter) and Ralph Meijer (Mediamatic). A network of XMPP servers, implementing PubSub (and possibly [PEP](http://www.xmpp.org/extensions/xep-0163.html) should be able to subscribe to the message stream from Twitter and vice-versa. Then when Twitter is up, Twitter users can follow me and see my updates, and I can follow them and see their updates. When Twitter is down, anyone on my service or on a peer service will still see my updates.

The competition comes in the form of add-on services/features: Twitter has SMS integration, [Dave](scripting.com) would probably offer RSS integration (RSS-to-XMPP for example), etc.

So, knowing how long this has been discussed, what's the holdup?
