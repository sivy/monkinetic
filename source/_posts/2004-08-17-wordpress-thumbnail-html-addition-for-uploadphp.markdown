---
title: "WordPress: Thumbnail HTML addition for upload.php"
layout: post
tp_urlid: "6a010534988cd3970b0120a5b36825970c"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2004/08/wordpress-thumbnail-html-addition-for-uploadphp.html"
---
(This post is copied from <a href="http://wordpress.org/support/10/5325">this one</a> on the support forums, I want to make sure my |WordPress| code has a home on this site.)

The Context: |WordPress| allows you to upload images, optionally creating a thumbnail of the image automagically.

The Problem: The handy HTML it gives you after uploading an image does not include any reference to the thumbnail.

The Solution: I modified wp-admin/upload.php so that, if you specify a thumbnail, it will find the size of the thumbnail and create HTML that displays the thumbnail image, wrapped with a link to the original image. It actually gives you two versions of the HTML - the first has the thumbnail code included, the second is the same HTML that the page used to generate.

There&#39;s a pseudo &quot;diff&quot; here:

http://redmonk.net/upload_with_thumbnail_code.phps

I&#39;d be very interested in feedback. I&#39;ve tested it on my server, and it seems to work fine.
