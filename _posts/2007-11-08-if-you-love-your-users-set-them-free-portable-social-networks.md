Slug: if-you-love-your-users-set-them-free-portable-social-networks
Date: 2007-11-08
Title: If You Love Your Users, Set Them Free -- Portable Social Networks
layout: post

> If you love something, set it free

> If it comes back to you, its yours

> If it doesn't, it never was

> -- Author Unknown

These wise words graced the wall of my childhood home in Virginia Beach, VA, along with a generic painting of a seagull. (Why anyone would want to keep a seagull was beyond me.) However, in today's web the words ring true all over again.

Social networks are popping up faster than weeds, and [user fatigue](http://blog.jonudell.net/2007/02/06/critical-mass-and-social-network-fatigue/) is already setting in. One of the solutions (the most "Don't Be Evil" in my opinion) comes in the form of a discussion of [Portable Social Networks](http:// microformats.org/wiki/social-network-portability) - the idea that social networking sites should allow users' data to be portable between sites. This idea comes in two parts:

1. Allow users to import their data from a source they trust in the form of an [hCard](http://microformats.org/wiki/hCard), and their existing contacts in the form of [XFN](http://microformats.org/wiki/XFN)-linked hCards.
2. Optionally publish user's data in these same formats so that if they lose interest, they can move on.

Part 2 used to scare people running sites, but it's becoming the de-facto standard and is becoming expected behavior (see [Twitter](http://twitter.com), [Flickr](http://flickr.com), [dopplr](http://dopplr.com), etc.) Data lock-in is considered in very poor taste now.

Surprisingly, part 1 is still finding its way into apps, though it would go a long way toward making users feel that they and their time are respected. A few sites are doing a good job of making it easy for users to bring their data with them. Dopplr.com, though in private-beta right now, is getting good reviews for a registration process that offers the user the option of importing their profile data from a variety of other social sites, and also offers to match up the users contacts from those sites with (and this is an important point) *users already in the Dopplr system*. Let's cut down on the social-network-invite SPAM while we're at it, mmmkay? Dopplr as even gone as far as [publishing code](http://code.google.com/p/identity-matcher/).

## Portable Social Network Lib

As a [couple folks](http://www.brianoberkirch.com/2007/11/01/open-social-web-now-4/) have discovered, I've started a project for a ruby library called, surprisingly, [Portable Social Network Lib](http://redmonk.net/projects/portable-social-network-lib).

PSNlib is quite early in its life (and I've been distracted by an adoption and by adding some stuff to mofo to make building PSNlib easier) but it has two goals:

1. Make it easy for a ruby-based app to add hCard+XFN import to an existing model layer, and
2. Make it easy to publish user profile and contact/friend information as hCard+XFN

Eventually, I'd like to see OpenID/OAuth mixed in in some way as well. [Kevin Lawver](http://lawver.net/archive/2007/07/17/h12_portable_social_networks_at_mashup_camp.php) has started some cool stuff in that area, and I'm going to keep my eye on it.

## Outstanding Issues

It's after 2 AM in Vladivostok, Russia, and the whole point of this post was to get down some issues I'm having in implementation so I could STOP thinking about them. So in no particular order, here are some things that are bugging me:

### Mixed data: XFN+hCard

When parsing an XFN list and you want to look for hCard data for those contacts along it, what is a good parsing strategy? [lab.backnetwork](http://lab.backnetwork.com/xfnhcardpagination/) (another site experimenting with XFN+hCard importing) uses:

 <code>&lt;li class="vcard"&gt;&lt;a rel="friend coworker"&gt;&lt;span class="first-name"&gt;Co-worker&lt;/span&gt; &lt;span class="last-name"&gt;Friend&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;</code>

This is thorny because while mofo/hpricot makes finding the XFN relationships easy, it would take some working around the default behavior to figure out that the XFN relationship was wrapped in an hCard (class="vcard"). Likewise, I'm unsure of the recommended practices when publishing XFN contact list data with hCard data mixed in with it.

### XFN pagination

<code>rel="next"</code> or <code>rel="me next"</code>? [lab.backnetwork](http://lab.backnetwork.com/xfnpagination/) uses <code>rel="next"</code> but [microformats.org](http://microformats.org/wiki/hcard-xfn-supporting-friends-lists#Implement_hCard_XFN_supporting_friends_lists) recommends <code>rel="me next"</code>.

## Wrapping Up

That's all I have energy for today, but if you have thoughts or ideas, please leave them in the comments. Thanks!
