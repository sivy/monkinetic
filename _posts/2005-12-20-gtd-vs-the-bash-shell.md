Slug: gtd-vs-the-bash-shell
Date: 2005-12-20
Title: GTD vs. the Bash shell
layout: post

I&#39;ve been doing a major filesystem re-org lately in my ongoing mission to Get More Done. In the spirit of <a href="http://www.davidco.com/" title="Getting Things Done">GTD</a>, I created several directories starting with an &quot;@&quot; -- @ARCHIVE, @PROJECTS, etc.

All was well and good until I tried to <code>cd @&lt;tab&gt;</code> in the parent directory. Rather than get a directory listing showing me the directories starting with @, it listed available network interfaces:

&gt;<code>&gt; cd @<br />@::1 @broadcasthost  @localhost</code>

What the heck? I asked around, and this morning on IRC I got my answer:

&gt;tell redmonk that bash thinks you&#39;re typing user@host<br />use  shopt -u hostcomplete  to turn that off

Hm...

&gt; <code>&gt; shopt -u hostcomplete<br />&gt; cd @<br />@ARCHIVE   @PROJECTS </code>

W00t! (Thanks to <code>deltab</code> on <a href="irc://irc.freenode.net/swhack">#swhack</a> for the tip)
