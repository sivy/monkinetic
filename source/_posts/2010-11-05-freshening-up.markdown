---
title: "Freshening Up"
layout: post
tp_urlid: "6a010534988cd3970b013488af86ae970c"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2010/11/freshening-up.html"
---
As I look forward to [what's next](http://www.monkinetic.com/2010/10/say-goodbye.html), my brain has been nudging me to do some homework. My development time in the last couple of years has been spent deep in Movable Type's guts, making our workhorse do things that aren't... natural.

Now I'm working on getting my brain back into full-stack mode. It seems appropriate that a competent web developer today should at least understand the full web "stack": be able to develop a useful storage schema, know how that stored data gets to the middle tier, how to get the results of the logic in the middle tier to the page, and some interesting things that can be done with it there. 

In other words, a decent web generalist. Few of us work on the whole stack, but I think we ought to be able to have a useful conversation with someone focusing on any of the areas we're *not* focused on.

So, I'm in refresh mode. Some things I'm doing to exercise the ol' brain:

### Build out a simple service in node.js

I'm building a [simple url shortener](https://github.com/sivy/node-short) (the new Hello World?) in [node.js](http://nodejs.org/). Node isn't brand new, but it's interesting, and does some things in ways I've not tried before. In particular, it is focused on rarely blocking execution, so that requests are processed at [ludicrous speed](http://www.youtube.com/watch?v=mk7VWcuVOf0).

I'm also playing with [mongodb](http://www.mongodb.org/), a document database in the [NoSQL](http://en.wikipedia.org/wiki/NoSQL) vein, which, like node, uses javascript and JSON natively. I don't have an opinion on it yet, but it's fast and the idea of storing whole (denormalized) documents is fascinating.

### Finally start learning HTML5 and its Ilk

The front end for node-short (see above) is basic HTML5, and I've finally started reading up on what that actually means and on some of the more geeky bits like [Web Sockets](http://dev.w3.org/html5/websockets/) and [Web Workers](http://www.whatwg.org/specs/web-workers/current-work/). Not much to report as I haven't been playing around with them for long, but I think these two are going to continue to enable even richer "rich UIs" by allowing front-end developers access to more data in a more timely manner.

### What Else?

I'm also just reviewing a few non-perl (mostly python) projects I've worked on, just so I can get as many synapses firing as possible; there are code paths in my brain that need refreshing and re-wiring!
