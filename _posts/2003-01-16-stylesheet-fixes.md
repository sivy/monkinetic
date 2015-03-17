Slug: stylesheet-fixes
Date: 2003-01-16
Title: Stylesheet fixes
layout: post

Well, I&#39;ve fixed some bugs in my <a href="http://www.redmonk.net/">redmonk</a> stylesheets, as well as those for <a href="http://www.ivyarchpc.com">a client</a>.

I&#39;m not sure where I picked it up, but I had the idea that inherited styles were separated by a &quot;&gt;&quot;, as in:

<code>.someClass &gt; .childClass {...}</code>

This worked in the browsers (<a href="http://chimera.mozdev.org/">Chimera</a> and <a href="http://www.apple.com/safari/">Safari</a>) I do most development in, as well as IE6/Win. However, it was freaking out IE5/Win.

I found out at webreview&#39;s <a href="http://www.webreview.com/style/glossary.shtml#16">browser style support reference</a> (via <a href="http://css.nu/pointers/index.html#Browser">css.nu</a>) that inherited styles are declared so:

<code>.someClass .childClass {...}</code>

After fixing that, the styles are now being rendered properly. Now, I wonder where I got the idea that there was supposed to be a &quot;&gt;&quot; in there, and why were several popular browsers rendering it properly?
