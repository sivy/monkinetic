Slug: new-conversant-sites-new-conversant-features-to-me
Date: 2003-01-31
Title: New Conversant Sites, New Conversant Features (to me!)
layout: post

I&#39;m working on a couple new Conversant sites for a client these days. In the process, I&#39;m learning more about some of Conversant&#39;s features that I&#39;ve not used much, and appreciating again how cool Conversant is. Here are some of the interesting things I&#39;m doing:

- On a couple sites, I&#39;m using an <a href="http://support.free-conversant.com/docs/Pages/advQueryPage">Advanced Query Page</a> to create list pages for a particular type of information on the site. However, instead of listing all messages of that type that are in the message database (Conversant&#39;s  content store), I&#39;m using an <a href="http://support.free-conversant.com/docs/Pages/advQueryPage#queryOptions">option</a> on the AQP that only returns messages that are bound to URLs. This means that when the user posts, say, a Case Study, it won&#39;t show up in the Case Study list page until it&#39;s finished and ready and the user publishes the page to a URL in the &lt;site&gt;/CaseStudies/&lt;type&gt;/ hierarchy.

- Custom New Thread forms are cool. Conversant has a page, at &lt;site&gt;/__NewThread__ that allows a user or editor to post a new message to the site (as well as set a number of options). Well, using <a href="http://support.free-conversant.com/docs/conditionals/introduction">conditional macros</a> I can check things like &quot;is the user a member of the editors group?&quot; or even the value of <a href="http://support.free-conversant.com/docs/Custom_Fields/introduction">custom message attributes</a> like &quot;messageType&quot; (for example), then display different message fields for the user to edit. With this I can have a user enter data for various message types (Case Study, Portfolio Piece, Song) without being distracted by non-related message fields.
