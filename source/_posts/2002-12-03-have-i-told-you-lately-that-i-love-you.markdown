---
title: "Have I told You Lately That I Love You?"
layout: post
tp_urlid: "6a010534988cd3970b0120a55ce295970b"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2002/12/have-i-told-you-lately-that-i-love-you.html"
---
By &quot;you&quot;, of course, I mean Conversant. I spent most of the day working on the rebuild of a client&#39;s site. The orginal site (built by myself and my employer in 1997) had a Case Study section. It was all static HTML (as was the entire site) and was a pain to put together. Today I sat down and moved the content over into the Conversant site the client has been using for about a year now. 

I posted each case study as a message (lots of copy-paste), and added a <code>is_case_study</code> flag and a <code>cs_abstract</code> field for a summary. 

Then I created a query page that drew results that had the <code>is_case_study</code> set to true, and only returns messages that are bound to a url (Conversant can bind any message to any number of logical URLs). Now the clients Case Studies page displays all the case studies that I&#39;ve put in and bound to urls in the <code>site/casestudies/category/</code> hierarchy. Very very nice, and easy to update in the future!
