Slug: prototypejs-and-_
Date: 2005-11-09
Title: prototype.js and &_=
layout: post

<a href="http:/truerwords.net">Seth</a> pointed me to <a href="http://prototype.conio.net/">prototype.js</a>, a handy Javascript library for doing a variety of gee-wizzy things in webapps, one of which is performing a variety of useful AJAX functions. After fighting with it for way longer than necessary, I turned to:

<blockquote><code> tail -f /var/log/httpd/site_access_log </code></blockquote>

and after finding the request from my app I discovered that prototype.js was adding a parameter to the list I had provided for the remote call. The line in question is line 214(-ish) of the script, which looks like so:

<blockquote><code>if (parameters.length &gt; 0) parameters += &#39;&amp;_=&#39;;</code></blockquote>

There are no comments explaining the additional parameter, or why it has no value, but FileMaker (*collective groan*) doesn&#39;t like it one bit. I&#39;ve commented out the line for now, at least until I&#39;m given a very good reason for it being there.

Anyone have any ideas?

update: <a href="http://blog.markjuh.net/markjuh/2005/9/26/unexpected_characters_when_using_prototy">Markjuh</a> had the answer - it was originally put there to work around a Safari bug, but is irrelevant now (so commenting it out is ok). Darn you Apple :-) !
