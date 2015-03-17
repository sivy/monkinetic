Title: DropDownMarkBox
Date: 2012-09-25 10:48

I really like [Scriptogram](http://scriptogr.am) so far, but some aspects of the experience seriously have me considering writing my own hosted <span title="Dropbox + Markdown">DropDownMarkBox</span> blogging engine.

For my 2600+ posts, synchronization takes *forever*. I know that the Dropbox API supports a `/delta` call that will only return changed file references, so on that side it shouldn't be a big deal. During an erring request for my Scriptogram home page, I saw an unstyled page with a reference to a `steveivy.tar.gz` file; I deduce that after building, Scriptogram is compressing my site and moving it to a separate server. Not a bad technique, but adds to publishing times.

So, on my commute this morning, while half-listening to Build & Analyze, I was thinking about how I'd write a DropDownMarkBox engine:

* I'd read the initial file list from Dropbox, then break the list into chunks and read the file data in parallel (depending on API rate limits and such) using many small workers.
* I'd store the delta hash and make sure to only call `/delta` thereafter to make sure that I'm only pulling new content when publishing
* I'd have a `/delta` call running periodically so that I can auto-publish.
* The read/process workers would store individual post content in a datastore and a cache like memcache.
* Indexes (home, archives, etc) would get built and cached as well as needed, and only when needed (based on the datetimes on changed posts)
* Template changes would be rendered in parallel as well; No content would need to be pulled from Dropbox, I'd just run over the user's posts and re-render the cached Markdown.

I think this would scale at least somewhat bit better than Scriptogram *seems* to. I can't say why Scriptogram is as slow as it is, I just have theories, and I'd have to run some tests on large collections of Markdown files (I'd love to try it out on a collection of 5k - 10k posts).