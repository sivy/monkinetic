---
title: "More From Radio Conversant"
layout: post
tp_urlid: "6a010534988cd3970b0120a5b35c48970c"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2002/01/more-from-radio-conversant.html"
---
I&#39;ve started working on some <a href="http://www.redmonk.net/907">enhancements</a> to <a href="http://xmlrpc.free-conversant.com/radioconversant/index">Radio Conversant</a>.

These enhancements include a page that goes in your www folder, called &quot;getConvMessage.txt&quot;. They also include two rpc scripts, &quot;getMessage&quot; and &quot;setMessage&quot;, as well as a version of &quot;sendOutline&quot; for messages.

It works like this: I&#39;ve added an &quot;Edit In Radio&quot; link to my template that links to <font size="-1">http://127.0.0.1:5335/getConvMessage?zoneId=myZone&amp;convId=myConv&amp;msgId=theMsgNum</font>

Click the link, and the page I added to the www folder gets run by <a href="http://radio.userland.com/">Radio Userland</a>. It fetches the message, massages it into an outline, then returns a message to tell you to switch to RU to edit your message. then pick &quot;RadioConversant &gt; Messages &gt; Save Message&quot; to send it back. All done!

BTW - you DO have to be a conversation admin in order for this to work. My &quot;Edit In Radio&quot; link is wrapped in a &quot;userIsConvAdmin&quot; conditional.
