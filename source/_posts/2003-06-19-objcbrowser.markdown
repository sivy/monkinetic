---
title: "ObjCBrowser"
layout: post
tp_urlid: "6a010534988cd3970b0120a5b364e0970c"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2003/06/objcbrowser.html"
---
Fascinating new development environment for building Objective-C Cocoa apps, called <a href="http://cocoadev.com/index.pl?ObjCBrowser">ObjCBrowser</a>, based on a SmallTalk IDE. By Joe Osborn. (Thanks <a href="http://disco.ucsd.edu/blog/2003/06/18#meetOCBrowser">Mike</a>!)

I tried importing a recent project into ObjCBrowser. Interesting ideas, to be sure - but it borked on my project. The project has two targets in it - which it found - but it put the information for target 2 (a bundle) into the &quot;slot&quot; for target 1 (the application) and lost all the real classes for target 1. Bummer. Nevertheless, I&#39;ll be sure to keep my eye on this - Joe&#39;s onto something here.
