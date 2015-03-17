Slug: tracking-via-blog-post-attributions-citations-and-miscellany
Date: 2007-07-10
Title: "Tracking &quot;via&quot;: Blog post attributions, citations, and miscellany"
layout: post

I found myself today re-titling, converting to markdown, and tagging about 150 blog posts that came over from [this site&#39;s days on Editthispage.com](http://web.archive.org/web/*/http://redmonk.editthispage.com), when each day was a post and every day was titled &quot;Redmonk.News&quot;. While doing so I got to thinking about how I attribute links to various sources. Mostly I used the common idiom, the word &quot;via&quot; and the name of the blogger/source, with a link to the site or post where I found the link/idea.

I remembered some stuff I&#39;d read about [machine tags](http://machinetags.org) (or triple tags), something [Flickr](http://flickr.com) got some attention for [implementing recently](http://www.flickr.com/groups/api/discuss/72157594497877875/). Machine, or triple, tags, are essentially [tags](http://technorati.com/tags/) in the format <code>namespace:key=id</code>. This makes it something relatively easy for a computer (machine) to parse and do interesting things with (maybe more on that later).

So I started wondering how to encode the &quot;via&quot; information I wanted. My first thought (pre machine-tags) was a tag like <code>via:bajooter</code>, which works well as a memory jogger but not much else. Then <code>blog:via=bajooter.com</code>, which is a proper machine tag and uses the proper site domain. After a [brief chat](http://echoloquation.com/post/5330411) with [Jeremy Keith](http://adactio.com/journal), I settled on <code>blog:via=http://bajooter.com/archives/biz-love-local-the-concept</code> (using the actual permalink).

So then I start to think about how it might be used, and I started to wonder if this really adds that much to the blog-o-web-o-sphere, or if Technorati is already doing a good enough job tracking links? Thoughts? Reply in the comments (basic registration required - damn spambots).
