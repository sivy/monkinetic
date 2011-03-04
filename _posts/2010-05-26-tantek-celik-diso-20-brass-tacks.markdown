---
title: "Tantek Celik on DiSo 2.0: Down to Brass Tacks"
layout: post
tp_urlid: "6a010534988cd3970b0134819cb4f2970c"
tp_favoritecount: 1
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2010/05/tantek-celik-diso-20-brass-tacks.html"
---
Several months ago I published the first part of an interview series with ([recent mozilla hire](http://news.cnet.com/8301-13577_3-20005987-36.html)!) [Tantek &Ccedil;elik](http://tantek.com) about his in-progress ideas about what he calls "DiSo 2.0". This is the next part of that series, and the third article in a series on the [The Future of DiSo](http://www.monkinetic.com/2010/02/the-future-of-diso.html).

>I think all of these big changes (and several smaller ones) have made it clear that we need to update the notion of what a DiSo implementation should both look like and do. -- [Interview: Tantek Celik, Conceptualizing DiSo 2.0](http://www.monkinetic.com/2010/03/interview-tantek-celik-conceptualizing-diso-20.html)

So, onto part 2 of my interview with Tantek, in which we start discussing the "brass tacks" of the technologies we might consider DiSo 2.0:

## DiSo 2.0: Technologies

In your initial post/tweet about DiSo 2.0, you tossed out a list of 10
peices of technology/technique that you saw as foundational to the
next iteration of the distributed social environment we've labeled
"DiSo". We've talked some about your vision for DiSo -- now I'd like
to focus in on some of the technologies you're building on
(conceptually and in code).

### #1 personal site+shortlink domains

**Steve Ivy:** The foundation for DiSo continues to be a personal site - whether
self-hosted or otherwise. This sort of goes to the core idea of your
web presence being your own, and you're not just "share-cropping"
(http://en.wikipedia.org/wiki/Sharecropping) for a corporation. Can
you expand on this idea and how having your own shortlink domain fits
in?

**Tantek &Ccedil;elik:** Historically the need for "short" URLs is not new.  But what we mean by "short" has certainly changed a lot recently.

Old email systems would wrap text at 80 characters (or a few less) and make it just harder enough to reliably reconstruct or use URLs that many systems adopted a common practice of keeping URLs to 70 characters or less by design.

This was fundamentally usability driven.

Shorter URLs in email are easier to use and more reliable.  They're nicer in IM too.

And browser screenshots. I've retyped URLs from screenshots in slides, I'm sure many of you have too.

How about print? Ever typed in a URL from a book?

Or advertising.  Magazine spreads or billboards - URLs are ubiquitous.

The easier to read and type-in, the more folks visit the URL.

But again, this is nothing new.  Ever since the dotcom boom URLs have become a part of our visual language (much to the chagrin of linguists I'm sure).

Then Twitter rewrote our brains to think in 140 characters and suddenly every one of them counted.

And two things happened:

1. URL shortener services showed up which would trim any URL down to a small handful of characters, saving your precious tweetspace for your own words.  Everyone started using them. Twitter and clients started auto-shortening URLs.

2. We started to understand just <a
href="http://joshua.schachter.org/2009/04/on-url-shorteners.html">how fragile these shorteners are</a>, and how they break the web. How many shortener sites have died taking their links with them to the bit bucket? Even tr.im, which is keeping the lights on longer than others, is set to shut down in 2010.  It was frustration with tr.im's downtimes and then end-of-service announcement that led me to this realization: *It's not good enough to have your own URL; You need to have your own shortener as well.*

This isn't just for independents.  Companies and hosting services should have their own too. The first big site to realize and <a
href="http://laughingmeme.org/2009/04/03/url-shortening-hinting/">do this right was Flickr</a>, and many have followed.

The key here is that when you own and host your own shortener for links to your content, you're not adding any more fragility to web. If your shortener goes down, your site probably is down as well.  They're tied together.  No additional risk. Unless you use a database for the shortenings and you lose your database because you were unwilling (or unable) to pay the DBA tax to maintain it. We'll talk more about the DBA tax problem in due time.

But why is it important to own the shortened links to your content? Why not just always share your full "long" URLs?

In short:

1. You can't always do so. E.g. Twitter now auto-shortens many URLs.
2. Shorter URLs tend to be better for sharing (for all the reasons
discussed at the top).

And that #2 is where we get to DiSo.

A couple of the key architectural components of DiSo 2.0 are:

1. Publish on your own site, own your URLs, your permalinks, and
2. Syndicate *out* to other sites. Your text updates to Twitter, your
checkins to Foursquare, your photos to Flickr etc.

The direction of the content flow is very important here, as it has to do with ownership, and what's the original vs. what's just a copy.

It's ok to sharecrop copies, especially when the copies link back to your original.  That's called distribution.

It's not ok to sharecrop the original and aggregate copies on your own site.  You're still sharecropping and you're still beholden/vulnerable to those 3rd party sites going down, censoring your content, renaming you, or being blocked by some nationwide internet filtering firewall.

Now some folks think the "aggregate all your stuff out there onto your own site" approach is the way to go, and frankly, this is definitely something worth exploring, because it's probably easier to build.

On the one hand you've got vaporkickstartware like Diaspora (talking about "scraping Twitter and Flickr") on the other hand there are actual shipping implementations, like <a
href="http://plugins.movabletype.org/action-streams/">Movable Type's "Action Streams" plugin</a>. It's actually quite a nice piece of work, and doesn't look half bad at that. You can see it live on the personal sites of <span class="vcard"><a class="url fn" href="http://markpasc.org/mark/">Mark Paschal</a></span> and <span class="vcard"><a class="fn url" href="http://davidrecordon.com/">David Recordon</a></span>. MT Action Streams explores many of the user interface issues around activity streams - issues that need exploring, regardless of which way the content is flowing.

But it's not DiSo. Any aggregation-based solution is still beholden
(vulnerable) to the silos where you sharecrop your content.

In a DiSo solution, when you syndicate your content out to other
sites, the key is that those syndicated copies of your content link
back to the original.  Permalinks serve this role for blog posts.  For
short text updates that you syndicate to Twitter or Identi.ca etc.,
you need perma-short-links.  And that's where your own shortener is
essential.

### #2 algorithmic URL shortener

**SI:** So, when I hear "algorithmic" here I assume you mean "dependably
reversible" - that you can get from the shortlink to the full link
using an algorithm, not just looking it up in a big key-value map,
right? Why is this a foundational part of DiSo?

**T&Ccedil;:** One of the key emphases of the DiSo 2.0 I've outlined is
*maintainability*.  Fewer moving parts, fewer magic hidden files,
fewer things that can inexplicably fail = more independents
succesfully running and owning their own sites, identities, web
presences over time.

Nearly all (maybe all?) open source URL shorteners today use a
database to store the pairs of "short code" and "actual URL".  If you
lose that database, forget to back it up, have some bad database code
that corrupts it etc., your shortlinks are gone, dead, useless.

If instead you create and use a URL shortener to create shortlinks
that are algorithmically reversible, and then document that algorithm,
publicly, then *anyone* can figure out how to expand your shortlinks.
If they happen upon them on some random site, they can expand them and
look for the original, or at least know that you're linking to the
same thing that a normal permalink somewhere else is expressing.

In addition, all manner of browser or aggregator tools and sites that
currently have to manually resolve shortlinks by calling the APIs of
their services can save the bandwidth and time and simply decode your
URLs themselves.

Once again, Flickr set a very good example with their http://flic.kr/
<a href="http://laughingmeme.org/2009/04/03/url-shortening-hinting/">shortener
for Flickr photos</a>.

In fact, their doing so inspired me within days to grab http://ttk.me/
and set it up to redirect to my site http://tantek.com/, knowing I
would eventually (as I have) add various shortening services to it.

Similarly I encourage every independent out there, everyone who wants
to install and/or run their own DiSo implementation (like Falcon), to
go ahead and not just grab a domain name for themselves, but also grab
a shortener domain too.  Set it up to redirect to your primary domain
for now.

Two more things that Kellan got right in the Flickr shortener which
I've also found inspiration in:

1. just a "/p/" to indicate "Photo" presumably (clever idea to prefix
like that to allow for other prefixes to do other things)
2. and then a Base58 compressed photo id.

Regarding 1, I've also settled on one-character "spaces" for different
types of URLs. "p" for photo makes sense to re-use. After quite a bit
of personal research into what types of content are different enough
and used often enough to warrant their own short URL spaces, I've come
up with about 20 different content types, each with their own letter.
I've decided to release them mostly as I implement them.

Here are a few examples from my content-type short codes:

* `b` - blog post, article (structured, with headings), essay
* `i` - identifier - on another system using subdirectories as system id spaces
 * `i/i/` - compressed ISBN numbers
 * `i/a/` - compressed ASIN numbers
* `p` - photo
* `t` - text, (plain) text, tweet, thought, note, unstructured, untitled

I decided to keep my text note "t" shortener as short as possible,
which meant dropping a trailing "/".

After that I use a 3 digit sexagesimal (Base60) number to represent
the date in a manner deliberately limited to human individuals.  Why
Base60?  Lots of reasons, including print-safety (as mentioned above).
 Want to read the entire derivation and reasons why?  See
<http://tantek.pbworks.com/NewBase60> (includes open source CASSIS
implementation).

Why 3 sexagesimal digits to represent the date?  It turns out that 3
sexagesimal digits are capable of representing over 500 years of days
- plenty overengineered for any human lifetime.  And if anyone does
figure out how to live more than 500 years I have a feeling that
person will not only not resemble human as we know it very much, but
will either have bigger problems to deal with than URL shortener
limitations, or will be so smart that they will come up with a better
solution.

But for now, for our feeble less than 200 year lifetimes, this is good
enough. In addition we can even agree on a day zero that computes well
with existing platforms.  Unix Epoch start: 1970-01-01. Given that
no-one published anything to the web before 1990, I think we're ok
with that. What happens in a few hundred years? Perhaps people can
pick their own day zeroes as they see fit.

Thus the 3 characters after the "t" represent the number of days since
1970-01-01 in sexagesimal - what I'm calling "epoch days".

Finally I allow for 1 (or 2, but haven't needed it yet) more
sexagesimal digit to indicate the nth ordinal post of that type for
that day.  Thus:

`http://ttk.me/tSSSn`

* `SSS` = sexagesimal epoch days
* `n` = nth post that day

This is sufficient to expand to:

`http://tantek.com/YYYY/DDD/tn/`

* `YYYY` = year
* `DDD` = day of the year (see related: http://en.wikipedia.org/wiki/ISO_8601#Ordinal_dates )
* `n` = nth post that day

Which I then redirect server-side to a longer URL with post keywords
(AKA "slug") on the end.

E.g.

`http://ttk.me/t4432`

is

* `t` - text note
* `443` - 443(base60)th epoch day = 2010, the 34th day of
* `2` - 2nd text note that day

thus expands to:

`http://tantek.com/2010/034/t2/`

which is enough for Falcon to retrieve the post in the hAtom store, where it also gets the keyword/slug phrase for the post, and uses it to redirect it to:

`http://tantek.com/2010/034/t2/diso-2-personal-domains-shortener-hatom-push-relmeauth`

---

Thanks, Tantek!

There's more to come as we continue to explore the Future of DiSo. *Stay tuned...*

See also:

* [
Interview: Tantek Celik, Conceptualizing DiSo 2.0](http://www.monkinetic.com/2010/03/interview-tantek-celik-conceptualizing-diso-20.html)

Update: I've written a quick perl implementation of the algorithm described in this post:

* [TinWhistle](http://www.monkinetic.com/2010/05/newbase60.html) - perl URL shortener library based heavily on Tantek's ideas, and significantly on his [cassis.js](http://cassisproject.org) code.
