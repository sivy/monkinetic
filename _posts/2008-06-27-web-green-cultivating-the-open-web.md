Slug: web-green-cultivating-the-open-web
Date: 2008-06-27
Title: "Web &quot;Green&quot;: Cultivating The Open Web"
layout: post

It's been a while since I've posted about what's going on in the [DiSo community](http://diso-project.org), and I had started to prepare a list of recent developments to share, but on the way I felt that there was a theme I wanted to address first.

The DiSo Project is first and foremost about enabling/creating a new category of social-networking-enabled websites, not restricted to the large silos but grown organically at the edges of the web - the small and independent sites that are the forerunners and foundations of the communities we now enjoy. How can we best provide a fertile environment, one that encourages, protects, and nurtures this growth?

<p style="margin: 0pt 0pt 8px 12px; padding: 1px; float: right; width: 161px; color: #666666;">
<a href="http://redmonk.net/archives/2008/06/26/web-green-cultivating-the-open-web/"><img  alt="" class="size-medium wp-image-2729 at-xid-6a010534988cd3970b0120a5b36a31970c " height="223" src="http://steveivy.typepad.com/.a/6a010534988cd3970b0120a5b36a31970c-pi" title="Web Green: Cultivating The Open Web" width="159" /></a>
<span style="font-size: 70%; font-family: Verdana,Arial,sans-serif;"><a href="http://www.pygment.com/blog/2006/06/06/grass-sky/">grass image from pygment.com</a> for whose proprietor I cannot find contact information.</span>
</p>

## Fertile Foundations

One theme that's been cropping up on the conference circuit lately, thanks to [Chris Messina][1], [Dave Recordon][2], [Jeremy Keith][3], and [others](http://kveton.com/blog/2008/06/06/im-for-the-open-web/), is this idea of "[building the open web](http://daveman692.livejournal.com/335417.html)". The internet (based on public, open technical standards), and the early <abbr title="World Wide Web">WWW</abbr> (based on public, open hypertext formats and protocol specifications), gave "the web" we know its heart and soul. How did that happen, and what will perpetuate the process?

[1]:http://factoryjoe.com/blog
[2]:http://daveman692.livejournal.com
[3]:http://adactio.com/journal

Like sediment in a river, or potting soil in a greenhouse, each layer we put down supports and affects the ecosystem that grows out of it. We take IP, ethernet, and their like completely for granted - they've been standardized and implemented across a worldwide network. That layer is foundation and fertilizer for the next: HTTP, SSL, HTML, XML, and the feed variants that have become the everyday building blocks of our applications and services. These are now settling into the foundation for the services we're building now: near-real-time publishing and social software stacks. These, in turn, will provide for what comes after, and the philosophical foundations we build into this layer will profoundly affect the health of the next.

## Building the Open Web

So for the next ecosystem of social and community applications to thrive, we need to make sure that these aspects - public, freely-implementable formats and open standards - are a part of the web as we know it now. Thankfully, it's happening - witness the growth of open, enabling technoliges like:

* [Microformats][4], basic specs for marking up machine-readable data in human-readable web pages (XFN, hCard, hCalendar, hAtom, hEtc)
* [OpenID][5], open identity solution for web services
* [OAuth][6], an HTTP-based protocol for authentication between services
* [XRDS-Simple][7], which provides discovery for various web services and makes inter-app cooperation that much easier.
* [XMPP][8], a real-time, distributed messaging system that can be integrated into other services.

[4]:http://microformats.org
[5]:http://openid.net
[6]:http://oauth.net
[7]:http://xrds-simple.net
[8]:http://www.xmpp.org/

All these are publicly developed and freely implementable, and [active](http://microformats.org/wiki) [communities](http://wiki.openid.net/Main_Page) have [evolved](http://groups.google.com/group/oauth/topics?hl=en) [around them](http://www.xmpp.org/about/discuss.shtml) to discuss, implement, and evangelize them. This is what building the open web is about: collaborating to build a web that is larger than any company or organization - a web that will encourage new growth.

## New Growth







So, given all the effort we're putting into creating a web that is fertile ground for what's coming next... what's coming next? Here's a look at a few areas DiSo is focusing on as we work on the building blocks of the distributed social network:

### Identity

OpenID has focused a lot of attention on putting the User's online identity back under their control. Rather than maintaining an account on each and every site they use, the User can maintain one or more OpenID accounts, using them as credentials on any of the 10,000+ sites that accept an OpenID for registration and login. With the technology in place, we turn our attention to [what identity means](http://www.identitywoman.net/?p=771), how much of that identity we're [willing to share](http://diso-project.org/wiki/permissions "Profile Permissions"), and [with whom](http://diso-project.org/wiki/contacts-brainstorming "Contacts").

### Activity

Since the mid 90's we've been working on the problem of how to [track](http://en.wikipedia.org/wiki/Trackback "Trackback") what our friends and contacts are [doing online](http://www.mybloglog.com/), and figure out where the stuff that's really interesting and relevant to us is happening. Look at the [social network](http://myspace.com) [silos](http://facebook.com), and you'll see that a huge part of what they offer users is the ability (or at least impression) that the user can know what their friends are up to. Sites like [Twitter](http://twitter.com) and [FriendFeed](http://friendfeed.com) are making progress on bringing this activity tracking into the light, but to really distribute it all there's still a lot of work to do.

Here at the edges, we're making it easy to agregate [your](http://plugins.movabletype.org/action-streams "Action Streams for Movable Type") [own activity](http://singpolyma.net/plugins/actionstream/ "DiSo Action Streams"), and working on ways to track/follow updates of your friends activity in near-real-time.

### Messaging

With OpenID providing a common form of identity, we've begun looking at what services can be enabled using that endpoint. One of the services we're exploring is [distributed messaging](http://diso-project.org/wiki/messaging-brainstorming "Messaging") - friend requests, subscription requests, and direct messages - directed to that endpoint, authenticated via OAuth, and filtered by a messaging service based on user preferences.

## Cultivating the Open Web

As the builders - or growers - of this web, it's our responsibility to look beyond the IPO, beyond the ad-sell, beyond the current crop of buzzwords. We must decide that we're going to invest in, and give back to, the ecosystem that has supported us. Think of it as Web "Green" - protecting and nurturing and stewarding the web ecology.
