---
title: "Google Contacts API debuts - how useful for distributed sites?"
layout: post
tp_urlid: "6a010534988cd3970b0120a55cea62970b"
tp_favoritecount: 0
tp_commentcount: 3
tp_permalink: "http://www.monkinetic.com/2008/03/google-contacts-api-debuts---how-useful-for-distributed-sites.html"
---
<a href="http://redmonk.net/archives/2008/03/06/google-contacts-api-debuts-how-useful-for-distributed-sites/2689/" rel="attachment wp-att-2689" style="display:block; text-align:center;" title="developers-guide-protocol-contacts-data-api-google-code_1204813301232.png"><img  alt="developers-guide-protocol-contacts-data-api-google-code_1204813301232.png" class="at-xid-6a010534988cd3970b0120a55cea66970b " src="http://steveivy.typepad.com/.a/6a010534988cd3970b0120a55cea66970b-pi" style="margin: 0 0 8px 0px; border: 1px solid #ccc; padding 1px;" /></a>

Yesterday Google released a [new contacts API](http://googledataapis.blogspot.com/2008/03/3-2-1-contact-api-has-landed.html), which has social network operators scrambling to implement.

>Have you ever been on a web-site that asked you for your Google username and password so that it can import your Gmail contact list? Did you think twice before giving out that information, hoping the web-site would not use it to access your credit card information stored with Google Checkout? Now you don't have to!

>We're happy to announce the availability of our Google Contacts Data API that gives programmatic access to your contact list. The contact list is shared among Google applications like Gmail, Reader, Calendar, and more.

This is exciting news for those of us working on [DiSo](http://diso-project.org) -- it would be great to give users the option to add their Google Contacts to their friends. Well, at least until I started reading the [Developer's Guide](http://code.google.com/apis/contacts/developers_guide_protocol.html). The API (like many of Google's APIs) requires AuthSub support in the client, which [requires registering your site with Google](http://code.google.com/apis/contacts/developers_guide_protocol.html#Auth):

>Note: You must register your application domain with Google before you can use AuthSub with the Contacts Data API. 

It's my understanding that this means that any blog owner who wanted to use a hypothetical DiSo Google contacts import would have to have registered their site with Google, which sounds like a huge roadblock for us. Am I reading this wrong? I'd love to hear from other developers on this.
