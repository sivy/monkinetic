Slug: rssfilterdescription
Date: 2002-04-12
Title: rssFilterDescription
layout: post

While I think it was a great idea, I can&#39;t help but think that it would have been very easy to make <a href="http://radio.userland.com/descriptionFilterCallbacks">this</a> a lot more flexible.

<code>weblogData.callbacks.rssFilterDescription</code> could have been <code>weblogData.callbacks.rssFilterField</code>; then the callbacks would be put in <code>rssFilterField.[fieldName]</code>. Then users could filter the item titles, links, <i>or</i> descriptions (or whatever other fields Dave&#39;s adding to RSS these days).
