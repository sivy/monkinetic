Slug: fighting-the-good-fight
Date: 2002-07-19
Title: Fighting the Good Fight
layout: post

I just completed a... 12 hour coffee-powered hack-a-thon. I got a bee in my bonnet about halfway through, convinced I could find a way to get at the content data in a servlet&#39;s  <i>HttpServletResponse</i>. No dice. I&#39;m implementing (as part of my learning experience) some templating idioms you&#39;ll find <a href="http://frontier.userland.com/">elsewhere</a>.

The servlet spec recently got Filters (link later), which I assumed to be similar to <a href="http://frontier.userland.com/stories/storyReader$231#userwebserverpostfilters">these</a>. One BIG difference however: a Servlet Filter does not in any way seem to have access to the content of the http response to be returned to the client. Which (<acronym title="In My Opinion">IMO</acronym>) removes about 95% of the reason to have them. Harumph.

I did finally find a way to do what I wanted, but it&#39;s a hack. Phbbbt.

Goodnight.
