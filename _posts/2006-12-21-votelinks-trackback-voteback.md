Slug: votelinks-trackback-voteback
Date: 2006-12-21
Title: "VoteLinks + Trackback: VoteBack"
layout: post

I learned about [VoteLinks](http://microformats.org/wiki/vote-links) from <a href="http://adactio.com/journal" rev="vote-for">Jeremy Keith</a>&#39;s post on [24Ways](http://24ways.org/2006/boost-your-hyperlink-power), and posted yesterday about some css+javascript VoteLink UI experiments.

Well, I got to thinking about it, and while having the votelink on this site (or any other) is nice, how can the linked site be notified about the intention of the incoming link?

Well, most blog engines are supporting [Trackback](http://www.sixapart.com/pronet/docs/trackback_spec) now, which does allow one blog post to notify another of the link. [One version of the spec](http://www.lifewiki.net/attachments/view/101/2.2) (I could not determine which is the canonical version) states:

&gt;Clients MAY choose to include name=value pairs in addition to those described above. Servers SHOULD ignore any such properties that it does not understand.

If this is the case, then it should be easy to extend a trackback with a new name=value pair: votelink=&lt;value&gt;. The receiving site could then capture the intention of the link and can store/track/display agreement metrics on incoming links. My first thought on the receiving site UI was to divide incoming trackbacks into two columns - Agree/Disagree. Another idea from my local [usability expert](http://rhjr.net) was a simple horizontal bar chart showing the same metrics.

I&#39;ve started working on a wordpress implementation of these ideas. I hacked the incoming trackback code to look for a votelink=&lt;value&gt; pair and append &quot;(Agreeing)&quot; or &quot;(Disagreeing)&quot; to the Author&#39;s name field. If you want to test it, send a trackback (you may have to do it manually or hack your own implementation) to this post with an additional &quot;&amp;votelink=vote-for&quot; (or &quot;&amp;votelink=vote-against&quot; ;-) )

Update: I&#39;ve currently moved my target from Trackback to Pingback, though there are advantages to both. The main advantage to Pingback is that when I post, Wordpress can be configured to ping any sites I&#39;ve linked to in my post. Part of that process includes parsing the remote post for the link that pointed to this site, so hopefully I can hook into that functionality to check the incoming links for rel=&quot;vote-*&quot; attributes. Trackback does have the advantage of being an easily extensible REST-like interface though, so I&#39;ll likely loop back around on that in the future.
