Slug: using-blogvia
Date: 2007-07-31
Title: "Using blog:via"
layout: post

After coming up with a solution to [how to implement the blog:via machine tag](http://redmonk.net/archives/2007/07/27/machine-tags/) on this site, I turned my attention this morning to how to do something interesting with it.

Since I used a custom field to implement adding machine tags to posts, I looked for a way to easily search values in those fields. I found a Wordpress plugin - [Search Custom Fields](http://guff.szub.net/2006/04/21/search-custom-fields/) - that lets me search the values in a custom field by appending <code>key=&lt;custom field name&gt;</code>.

  http://redmonk.net/?key=machinetags&s=blog:via

As you can see from that uri ([try it out](http://redmonk.net/?key=machinetags&s=blog:via)), the search term now applies to the custom field, not the post content. But searching for all posts with 'blog:via' is not that interesting. If you check out [this post page](http://redmonk.net/archives/2007/07/26/subtraction-one-book-to-specify-them-all/), I've tweaked the machine tags display so that next to each "blog:via" is a "more" link that takes you to a list of posts that were via that URL:

<a href="http://redmonk.net/archives/2007/07/26/subtraction-one-book-to-specify-them-all#machinetags"><img  alt="machinetags_via" class="at-xid-6a010534988cd3970b0120a5b368a9970c " src="http://steveivy.typepad.com/.a/6a010534988cd3970b0120a5b368a9970c-pi" style="padding:1px; border:1px solid #ccc;" /></a>

It's not perfect yet - with my implementation (a 'machinetags' custom field with 'blog:via=http://daringfireball.net' value), I can't actually search for "machine tag where the tag is blog:via *and* the value is &lt;url&gt;". I may yet switch to a "blog:via" custom field.

Also, geeks ahoy! I've started [a page on Machinetags.org](http://machinetags.org/wiki/Blog) for <code>blog:</code> machinetags.
