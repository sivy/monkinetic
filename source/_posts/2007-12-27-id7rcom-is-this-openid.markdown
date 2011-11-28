---
title: "Id7r.com: Is This OpenID?"
layout: post
tp_urlid: "6a010534988cd3970b0120a5b365ba970c"
tp_favoritecount: 0
tp_commentcount: 4
tp_permalink: "http://www.monkinetic.com/2007/12/id7rcom-is-this-openid.html"
---
I ran across a link to this morning, and while it's a technically interesting application, I can't help but see it, at best, as a complete dilution of what OpenID is supposed to mean, and at worst, an intentional abuse of OpenID and a perfect tool for spammers.

##A Quick Refresher

OpenID is a way for a user to assert to a site that the user controls/owns a URI (a good look at the benefits [here](http://simonwillison.net/2007/Jan/22/whitelisting/)), and the authentication process tries to make sure that there's a person on the other end of that URI.

&gt;A key feature of OpenID is that it provides a globally unique identifier for every user, no matter what site or service they are using on the Web. [Simon Willison](ttp://simonwillison.net/2007/Jan/22/whitelisting/)

##Meanwhile...

The id7r.com home page says:

&gt;Id7r turns every email address into an OpenID identifier.

* type in your email address (prepended with id7r.com/) and click "verify"
* check your mailbox for a new message with subject like "Auth Request #### from id7r.com"
* follow instructions therein to complete the process.

Now, isn't email the thing that spammers have come very close to completely ruining due to creating millions (billions?) of randomly-generated email accounts? The "instructions therein" consist of:

&gt;Do not reply to this message! It's sent from an unattended mailbox.

&gt;Hi, &lt;me&gt;,

&gt;Someone (possibly you) has requested authorization at id7r.com for an OpenID login.

&gt;If you accept, please click this URL http://id7r.com/?action=confirm&token=&lt;atoken&gt;&auth=yes to complete the process.

&gt;Otherwise, click this URL http://id7r.com/?action=confirm&token=&lt;atoken&gt;&auth=no to reject it.

&gt;If your email client does not make above URLs clickable or a different browser pops up, please cut and paste either URL to the same browser you used earlier.

&gt;Sincerely,

&gt;The Id7r Team
&gt;http://id7r.com

It seems to me that grabbing a link from the email and then submitting a form is not particularly hard for the scum out there.

##Am I Crazy?

So, I know that OpenID does not claim to be an end to SPAM in and of itself (thanks to [singpolyma](http://singpolyma.com) for the reminder), but this just seems completely wrong to me. There was a recent spat over the [anonymous OpenID server](http://www.jkg.in/openid/), and the community consensus seems to be that we're going to have to resort to server blacklists eventually (though the author of the annoymous server makes [a decent case](http://www.jkg.in/103-openid-a-spam-heaven.htm) that blacklists are not going to do it either).

So am I crazy for seeing this as a huge problem? Unlike the anonymous server, id7r.com looks like something that normal users would find useful, thereby making it harder on them if we simply blacklist it.

Got thoughts? Hit the comments and let me know.
