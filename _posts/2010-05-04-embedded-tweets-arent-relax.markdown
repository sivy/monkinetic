---
title: "\"Embedded\" tweets, aren\'t. Relax."
layout: post
tp_urlid: "6a010534988cd3970b01348064cef4970c"
tp_favoritecount: 1
tp_commentcount: 1
tp_permalink: "http://www.monkinetic.com/2010/05/embedded-tweets-arent-relax.html"
---
Shea Bennet posts a [hyperventilating critique](http://twittercism.com/blackbird-pie/) of Twitter's new marketing tool to let you embed a tweet in your site: [Blackbird Pie](http://media.twitter.com/blackbird-pie/):

>Prediction: embeddable tweets will soon be like all those YouTube videos that promise so much, only to serve up a no longer available error message as soon as you click play. Only this time without the promise part  just a blank, empty void that mirrors your level of satisfaction.

Unlike what most of us nerds think of as embedding (`<embed>` and its ilk) Twitter is merely generating all the css to make the pasted code render exactly as it does on the Twitter web site. Witness:

<!-- http://twitter.com/steveivy/status/13385388968 --> <style type='text/css'>.bbpBox{background:url(http://s.twimg.com/a/1272915588/images/themes/theme1/bg.png) #9ae4e8;padding:20px;}p.bbpTweet{background:#fff;padding:10px 12px 10px 12px;margin:0;min-height:48px;color:#000;font-size:18px !important;line-height:22px;-moz-border-radius:5px;-webkit-border-radius:5px}p.bbpTweet span.metadata{display:block;width:100%;clear:both;margin-top:8px;padding-top:12px;height:40px;border-top:1px solid #fff;border-top:1px solid #e6e6e6}p.bbpTweet span.metadata span.author{line-height:19px}p.bbpTweet span.metadata span.author img{float:left;margin:0 7px 0 0px;width:38px;height:38px}p.bbpTweet a:hover{text-decoration:underline}p.bbpTweet span.timestamp{font-size:12px;display:block}</style> <div class='bbpBox'><p class='bbpTweet'>"Embedded" Tweets... aren't. At least, not like videos are. Don't get you knickers in a knot.<span class='timestamp'><a title='Tue May 04 21:29:25 +0000 2010' href='http://twitter.com/steveivy/status/13385388968'>less than a minute ago</a> via <a href="http://www.atebits.com/" rel="nofollow">Tweetie</a></span><span class='metadata'><span class='author'><a href='http://twitter.com/steveivy'><img src='http://a3.twimg.com/profile_images/539247583/Photo_206_normal.jpg' /></a><strong><a href='http://twitter.com/steveivy'>Steve Ivy</a></strong><br/>steveivy</span></span></p></div> <!-- end of tweet -->

View the source: The only "fragile" hrefs in that code (i.e., not on your site) are the user's background image and profile picture. So, yeah, I suppose those might disappear at some point, but a "just a blank, empty void that mirrors your level of satisfaction"? Come on.
