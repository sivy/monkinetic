Slug: preserving-the-link-economy-in-the-age-of-url-shorteners
Date: 2010-06-15
Title: Preserving the Link Economy in the Age of URL Shorteners
layout: post


## Links: The Only Currency on the Web

[Adam Curry once said](http://scripting.com/2002/02/26.html#l6100cc3978113e871e9f5e5d4566aa5e) "Links are the only true currency of the web" (hat tip to [Dave Winer](http://twitter.com/davewiner/status/16251262547)). When we link to other sites, we're giving value, and our own content may accrue value over time as inbound links increase (or not). Google's famous "PageRank" practically codified the idea by weighting search results based on those inbound links.

These days that value is being made real as the commercialization of the web continues, and the social network services that we pour our hearts (and links!) into are no exception. Google targets ads to us based on our profiles, [our email](http://gmail.com), [our searches](http://adwords.google.com/). Facebook shows us more ads based on our posts, our likes, our friends posts, ad nauseum. Twitter -- yeah, [it's coming](http://blog.twitter.com/2010/04/hello-world.html).

But this isn't about ads - that's another topic. This is about the fact that generally, we expect that our content - our tweets, our blog posts, our comments, etc - will be passed along as is. They're our words, right? And some of those words may be links. I mean, it is the web here. But that expectation may not be long for this world, based on Twitter's recent announcement that they're going to be wrapping (i.e. re-writing) links in our tweets to route through their own internal URL shortener. This will allow them to find and prevent links to malware and other spam and scams, but it also means that in some ways our content is no longer our own. For example, it means that the version of your tweet [in Google's realtime index](http://googleblog.blogspot.com/2009/12/relevance-meets-real-time-web.html) will be Twitter's link, not yours.

## Short Links and Spam

It's true, that url shorteners have been used to hide links to sites containing phishing scams, spam and actual malware. This works because not only do [users not read](http://www.useit.com/alertbox/9710a.html), they especially don't read that string of mysterious characters in the browser's address bar. But the solution is not to take control of an entire ecosystem of links.

By implementing a system that uses a combination of personal [perma-short-links]((http://www.monkinetic.com/2010/05/tantek-celik-diso-20-brass-tacks.html) and [rel=shortlink](http://microformats.org/wiki/rel-shortlink), Service Providers have no (malware-related) reason to route *every* link on the service through their own shortener. The components are already in place to allow publishers to provide their own shortlinks for content and link it to the content, and for Service Providers to validate those links. Consider this flow:

<a href="http://www.flickr.com/photos/redmonk/4702982743/" title="Shortlink Validation by steve-ivy, on Flickr"><img src="http://farm5.static.flickr.com/4005/4702982743_84dba892ac_b.jpg" width="366" height="591" alt="Shortlink Validation" /></a>

1. Publisher creates a new page/article, including a <link> element with the [rel=shortlink](http://microformats.org/wiki/rel-shortlink) microformat with the page's [perma-short-link](http://www.monkinetic.com/2010/05/tantek-celik-diso-20-brass-tacks.html)
2. Publisher posts a message on Twitter, Buzz, etc. linking to the article with the perma-short-link.
3. The Service Provider, in the interest of link safety, resolves the shortlink and looks for the rel=shortlink <link> tag in the resolved page, showing that the published shortlink is valid.
4. If the shortlink is found, then the shortlink can be trusted (assuming the page itself has been checked for malware, etc, and can be vouched for) and the message should be published as-is by the service provider.
5. If the shortlink cannot be validated, then the link should be wrapped for security reasons and the message published with the wrapped link.

What I'm describing has been hashed out on the [microformats wiki](http://microformats.org/wiki/rel-shortlink), [Google code](http://code.google.com/p/shortlink/wiki/Specification), and various mailing lists some time ago, and there are even [large publishers implementing](http://en.blog.wordpress.com/2009/08/14/shorten/) rel=shortlink. And bringing more publishers and content systems online with these tools is one part of the solution.

In light of the [dust-up](http://www.google.com/buzz/dclinton/JKoWPTAAyvw/More-thoughts-on-URL-shorteners-This-post-explores) over Twitter's recent announcements, it's worth pushing publishers to implement perma-short-links and rel=shortlink on their side. And it's important that we press Twitter, the other social messaging systems, and content aggregators in general to respect those links and leave our content alone.

