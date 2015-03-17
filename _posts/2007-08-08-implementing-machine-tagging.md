Slug: implementing-machine-tagging
Date: 2007-08-08
Title: Implementing Machine Tagging
layout: post

Ok, so last week Jodi and Adelina were off in Colorado (I'm sure [Jodi](http://speakshermind.redmonk.net) will blog it soon), so I was home alone quite a bit. So what did that mean? Hackery!

After [exploring some machine tagging](http://redmonk.net/archives/2007/07/30/using-blogvia/) and some UI bits and pieces for machine tags on the site, I spent some time completely rewriting my machine tagging code. I started with [blog:via](http://machinetags.org/wiki/Blog) as my first machine tag, then quickly added tags for movies in Netflix (netflix:id), books at Amazon (book:isbn) and other Amazon products (amazon:asin). Here's a post with a [blog:via tag and a book:isbn tag](http://redmonk.net/archives/2007/07/26/subtraction-one-book-to-specify-them-all/). And here's one with a [netflix:id tag and an amazon:asin tag](http://redmonk.net/archives/2004/06/11/unbreakable/).

##Implementation

I'll admit, the implementation is still a bit scattered. This blog is powered by [WordPress](http://wordpress.org), so to start with the tags themselves are added to posts via a custom field called 'machinetags' - one entry for each tag:

<img  alt="machinetags-1" class="at-xid-6a010534988cd3970b0120a5b364a4970c " src="http://steveivy.typepad.com/.a/6a010534988cd3970b0120a5b364a4970c-pi" style="border: 1px solid #ccc; padding:1px;" />

WordPress's template tags make it easy to get at those values as an array, which I pass to a WordPress plugin I wrote just for this. The plugin builds the initial display for the related items, adding ids and classes as hooks for the next bit.

<img  alt="machinetags-2" class="at-xid-6a010534988cd3970b0120a5b364b3970c " src="http://steveivy.typepad.com/.a/6a010534988cd3970b0120a5b364b3970c-pi" style="border: 1px solid #ccc; padding:1px;" />

When the page loads, I wrote some javascript (using [JQuery](http://jquery.com)) that attaches custom event handlers to the click events for the "more posts" and "view" links. The handlers fire off ajax calls, so that I'm not making a lot of ajax calls as the page initially loads (which would increase page load times for something that only some readers are going to be interested in).

As you can see here, clicking the links loads related content inline:

<img  alt="machinetags-3" class="at-xid-6a010534988cd3970b0120a5b364be970c " src="http://steveivy.typepad.com/.a/6a010534988cd3970b0120a5b364be970c-pi" style="border: 1px solid #ccc; padding:1px;" />

##Strategies

So far, all my tags live here on this site, attached to my posts. Jeremy Keith [uses this same strategy](http://adactio.com/journal/1276/), and adds a "tags in the cloud" tactic - [assigning <code>adactio:id=...</code> tags to photos on Flickr](http://adactio.com/journal/1277/), then doing a Flickr search to pull in photos when a post is viewed. I may explore this a bit more - I've been thinking about using Amazon's tagging feature to add a <code>monkinetic:id=...</code> tag, then doing the lookup that way, but for products it feels more appropriate to have the hook/tag on this end.

##APIs

Machine tagging is going to succeed or fail on the strength of the APIs that services offer. [Amazon](http://amazon.com), while not being a posterboy for Web2.0, has an amazing REST API that is pretty easy to work with once you get the hang of it. (I'm using a technique that - acronym alert - runs Amazon's XML output through an XSL stylesheet hosted on my server via Amazon's own XSLT service to produce JSON.) I use it for looking up books as well as any other product Amazon offers.

[Netflix](http://netflix.com), on the other hand, has *no API*, and I had to resort to figuring out the URLs that use Netflix's internal movie ID to make a link to the site and grab the cover thumbnail. I would love to actually show the movie title and average rating, but there's no api for it.

I also looked at [IMDB](http://imdb.com) but could not find even so much as a predictable way to devine a movie poster image from an IMDB title id, so while I may add <code>imdb:title=...</code> tags to some of my posts, I won't be able to provide related content inline. This is really a pity, as both Netflix and IMDB are probably afraid that if they provide easy access to their content via an API, competitors might use it to disrupt their market. Well, that might be the case, but there are a LOT of us out here who would love to send traffic to both Netflix and IMDB in more interesting ways.

##If you love something...

As [Dave says](http://www.scripting.com/stories/2007/08/03/lockinAndTheWebDay2.html):

&gt;People will only trust a service that gives them complete freedom to come and go as they please. Further, they'll want to come back if you send them to cool places.
