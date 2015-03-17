Slug: http-html-and-head-requests
Date: 2003-03-15
Title: HTTP, HTML, and HEAD requests
layout: post

The other day I was working on a script and I wanted to get the titles for a bunch of web pages I had links to. I coded up something that downloaded each page, pulled out the title, and cached it (so that there would be no more than 1 request per URL).

Still, a lot of these were weblogs or other dynamically generated pages, so it was still a time &amp; resource intensive operation.

It occured to me that it would be cool if there was a standard way to ask a webserver just to send you the HEAD element (and content of course) for a page. You could extract the title, meta keywords, and link elements, etc without having to fetch the entire page&#39;s contents.

Thoughts?
