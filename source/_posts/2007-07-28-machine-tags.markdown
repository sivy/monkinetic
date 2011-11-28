---
title: "Machine Tags"
layout: post
tp_urlid: "6a010534988cd3970b0120a5b36c02970c"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2007/07/machine-tags.html"
---
[Jeremy Keith](http://adactio.com/journal) and I had a [geeky chat](http://twitter.com/adactio/statuses/171510982) this morning about machine tags, rel=tag, and the like.

A while back I was thinking about [how to encode "via" information](http://redmonk.net/archives/2007/07/09/tracking-via-blog-post-attributions-citations-and-miscellany/) in a blog post/tag, so that eventually I'll be able to do more interesting things with where I'm getting my links/inspiration. Jeremy and I talked then as well, and the idea of using a machinetag came up, and we came up with a format:

<code>blog:via=&lt;permalink&gt;</code>

Since then I've tagged a few posts with this format, but haven't been really comfortable with mixing the machinetags in with my usual tags (I confess mostly this was because they did not break properly and made my layout look janky). So I pinged Jeremy and we talked it over. Eventually [he gave me the piece of information I was missing](http://echoloquation.com/post/6939803): *[machinetags](http://machinetags.org/) are not related (no pun intended) in any way to [rel=tag](http://microformats.org/wiki/rel-tag)*. They just happen to confusingly share the label "tag".

Aha! This freed me to implement my machine tags separately from the normal post tags, as you can now see on [this post about the FontBook](http://redmonk.net/archives/2007/07/26/subtraction-one-book-to-specify-them-all/). In this case I created a [WordPress](http://wordpress.org) custom field for them. I may continue to tweak the presentation a bit, but I like what I've got.

Further Reading:

 * [Machinetags.org wiki](http://machinetags.org/wiki/Main_Page)
 * [Machine tags and ISBNs](http://clagnut.com/blog/1907/)
 * [Machine Tags: Tagging Revisited](http://allinthehead.com/retro/307/machine-tags-tagging-revisited)
 * [Adactio: Ghost in the Machine Tags](http://adactio.com/journal/1274/)
 * [Flickr API](http://www.flickr.com/services/api/flickr.photos.search.html) - by which some of these machine tags are gaining usefulness
