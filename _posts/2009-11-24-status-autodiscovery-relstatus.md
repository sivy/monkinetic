Slug: status-autodiscovery-relstatus
Date: 2009-11-24
Title: Status Autodiscovery (rel=status)
layout: post

    <link rel="alternate" type="application/rss+xml" title="RSS"
          href="url/to/rss/file">

7 or so years ago, the web community pretty much finalized the way that we were going to link from an HTML page to a subscription formatted version of same. This was called [RSS Autodiscovery](http://diveintomark.org/archives/2002/06/02/important_change_to_the_link_tag) and it made the jump from "wow I like this person's writing" to "I want to read everything this person writes here" a one-step process. Later on we added a variant for Atom feeds:

     <link rel="alternate" type="application/atom+xml"
           href="url/to/atom/file">

I was thinking this morning, while tending my garden of subscriptions, that it would be nice if [Jeremy Keith](http://adactio.com/journal)'s website could tell me his Twitter handle as well as his feed location. (Yes, I know it's [@adactio](http://twitter.com/adactio) - it's an example, ok?) This got me thinking about autodiscovery, and, as I mentioned in my [tweet](http://twitter.com/steveivy/status/6007756225), to an implementation idea:

    <link rel="status" type="text/html"
          href="http://twitter.com/steveivy" title="twitter">

It's not just for [Twitter](http://twitter.com):

    <link rel="status" type="text/html"
          href="http://identi.ca/steveivy" title="status.net">

[Update] And, lastly, combined with [rel=me](http://microformats.org/wiki/rel-me) for [identity consolidation](http://microformats.org/wiki/identity-consolidation) (thanks [Jeremy](http://adactio.com/journal)):

    <link rel="me status" type="text/html"
          href="http://twitter.com/steveivy" title="twitter">

This would make the process of getting from "I like this person's writing" to "I want to follow this person's status updates" a much shorter distance.

This is about the simplest possible implementation - I can also imagine adding this sort of information into the web of [meta-documents](http://hueniverse.com/2009/03/conceptual-outline-for-xrd-based-openid-discovery/) - but this gets us there today. I'd like to see support for this (or something like it) built into [Tweetie](http://www.atebits.com/tweetie-mac/), [Seesmic](http://seesmic.com/), etc.

Just as feed autodiscovery let us just paste just about any blog url into a feed reader to subscribe to an author's blog, status autodiscovery could do the same for following their status updates.

P.S. The `rel` value could be applied to normal hyperlinks as well:

    <a href="http://twitter.com/steveivy"
       title="me on twitter" rel="status">@steveivy</a>

I have no idea what that would be used for, but that's why I have smart readers like you.

P.P.S. I've added my twitter status `<link>` to this site.

P.P.P.S. Added rel=me version thanks to Jeremy's reminder, and added to the [microformats wiki on rel brainstorming](http://microformats.org/wiki/existing-rel-values#brainstorming).
