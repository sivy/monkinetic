Slug: help-osascript-shell-mailapp
Date: 2002-10-05
Title: (HELP) osascript, shell, Mail.app
layout: post


I need some help with Applescript, <code>osascript</code>, and some shell script.

I have an Applescript (shamelessly ripped off from iCal) that opens a new email in Mail app with the to: subject: and body already set. I want to use it from Sid, but I can&#39;t figure out what iCal is doing with it.

The script looks like this:
<pre>tell application &quot;Mail&quot;
	activate
	set mysubject to &quot;$1&quot;
	set mybody to &quot;$2&quot;
	set mymail to (make new outgoing message
		at the beginning of outgoing messages with
		properties {subject:mysubject,content:mybody})
	set visible of mymail to true
end tell</pre>

I assume that iCal is running this through a shell script that takes the args and replaces them in the text of the script (<code>osascript</code> does not handle args yet) then running the script through <code>osascript</code>, but I can&#39;t seem to get it to work. I&#39;m no shellscript guru, and I&#39;ve got no good reference right now to check out. If you can help out with this, I&#39;d be really grateful (and include eternal thanks to you in the credits!)
