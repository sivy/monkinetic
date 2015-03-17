Slug: dave-and-rss-stop-breaking-my-software
Date: 2001-01-20
Title: "Dave and RSS: Stop Breaking My Software!"
layout: post

OK, I didn&#39;t trash Dave before. Now I&#39;m ready to. Dave has made a big deal about <a href="http://backend.userland.com/rss091">RSS 0.91</a> being his format of choice for content syndication. Now he&#39;s developing RSS 0.92 on his own, and writing tools that not only use the new elements of RSS 0.92, but his software has <i>stopped using the tags RSS 0.91 introduced</i>! How are we supposed to join Dave&#39;s &quot;flow&quot; if he swaps out features on us?

Case in point, and the reason for this rant: I&#39;m working on an outline-based RSS reader (to be announced shortly) and decided that I wanted <a href="http://www.curry.com/">Adam Curry&#39;s weblog</a> to be one of my sources. Look at <a href="http://www.ourfavoritesongs.com/users/adam@curry.com/rss/curryCom.xml">this RSS 0.92(d2) file</a> that is on Adam&#39;s site. Now Adam is using Userland&#39;s latest gizmo, a content-thingy that runs on the desktop but uses a web interface. It is generating Adam&#39;s RSS file. RSS 0.91 defines elements for headlines like &lt;title&gt;, &lt;link&gt;, and &lt;description&gt;. Most every other RSS 0.91 file on the planet uses these three elements to describe the news content in their file. Most RSS clients/readers, mine included, assume that they will find at the least a &lt;title&gt; and &lt;link&gt; in there to work with. Common sense would say that the &lt;description&gt; is optional - in fact, so does <a href="http://backend.userland.com/rss091#whatIsAnLtitemgt">Dave</a>.

What do you se in that RSS 0.92 file? Adam&#39;s &lt;item&gt;s (through no fault of his)have only a &lt;description&gt; (with the link embedded as escaped HTML &lt;a&gt; tags) and one of version 0.92&#39;s tags: &lt;source&gt;. Now what, pray tell, are RSS-based tools supposed to do with that?

Dave - stop breaking my software!
