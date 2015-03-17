Slug: file-urls-with-xmlhttprequest-in-ie7-are-broken
Date: 2007-02-16
Title: "File:// urls with XMLHTTPRequest in IE7 are broken"
layout: post

I&#39;ve been working again on a tool at work that uses [JQuery](http://jquery.org) to dynamically load various files into the content area of a locally based web page to test css-based templates. The tool was working fine in Firefox and IE6, then I recently &quot;upgraded&quot; to IE7 and it went all wonky on me. After a day or so of Googling, I found this post from Xavier Hanin: [IE7 support for XmlHttpRequest](http://xhab.blogspot.com/2006/11/ie7-support-for-xmlhttprequest.html) which details the fact that *IE7&#39;s XMLHTTPRequest cannot load files from disk* (file:// urls).

I brought it up on the #jquery IRC channel, and John Resig [filed a bug for the issue](http://jquery.com/dev/bugs/bug/963/); the solution is to use the old XMLHTTPRequest ActiveX object instead of IE7&#39;s native one, but I&#39;m unsure if users on Vista with IE7 even have the old version.

More info as I find it.
