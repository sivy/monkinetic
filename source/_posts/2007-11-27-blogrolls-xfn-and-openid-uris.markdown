---
title: "Blogrolls, XFN, and OpenID URIs"
layout: post
tp_urlid: "6a010534988cd3970b0120a5b36bc4970c"
tp_favoritecount: 0
tp_commentcount: 4
tp_permalink: "http://www.monkinetic.com/2007/11/blogrolls-xfn-and-openid-uris.html"
---
While writing [Whitelisting With OpenID and XFN](http://redmonk.net/archives/2007/11/25/making-a-list-whitelisting-with-openid-and-xfn/), I started thinking about what kind of work would have to go into implementing these ideas in Wordpress. One of the roadblocks I ran into was that in Wordpress (and Drupal, probably, and most other similar systems) links only support a single URI (not surprisingly). In order to support OpenID whitelisting, we need a unique identifying URI for an XFN contact - which may or may not be the same as the blog/site URI that you'd want to list in a blogroll.

I thought about trying to hack the support in myself, but after browsing through the 4 or 5 different files that would require patching, as well as adding database support, I decided I haven't the experience with Wordpress nor the time to do it right. But I'd like to discuss this with someone who has the Wordpress expertise to give this a shot. Would be nice if it were a plugin, so we don't have to hack the core code.

Any takers?
