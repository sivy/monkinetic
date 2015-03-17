Slug: java-rss-continued
Date: 2002-08-17
Title: Java RSS, continued
layout: post

On Jim&#39;s excellent suggestion, I spent yesterday porting <a href="http://inessential.com">Brent Simmons</a>&#39; <a href="http://ranchero.com/cocoa/rss/">Obj-C RSS parser</a> class to Java. It was fairly easy, since I had the basic structure to go by. Also, I could use <a href="http://www.jdom.org">JDOM</a> instead of the Carbon CFXML apis for XML parsing. (JDOM is a very Java-friendly API for XML).

It took me one day to port the code and to get it to compile, now I need to test it. I&#39;ll probably start small, then try it out on some of the feeds at <a href="http://www.syndic8.com">Syndic8</a>.

Once this is working and tested, I&#39;ll release it under the same BSD license as Brent&#39;s.
