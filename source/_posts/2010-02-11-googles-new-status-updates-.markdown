---
title: "Google\'s New &lt;link>: Status Updates "
layout: post
tp_urlid: "6a010534988cd3970b01287790fe5f970c"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2010/02/googles-new-status-updates-.html"
---
*WARNING: Massively Nerdy Content Alert*

More exciting for me than yesterday's announcement of [Google Buzz](http://google.com/buzz) was today's announcement by Brad Fitzpatrick ([mailing list post](https://groups.google.com/group/webfinger/browse_thread/thread/fb56537a0ed36964) and [tweet](http://twitter.com/bradfitz/status/8973024231)) that Google has just turned on [webfinger](http://webfinger.org) support for all Google Profile / Gmail names.

So, I downloaded my webfinger doc ([pasted here](http://pastie.textmate.org/820489)) and took a look. Most of it is as expected, but, with the launch of Google Buzz, Google has added a new `<link>` rel to the mix: 'updates-from'. It looks like this:

    <Link rel='http://schemas.google.com/g/2010#updates-from' 
        href='http://buzz.googleapis.com/feeds/115863474911002159675/public/posted' 
        type='application/atom+xml'
    />

It's a link to an Atom feed of updates - really, a status feed, in the general micro-blogging sense of the term. It's almost exactly what I was evangelizing in my [Status Autodiscovery](http://www.monkinetic.com/2009/11/status-autodiscovery-relstatus.html) post a couple months ago, and it's awesome to see someone doing something about it. (I'm not claiming any influence AT ALL over Google's decision here, just noting the similar solution to the problem of status discovery). Note that Google linked to the updates feed itself, which I think is a better idea than my more general approach of linking to the updates pages on [Twitter](http://twitter.com/steveivy) or [identi.ca](identi.ca/steveivy). In addition, the Buzz update feed is an Activity Streams feed, though it's also valid Atom (as the mime-type suggests).

Obviously, the next logical step (hopefully) is for Google to give us a way to set the value of that connection to Twitter, or Identi.ca, or some other source of updates. With that, we can really see the "decentralized, standardized, open, Free, free... protocols" vision that Brad describes come to life.
