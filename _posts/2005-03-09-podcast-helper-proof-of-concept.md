Slug: podcast-helper-proof-of-concept
Date: 2005-03-09
Title: PodCast Helper proof-of-concept
layout: post

PodCast Helper is a stay-open AppleScript that looks at the current track in iTunes; if the genre is &quot;podcast&quot;, it grabs the comment from the track, and parses it for timecodes and notes of the form:

&gt;@4:35 some note

If it finds any, it will watch the track and when it hits the appropriate timecode, it will use Growl (http://growl.info) to popup a notification with the note. Ideally, Growl would be able to show HTML, or at least text with links in it, so pocasters could include clickable links in the notes. Sans that, this script is really more of a proof of concept.

Usage: expand the archive and put the script somewhere. Double click the script and click &quot;Run&quot; when it opens. That&#39;s it. Of course, the podcast must have notes of the appropriate format for this to work. The format, again, is:

&gt; @mm:ss note

Download: <a href="http://redmonk.net/mt/mt-static/uploads/PodCastHelper.zip" title="PodCast Helper">PodCast Helper</a>

If you want to port this to Cocoa or some other environment, please do. It&#39;s licensed under a CC license (http://creativecommons.org/licenses/by-nc-sa/2.0/)


<a href="http://creativecommons.org/licenses/by-nc-sa/2.0/" rel="license"><img alt="Creative Commons License" border="0" class="at-xid-6a010534988cd3970b0120a5b36b6d970c" src="http://steveivy.typepad.com/.a/6a010534988cd3970b0120a5b36b6d970c-pi" /></a><br />
This work is licensed under a <a href="http://creativecommons.org/licenses/by-nc-sa/2.0/" rel="license">Creative Commons License</a>.

