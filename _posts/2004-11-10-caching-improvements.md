Slug: caching-improvements
Date: 2004-11-10
Title: Caching improvements
layout: post

I&#39;ve been seeing some performance losses on this site recently, between the search engines and the spambots, and more load on the T1 I&#39;m behind, so (on <a href="http://truerwords.net">Seth</a>&#39;s excellent suggestion) I hacked |WordPress| to never send no-cache headers (which it was sending on requests of every kind). You should see a bit more zippiness from the site now.
