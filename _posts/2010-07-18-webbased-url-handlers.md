Slug: webbased-url-handlers
Date: 2010-07-18
Title: Web-based URL Handlers (or, Lessons from the iPhone)
layout: post


While walking back from the Gilt Club tonight (meet-n-greet before [FSW](http://federatedsocialweb.net/)) to the hotel, I was chatting with Brion and Zach from Status.net and starting talking about a conceptual UI bug in status.net. The bug to me is that in order to subscribe to a user's personal status.net site (say, I want to [subscribe to Evan on his private instance](http://evan.status.net/)) I need to enter my status.net identity on his site to get the ball rolling. Not that this is difficult, but it seems awkward and annoying.

*Solution*: Web sites should be able to register URL handlers with the browser. A site could define their own URL protocol string, and provide a callback that links with that protocol string would be sent to. This is a direct "port" of the same idea from iPhone interprocess communication, which was what got me thinking about it.

What if my status.net site could tell my browser:

1. I can handle `ostatus:` URIs
2. Send the link to `http://me.status.net/subscribe?{url}`

The browser could then pop up a dialog:

>me.status.net would like to register to handle `status:` links. Would you like to use me.status.net to handle these links? <more info> [Okay] [No Thanks]

I could click to say yes, then when visiting some other user's ostatus-implementing site, I could click the subscribe link (which looks like `status:them.ostatus.com`) and the browser would automatically take me to my selected `status:` handler site and let that site complete the process.

How would the handler site provide this information? One idea could be our friend the `<link>` tag in the site `<head>`:

`<link rel="url-handler" type="ostatus" href="http://me.status.net/subscribe?{url}" />`

Unfortunately, that looks a little janky to me and probably tromps all over the intended semantics of the tag. Perhaps something with `<meta>`? I'll leave that up to the markup wizards.

We could also take this a step further: If my browser knows how to handle `ostatus:` URLs now, we could improve the UI some, perhaps, by having the browser parse the incoming page for a [rel=status](http://www.monkinetic.com/2009/11/status-autodiscovery-relstatus.html) link, and give me a nice little [status] icon in the location bar?

<a  href="http://steveivy.typepad.com/.a/6a010534988cd3970b01348582bb2e970c-pi"><img class="asset  asset-image at-xid-6a010534988cd3970b01348582bb2e970c" alt="Status_bar" title="Status_bar" src="http://steveivy.typepad.com/.a/6a010534988cd3970b01348582bb2e970c-800wi" border="0" style="display: block; margin-left: auto; margin-right: auto;" /></a>

Obviously that UI would get crowded kinda fast, but this could be done with a variety of services: `like:`, `follow:`, etc. -- as long as the handler can be linked to a particular protocol or service.

Thoughts?


