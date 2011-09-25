---
title: "OpenID Connect: Progress Ensues, Challenges Remain"
layout: post
tp_urlid: "6a010534988cd3970b013480fefe02970c"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2010/05/openid-connect-progress-ensues.html"
---
<a href="http://paulmadsen.posterous.com/new-line-of-greeting-cards-iiw" style="display:block; text-align:center"><img src="http://posterous.com/getfile/files.posterous.com/paulmadsen/TWQ8z3lt8dKeqVy0TUPSujtzVPXFQTTalqIBb5gOOBwP9DpccEmPGs6qVmIK/Screen_00003.jpg" style="border:none;"/></a>

Earlier this year, [Chris Messina](http://factoryjoe.com/blog/) started writing about [an idea he labeled "OpenID Connect"](http://factoryjoe.com/blog/2010/01/04/openid-connect/). From Chris's original post:

>for the non-tech, uninitiated audiences: OpenID Connect is a technology that lets you use an account that you already have to sign up, sign in, and bring your profile, contacts, data, and activities with you to any compatible site on the web.

[OpenID](http://openid.net) currently allows users to accomplish the first two tasks in Chris's list: sign up and sign in, optionally giving the relying party some basic information about yourself. The idea behind "OpenID Connect" is to make the last group of tasks easier: rework the OpenID signin process to build on OAuth and provide a standard API that gives the relying site access to some user-controlled subset of a user's personal information, contacts, and activities.

Several weeks ago David Recordon (Open Platforms lead for Facebook) released a self-proclaimed ["strawman spec" for OpenID Connect](http://openidconnect.com/). This is an  unfinished document designed to get a deeper discussion started about the ideas and problems involved.

>The early draft below is meant to inspire and help revitalize the OpenID community. It isn't perfect, but hopefully it's a real starting point.

The spec explains the tech with what seems to be a minimum of handwaving, but there remain conceptual challenges to overcome if OpenID Connect is going to gain traction, and actually solve the issues it's trying to address.

### <span id="conflicting-goals">The Challenge: Manage Conflicting Goals</span>

To be successful, OpenID Connect must manage two conflicting goals:

1. Be technologically and economically attractive to relying parties
2. Continue to support user privacy and identity controls

The first goal is to be attractive for relying parties (sites that would support OpenID Connect as a sign-in option) to implement. This means that support for the new protocol must make economic sense to the RPs. Consider Chris's comments on [the value of user data to the relying parties](http://www.monkinetic.com/2010/05/your-privacy-makes-you-less-valuable-to-facebook.html): 

>on Facebook, the liberal defaults are meant to make Facebook users accounts more valuable to relying parties than other, more privacy-preserving account configurations.

Relying sites need to know that if they spend the time building in support for your auth system that the registered users they get through your system are going to bring value to their site. What's the only real value on the web? *Information*. Facebook provides the most "valuable" users right now because their defaults provide 3rd party sites with the most information about the newly signed-in user.

The second goal that OpenID Connect needs to address is to continue the history of user control and privacy that OpenID was built on:

>OpenID is a decentralized standard, meaning it is not controlled by any one website or service provider. You control how much personal information you choose to share with websites that accept OpenIDs, and multiple OpenIDs can be used for different websites or purposes. -- [Benefits of An OpenID](http://openid.net/get-an-openid/individuals/)

While Facebook's model is to share the greatest amount of information possible about a user by default, OpenID's strength over the years has been the high level of control and choice offered to users, even if the user experience was never [at the level it needed to be](http://factoryjoe.com/blog/2009/04/06/does-openid-need-to-be-hard/). Stand-alone providers like <http://myopenid.com> offered useful interfaces to select and identity to log in with, and even what fields to pass back to the relying site. This was valuable and *necessary* functionality, that Facebook users concerned with privacy may finally be coming to appreciate.

I sincerely hope that OpenID Connect and related technologies will encourage identity providers and relying parties to give the user the tools to *understand* and manage their own privacy in this new, wide-open information landscape, or I fear it's going to just become a new front-end to the data-devouring machine that is the current state of the social web.

