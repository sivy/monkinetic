---
title: "Own Your Data, Cont\'d"
layout: post
tp_urlid: "6a010534988cd3970b0147e1a4b780970b"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2011/01/own-your-data-contd.html"
---
There's been some talk lately in social software circles about how to take back ownership of your data: ie, how to make sure that the content and data you create and share cannot be lost or destroyed by a particular service shutting it's doors.

[Dave Winer](http://scripting.com) and [Tantek &Ccedil;elik](http://tantek.com), two professional nerds and thinkers I admire a lot, are tackling the problem from different directions, and I'm really glad to see it. Variety is the spice of life, and the stuff of systems that survive.

Tantek has been working on a personal publishing platform he calls [Falcon](http://tantek.pbworks.com/w/page/21743425/Falcon). Eventually Falcon will include microblogging, blogging, photo sharing, geo-location data, etc. The core idea is that you create your content locally (on your server), and that's where the "canonical" version lives. Then the software pushes it out (syndicates it) to the web services everyone else is using. Ideally, the syndication and messaging technologies will be adopted that will allow comments, favorites, and other forms of feedback to be aggregated back to the home server.

Dave is also working on something similar, but based almost entirely on RSS. But the component I'm seeing from Dave that I really like is his [EC2 for Poets](http://scripting.com/stories/2011/01/16/ec2ForPoetsV2.html) project. This is a project to define a server instance for EC2 that anyone can purchase and run on Amazon's hosted computing platform, all set up and ready to go. This will be the foundation of Dave's publishing platform, but I love that he's starting from the ground up, knowing that the first step to running your own site/publishing environment is having a place to run it from.

Both lines of exploration are vitally important -- defining the technologies that will allow us to freely create while retaining ownership of our data, and paving the on-ramps that will give us a place to do it.
