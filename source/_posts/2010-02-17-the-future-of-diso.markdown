---
title: "The Future of DiSo"
layout: post
tp_urlid: "6a010534988cd3970b0120a7b1596c970b"
tp_favoritecount: 2
tp_commentcount: 4
tp_permalink: "http://www.monkinetic.com/2010/02/the-future-of-diso.html"
---
<a href="http://diso-project.org"><img src="http://img.skitch.com/20090518-b924raxcdip4qqq2xhdsqf9fkp.png" style="float:right; margin:0 0 10px 10px; border:none;"/></a> Recently [Chris Messina](http://factoryjoe.com/blog), my co-conspirator in the [Diso Project](http://diso-project.org), announced that he's joining Google as an Open Web Advocate. Shortly thereafter, [Will Norris](http://willnorris.com/blog) announced that he, too, had been hired by  Google to work with Chris and [fellow recent hire Joseph Smarr](http://josephsmarr.com/2009/12/18/joseph-smarr-has-new-work-info/) on a new Social Web team.

In [his post announcing this new direction](http://factoryjoe.com/blog/2010/01/07/happy-birthday-to-me-im-joining-google/), Chris wrote:

>I'm still hopeful about the future of my semi-neglected and half dormant [Diso Project](http://diso-project.org)!

I'm still hopeful about the future of *our* project as well (subtle dig. :-)) and that's what I want to talk about now.

## The Once And Distributed Future

Chris and I started the DiSo Project very late in 2007 after I approached Chris with an extended version of his WP-Microformatted-BlogRoll plugin. The initial inspiration was the idea of using the social graph inherent in users' XFN blogrolls as a data-source for whitelisting commenters on a blog ([my DiSo post](http://www.monkinetic.com/2007/12/diso.html), 
[Chris's DiSo post](http://factoryjoe.com/blog/2007/12/06/oauth-10-openid-20-and-up-next-diso/)). Very quickly the ideas started flowing and merging, and we began to start seeing the potential for creating a social network platform driven by [open standards](http://www.flickr.com/photos/56624456@N00/2869986857/) and completely distributed -- no BigCo holding the reins or calling the shots.

We began to attract others in the open web community - Will Norris was the first, as an author of the WP-OpenID plugin, and others followed. Ralph Meier, Anders Conbere, Brian Oberkirch, Scott Kveton, Steven Weber - these folks and many, many more were early contributors to the discussions and ideas that have become the DiSo Project (the mailing list currently stands at ***431*** members!).

## Current Affairs

Since DiSo's inception, there's been a LOT of movement in the Open Web arena, which has simultaneously advanced the goals set forth by the DiSo Project and drawn attention away from them. Individual goals have moved forward in leaps and bounds: the [Activity Streams](http://activitystrea.ms) spec, for example, is approaching 1.0, and has been implemented across many of the large web services providers. [Portable Contacts](http://portablecontacts.net), a format and API for managing your contacts, was championed by Joseph Smarr and Plaxo, and has been implemented by Plaxo, Google, MySpace, Microsoft, and others.

At the same time, the difficult work of defining the glue layers has been going on around [XRDS/XRD](http://hueniverse.com/xrd/), LRDD, [hostmeta](http://hueniverse.com/2009/11/host-meta-aka-site-meta-and-well-known-uris/), and [webfinger](http://hueniverse.com/webfinger/) -- the so-called "Hammer Stack" (after the indefatiguable Eran Hammer-Lahav). These formats and protocols are vital to the process of linking up the various parts that we already have: how do we get from a user's OpenID to her activity stream, or notification center, or &lt;tomorrow's service here>? These discovery formats help answer these questions and have been a core goal of DiSo from the earliest discussions.
    
Notably, however -- the work in many of these areas has been driven by companies like Google, Plaxo, Microsoft and MySpace - large content producers that each have their own reasons and needs in defining how these specs should work and what should be included or excluded. It's awesome, and important, that they are involved, but for the hobbyist it can feel like sitting around while the large companies (with people to send to conferences, meetups, hackathons, mailing lists, etc) define what will be handed down the masses.

I'm not bashing these companies, or people like Kevin Marks, Joseph Smarr, Eran Hammer-Lahav, David Recordon, Martin Atkins, Monica Keller -- they have contributed countless hours and careful consideration to the discussion and development of these standards. But the fact is that indie concerns like code availability, validation services, test suites, etc can get lost in the shuffle while the large providers work out what will be implemented and when.

DiSo was begun with the hobbyist site owner very much as inspiration. The question now is this: with the advent of so many hosted sites/social networks/profiles, what is the best target to guide our efforts? What goals will most benefit *the web as a whole*? Specifically, what should be our goals - both technically and as a community - for the next 1-3 years?

## Looking Forward

Clearly, the large hosting providers are learning lessons about the importance of open standards and an open web.

* Exhibit A: Google Buzz, which for all it's privacy or UI flaws is built on an impressive stack of open, social technologies. They're using Activity Streams, offering OpenID, using webfinger to aid in service discovery, and using the social graph API to autmatically find "claimed" rel=me links. This is the stuff we were envisioning back at Social Graph Foo Camp in early 2008, and Google has finally built it.
* Exhibit B: Google hired Chris and Will and Joseph, showing they are serious not only about open web technologies but about interfacing with the community as well.
* Exhibit C: MySpace provides a ton of Activity Streams data for their users and has been closely involved in that spec's development.
* Exhibit D: Facebook is hiring [awesome](http://daveman692.livejournal.com) [folks](http://montrics.blogspot.com/2010/02/this-is-story-of-girl_12.html) from the Open Web community as part of their "Open Platforms" push.

This is all great news, but there remains some concern in my mind about who is going to represent the independent developers, the hobbyist site operators, and a growing third group: users who are happy not having to run the whole shebang themselves, but who still want to be able to exercise more control over their online presence  and identity.

I see several areas where I believe the DiSo Project should be active over the next couple of years. First, we should continue involvement in standards groups like [microformats](http://microformats.org), [ActivityStreams](http://activitystrea.ms), [webfinger](http://hueniverse.com/webfinger/), [XRD](http://hueniverse.com/xrd/), etc. Secondly, we should be supporting the platforms that independent developers are building on, i.e. Wordpress, Movable Type, [Drupal](http://drupal.org), Django and the like, and especially supporting efforts to build working code that implements these standard protocols. Thirdly, we should be pushing hard for independent validation sites like [feedvalidator](http://feedvalidator.org/), where any implementation can be tested. This is incredibly important as it brings transparency and accountability to the process, and it puts independent implementations on equal footing with Google, Microsoft, Facebook, and the other companies that are so involved in the standards process.

Over the next few weeks I'm going to try and complete a series of shorter posts, expanding some on these goals, and delving a bit more into what technical challenges remain, and how we can begin to think about them.

Lastly, I want to thank Chris Messina and Will Norris in particular for embarking with me on this (perhaps Quixotic) quest to do our part in opening  up the web. And I want to thank every one of the ***430+*** developers, site operators, advocates, and tinkerers who have taken the time to follow - and participate in - our vision.
