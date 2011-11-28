---
title: "Making a list: Whitelisting with OpenId and XFN"
layout: post
tp_urlid: "6a010534988cd3970b0120a55ce85b970b"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2007/11/making-a-list-whitelisting-with-openid-and-xfn.html"
---
This weekend I ran across a post on Tim Berners Lee's blog (the [Giant Global Graph](http://dig.csail.mit.edu/breadcrumbs/blog/4) - Groan), but what got my attention was a previous post by Dan Connoly about the [social-network-based whitelist](http://dig.csail.mit.edu/breadcrumbs/node/206) they've developed for commenting on the [Decentralized Information Group](http://dig.csail.mit.edu) blog.

In less than a nutshell, the DIG is using the relationship data in their members' <a href="http://www.foaf-project.org/"><acronym title="Friend of a Friend">FOAF</acronym></a> files to build a whitelist of users (identified by their [OpenID](http://openid.net/)) who can comment on the site.

##Decentralized Information Group, OpenID+FOAF Whitelist

In [FOAF and OpenID: two great tastes that taste great together](http://dig.csail.mit.edu/breadcrumbs/node/206), Dan writes about the system the DIG devised to whitelist comment authors:

&gt; In more detail, you can comment on our blog if:<br>You can show ownership of a web page via the OpenID protocol.<br>That web page is related by the foaf:openid property to a foaf:Person, and<br>That foaf:Person is listed as a member of the DIG group in http://dig.csail.mit.edu/data, or<br>related to a dig member by one or two foaf:knows links.

[Sean Palmer](http://inamidst.com/whits/2007/10#whitelist) has a deeper, very interesting description of the process that went into the system, and [Shahan Khatchadourian](http://vannevarvision.wordpress.com/about/) [describes how it works for a new user](http://vannevarvision.wordpress.com/2007/11/02/want-to-comment-on-tim-berners-lees-blog-heres-how/)

Mapped out, the system looks something like this:

<img  alt="foaf_openid_whitelist" class="at-xid-6a010534988cd3970b0120a55ce863970b " src="http://steveivy.typepad.com/.a/6a010534988cd3970b0120a55ce863970b-pi" style="margin:8px 0; padding:1px; border:1px solid #ccc;" />

To be added to the site's comment whitelist, either the green or blue path must be satisfied: User A has to be either identifiable (via OpenId) as a DIG member (<code>foaf:Person</code> matches in the [DIG member data](http://dig.csail.mit.edu/data)) or another DIG member must "claim" User A (User A is identified via OpenID and their <code>foaf:Person</code> is related via <code>foaf:knows</code> to the known DIG member).

##OpenID+XFN (+Wordpress?) Whitelist

So tonight I got to talking to [Chris Messina](http://factoryjoe.com/blog/) about DIG's system (he pointed me to Simon Willison's [efforts back in January at whitelisting via OpenID](http://simonwillison.net/2007/Jan/22/whitelisting/)) and wondered if we couldn't build a similar system with a little less propeller-head factor using <acronym title="XFN">[XFN](http://microformats.org/wiki/xfn)</acronym> instead of the semantically pure but pragmatically awkward FOAF.

In order to make something like this work, it seems that the flow would work like this:

1. You can show ownership of a web page via the OpenID protocol.
1. That web page contains your hCard, or a [symmetric](http://gmpg.org/xfn/faq) XFN rel="me" link to a separate page with your hCard
1. The URI of your hCard is listed in the service's membership data, OR
1. The URI of your hCard is listed in the XFN of a member of the service with an XFN relationship of "acquaintance" or better ("better" is subject to definition, based on the [XFN profile](http://gmpg.org/xfn/11)).
1. You get added to the service's whitelist

This is very rough, but mapped out it looks something like this:

<img  alt="xfn_openid_whitelist" class="at-xid-6a010534988cd3970b0120a55ce868970b " src="http://steveivy.typepad.com/.a/6a010534988cd3970b0120a55ce868970b-pi" style="margin:8px 0; padding:1px; border:1px solid #ccc;" />

As before, to be added to a site's whitelist, either the green or blue path must be satisfied. I think that a system like this for Wordpress (for example) could be built out of mostly existing parts, starting with the [Wordpress OpenID Plugin](http://wordpress.org/extend/plugins/openid/) (newly 2.0). (Chris has [more notes on a wordpress plugin](http://factoryjoe.pbwiki.com/wp-openid-whitelist).)

My thinking here is rough, and probably contains quite a few holes, so I'm trusting that those more knowledgable that I will point out flaws in my thinking or new directions.

UPDATE: A conversation with [Paul Walsh](http://segala.com/blog/) and [Simon Willison](http://simonwillison.net/) sprang up in the comments on Pauls' post, ["Identity" the most widely misused term by Internet experts](http://segala.com/blog/identity-the-most-widely-misuse-term-by-internet-experts/). Paul makes a decent case (and Simon agrees) that saying OpenID "proves identiy" is misleading - nothing is proven and no Trust is asserted. OpenID *provides* a form of identity ("I can prove I own this URI") that particpants have agreed to. Thanks to Paul and I've updated my diagrams accordingly.
