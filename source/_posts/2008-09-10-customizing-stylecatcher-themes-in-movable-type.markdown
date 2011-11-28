---
title: "Customizing StyleCatcher Themes in Movable Type"
layout: post
tp_urlid: "6a010534988cd3970b0120a55ce92a970b"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2008/09/customizing-stylecatcher-themes-in-movable-type.html"
---
This post is a reminder/bookmark for myself and anyone else on how to customize a StyleCatcher theme in Movable Type without losing the ability to use the original theme in the future.

Background: Movable Type has an great plugin called [Stylecatcher](http://plugins.movabletype.org/stylecatcher/) that makes it easy to install new <abbr title="Cascading Style Sheets">CSS</abbr>-based themes on your blog. StyleCatcher installs these themes in a directory in mt-static:

  mt-static/support/themes/&lt;theme-name\&gt;/

I started this blog on Byrne Reese's [excellent port of Chris Pearson's Cutline theme](http://www.majordojo.com/projects/cutline/). And I originally started editing these files (particularly the <code>cutline.css</code> file) as part of my customization process. After having some problems with the code, I decided to setup another test blog and apply the original Cutline theme for comparison.

When I went to do so, I realized that I only had the one local copy of the theme. So after some fiddling around, i realized that there's an easy way to have your cake and eat it too.

Long story long

 1. Copy the <code>&lt;theme-name\&gt;</code> directory and give it a new name (mine is now <code>monkinetic-x</code>)
 2. Rename the CSS file inside to match. 
 3. Edit the meta data in the comments at the top of the CSS file:

<pre><code>
  /*
  A theme adapted by Steve Ivy from the theme adapted by Byrne Reese from the original Cutline theme by Chris Pearson
  name: Monkinetic X
  designer: Steve Ivy, based on Cutline by Chris Pearson
  layouts: layout-wt, layout-tw
  */
</code></pre>

Now the theme will appear in the "Saved Themes" section of the StyleCatcher, and you can use the original theme as a backup in case you (like me) break something. Good luck!
