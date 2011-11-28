---
title: "Python, unicode, ascii, encodings"
layout: post
tp_urlid: "6a010534988cd3970b0120a55ce3a3970b"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2003/11/python-unicode-ascii-encodings.html"
---
I&#39;ve been working on a python-based app for a week or so now (on and off) and I&#39;ve run into a spate of problems I don&#39;t know how to handle.

I&#39;m getting RSS data in (I&#39;m told) UTF-8 from the server. It&#39;s aggregated data, so there&#39;s no telling the source. Some of it is international (Japanese I think) and I&#39;m having a crap time getting python to work with it. It oughta work, as I understand it, but all I get is:
<pre>
UnicodeDecodeError: &#39;ascii&#39; codec can&#39;t 
decode byte 0xe2 in position 2: ordinal 
not in range(128)
</pre>
I&#39;ve tried a few things with various encodings, but I&#39;m not grokking something. Anyone with either text encoding or python experience have any ideas?

Oh, all I&#39;m doing with it is pouring it into a template using <pre>UNICODE_TEMPLATE_TEXT % (mystery_text)</pre>
