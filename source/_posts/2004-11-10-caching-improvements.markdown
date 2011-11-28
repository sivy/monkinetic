---
title: "Caching improvements"
layout: post
tp_urlid: "6a010534988cd3970b0120a5b36729970c"
tp_favoritecount: 0
tp_commentcount: 2
tp_permalink: "http://www.monkinetic.com/2004/11/caching-improvements.html"
---
I&#39;ve been seeing some performance losses on this site recently, between the search engines and the spambots, and more load on the T1 I&#39;m behind, so (on <a href="http://truerwords.net">Seth</a>&#39;s excellent suggestion) I hacked |WordPress| to never send no-cache headers (which it was sending on requests of every kind). You should see a bit more zippiness from the site now.
