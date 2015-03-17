Slug: how-to-rss-in-conversant
Date: 2000-10-13
Title: "How-To: RSS in Conversant"
layout: post

<b>Gotta Have It</b>

I&#39;m a big proponent of using XML to extend the reach of my content. And, for that matter, to do lots of other things. So when I discovered that Conversant did not have the ability to output RSS from the weblog data I had been entering, I was disappointed.

<b>Not For Long</b>

After a while I discovered that one can do very clever things with Conversant&#39;s templates. &quot;Jim&quot; did an <a href="http://jim.roepcke.com/sitemap.xml">XML document</a>, and mentioned that he had done it with Conversant&#39;s WebOutline and some templates... which of course got me thinking.

The way to get Conversant to generate RSS, in short, is a combination of a custom query page, templates, and some abuse of the HTML-Enforcer. So, let&#39;s get on to it!

<b>The Query</b>

I first spent some time with the built-in query page on Redmonk.Net. I did some searches to find out just what kind of flexibility I have. What I wanted was the last ten posts to my weblog, ordered most recent first. Play around with your query page to get just the kind of results you want in your RSS file. <i>Idea: themed RSS files, using the Label feature to limit results to one category</i>.

<b>Lie to the Enforcer</b>

Once you know what information you want, but before we do the templates, we have to convince the HTML Enforcer plug-in in Conversant to leave our XML tags alone, lest it neuter them when you save the template.

So, add the following tags to the HTML Enforcer&#39;s list of allowed tags: &quot;xml&quot;, &quot;rss&quot;, &quot;channel&quot;, &quot;item&quot;, &quot;description&quot;, &quot;managingEditor&quot;, &quot;webMaster&quot;, &quot;title&quot;, &quot;link&quot;, &quot;language&quot;, &quot;copyright&quot;.

<b>Templates</b>

Conversant exposes an almost bewildering array of templates for the use of the site developer. That&#39;s a great thing in this case, because we&#39;re going to use three of them.

The first is a new page-level template, that provides the wrapper of the RSS file (&lt;?xml?&gt;&lt;rss&gt;...).  Create the template and set it  to something like this: (make the necessary changes to customize the content for your site)



<pre>
&lt;?xml version=&quot;1.0&quot;?&gt;
&lt;rss version=&quot;0.91&quot;&gt;
&lt;channel&gt;
&lt;title&gt;(what&#39;s your rss file called?)&lt;/title&gt;
&lt;link&gt;(your site url)&lt;/link&gt;
&lt;description&gt;(your description)&lt;/description&gt;
&lt;language&gt;en-us&lt;/language&gt;
&lt;copyright&gt;(your copyright statement)&lt;/copyright&gt;
&lt;managingEditor&gt;(email address)&lt;/managingEditor&gt;
&lt;webMaster&gt;(email address)&lt;/webMaster&gt;
&lt;!--#pageContent--&gt;
&lt;/channel&gt;
&lt;/rss&gt;
</pre>

Next up are the templates on your new query page.  If you haven&#39;t already, create a new query page, and set the template to the new template you just created. I called my new page &quot;recentStuff.rss&quot;.

Now we move on to the three templates that a query page uses: the Query Form template, the Search Result Page template, and the Search Result Items template.

The Query form appears on the page with the results, so just delete it altogether. This query page will have to be called from hard-coded links. (For now...)

Next we set the Search Result Page template:

<pre>&lt;!--#searchResultBody--&gt;</pre>

That&#39;s it! Everything else is in the Search Result Items template.

The Search Result Items template:
<pre>
&lt;item&gt;
&lt;title&gt;&lt;!--#searchResultMsgSubject--&gt; [&lt;!--#searchResultMsgLabelName--&gt;]&lt;/title&gt;
&lt;link&gt;(your site url)/&lt;/link&gt;
&lt;description&gt;&lt;/description&gt;
&lt;/item&gt;
</pre>

OK - that&#39;s it! Customize your templates as you want - I&#39;ve got the basics in there, but you could add more or less information as you desire. Make sure your templates have no extra carraige returns, as Conversant will &lt;p&gt; them if there are!

As I mentioned before, you have to use hard coded links right now, though I&#39;d like to see that change. Remember the query you devised earlier? Submit the query on your usual search page, then copy and paste the parameters into a link to your new RSS query page.  Better yet, save some typing or copy-and-pasting and create a new Resource that points to your RSS page.

[Feature Request] One last thing: It&#39;d be <i>really nice</i> if we could then set the MIME content-type for this page to text/xml, since Conversant currently still serves the page as text/html, and the browsers don&#39;t know what to do with it.

--Steve

P.S. - My RSS file is linked from <a href="http://www.redmonk.net/rss">this page</a>.
