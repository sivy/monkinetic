Slug: blearyeyed-analysis-of-twitters-linkwrapping-plans
Date: 2010-06-10
Title: Bleary-Eyed Analysis of Twitter's Link-Wrapping Plans
layout: post


This is going to be short and only partially thought-out, since I'm currently suffering from deployment-induced sleep deprivation, but that's not important now.

Twitter recently announced that they are going to start [wrapping all links in tweets](http://blog.twitter.com/2010/06/links-and-twitter-length-shouldnt.html) with their own short urls, on the [t.co](http://t.co) domain. Ostensibly, this is "to detect, intercept, and prevent the spread of malware, phishing, and other dangers." Some initial thoughts:

### The Man-in-the-Middle

[Twitter](http://twitter.com) is now taking full control, and responsibility, for the content of pages linked in tweets delivered by the service. Today that means malware, phishing scams, etc - all good things to be filtered out - but what will it mean tomorrow?

### Better UI for Shortened Links

Twitter intends to provide more information about a shortened link in the UI, a goal I can fully get behind.

>...it could be displayed to web or application users as amazon.com/Delivering- or as the whole URL or page title. Ultimately, we want to display links in a way that removes the obscurity of shortened link and lets you know where a link will take you.

But they don't need a url-wrapper to do that. Exhibit A is this example from [identi.ca](http://identi.ca/notice/35536518):

<a style="display: block;" href="http://www.flickr.com/photos/redmonk/4686830508/"><img class="asset  asset-image at-xid-6a010534988cd3970b0133f084fdf2970b" alt="image from www.flickr.com" title="image from www.flickr.com" src="http://steveivy.typepad.com/.a/6a010534988cd3970b0133f084fdf2970b-800wi" border="0"  /></a>

### Bit.ly

[Bit.ly](http://bit.ly) is clearly in Twitter's sights:

>We are also looking to provide services that make use of this data, an example would be analytics within our eventual commercial accounts service.

### RT Immunity?

It looks like [retweets are immune](http://twitter.com/rsarver/status/15762778744) from the wrapperness? (This is from Ryan Sarver's stream, one of the accounts for which the new t.co shortner is turned on.)

<a href="http://www.flickr.com/photos/redmonk/4686847382/" title="Twitter / Ryan Sarver: RT @chrismessina: Just ena ... by steve-ivy, on Flickr"><img src="http://farm5.static.flickr.com/4071/4686847382_a55bcbd8f0_o.png" width="313" height="189" alt="Twitter / Ryan Sarver: RT @chrismessina: Just ena ..." /></a>

### Effect on Archives

In general, URL shorteners may be limiting the lifespan of archived microblogging content. I'm thinking about stuff in search engine indexes, [the Internet Archive](http://archive.org), etc. If those indexers aren't storing the data structure *behind* the tweet, notice, whatever, and how to interpret it, then swaths of our links may die one day in one fell swoop when short URL services finally succumb to market consolidation. By inserting itself into potentially every tweet, Twitter is (as I've said) taking on a lot of power/responsibility.

### Personal Perma-Shortlinks

If you're a publisher (and I count anyone with a web presence be it casual or commercial),  I do think that this is another opportunity to ask yourself: "who owns your links?", and look at building a [personal permalink/shortlink system](http://www.monkinetic.com/2010/05/tantek-celik-diso-20-brass-tacks.html) that is under your control. The link landscape is shifting fast, moves like Twitter's are going to shake out some of the players, and you don't want all the links back to your content to die with one of the players.
