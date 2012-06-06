---
layout: post
title: "Intercom.io and feature discovery"
date: 2012-03-01 14:50
comments: true
categories: 
---

*This is really a two-part post squished into one post, and it's pretty nerdy*

After a recent - really good - customer experience with [sprint.ly](http://sprint.ly) that was started over their Support channel, I looked around and discovered they were using [Intercom](https://intercom.io) for their support/outreach tool. I created an account (free while in beta!) and started messing with it for [Pushcode](https://pushco.de).

Intercom does a *fabulous* job introducing you to new features byt doing three things:

* Tease you at the bottom of the screen with a message: "You should <u>enable secure mode to protect your users</u>". There's a "No thanks" link to make it go away, and a progress bar based on how many of these recommendations you've actually implemented.

![intercom.io teaser](http://static.monkinetic.com/images/intercom_io_enticer-20120301-143245.png)

* If you click: Intercom pops you to a screen that shows you exactly the javascript code (even customized with your app-specific ids) to add to your page to enable the suggested feature.

![intercom snippet](http://static.monkinetic.com/images/intercom_snippet-20120301-143859.png)

* Finally: when you've got the code implemented they can tell from the traffic coming from your site that you implemented it, and they adjust that little progress bar.

It's amazing. I *want* to implement every feature they throw at me. More, please.

## The nerdy part

Intercom provides PHP and Ruby sample code for generating the MD5 hash required by one of their security features:

      user_hash: '<%= Digest::SHA1.hexdigest('randstring' + current_user.email) %>'

Pushcode is written in Django and Python, and of course I know how to MD5 a string in python, but it's doing so in a template is not a built-in. I implemented a simple template filter that does it for you:

<script src="https://gist.github.com/1953457.js"> </script>

Feel free to grab the code and improve on it (though it's pretty stinkin' simple).