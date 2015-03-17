Slug: openid-connect-standards-and-solutions
Date: 2010-01-20
Title: "OpenID Connect: Standards and Solutions"
layout: post

<a style="float: right;" href="http://steveivy.typepad.com/.a/6a010534988cd3970b012876f553d4970c-pi"><img class="asset  asset-image at-xid-6a010534988cd3970b012876f553d4970c" alt="Logo_openid" title="Logo_openid" src="http://steveivy.typepad.com/.a/6a010534988cd3970b012876f553d4970c-800wi" border="0" style="margin: 0px 5px 5px 5px; padding: 3px; border:none;" /></a>

[Chris Messina](http://factoryjoe.com/blog/) recently wrote a [post asking if we need an "OpenID Connect"](http://factoryjoe.com/blog/2010/01/04/openid-connect/) that packages the various Open Stack technologies into a single solution that can compete with Facebook Connect. (There are good follow up posts from [Dare Obasanjo](http://www.25hoursaday.com/weblog/2010/01/18/DoesTheWorldNeedOpenIDConnect.aspx) and [Johannes Ernst](http://netmesh.info/jernst/digital_identity/openid-connect-messina-vs-obasanjo)).

Chris describes it thusly:

>for the non-tech, uninitiated audiences: OpenID Connect is a technology that lets you use an account that you already have to sign up, sign in, and bring your profile, contacts, data, and activities with you to any compatible site on the web.

I actually think that the value that users see in using their Facebook identity (and the value developers see in Connect) is actually that the user is connecting their activity to Facebook, not the other way around. They're not connecting their Facebook friends to your site, their connecting their activity on your site to Facebook.

This concept was the driving idea behind a [proof of concept](http://www.monkinetic.com/2009/10/identity-activity-making-the-connection.html) Mark Paschal and I worked on some months ago. This service used an extension to the OpenID login process to tell the OpenID provider that the consuming application (the site being signed into) could provide [activity stream](http://activitystrea.ms) updates back to the OpenID provider. This would allow the user to sign in to a new site with their OpenID, and have their activity from that site aggregated back to their OpenID provider, exactly how a Facebook user's activity on a Connect site can be aggregated back to their Wall.

This, I believe, is where we need to get to in order make something like OpenID Connect work - I'm pretty convinced that the value for the user is in 1) bringing your full identity to the new site, and 2) aggregating their activity to their community of friends/followers. The other features Chris mentions - access to your contacts via [Portable Contacts](http://portablecontacts.net "PoCo!"), etc., should definitely be part of the package, but the key is the connection of identity to activity.

### Why hasn't it happened yet?

I believe that this has always been the vision of the Open Stack community, but I think that in the effort to develop standards that will be implemented most widely the individual components have gotten all the attention. [Eran Hammer-Lahav](http://hueniverse.com/), however, has been targeting the "connection point" specifically with his awesome work on [XRD](http://hueniverse.com/xrd/), LRDD, [host-meta](http://tools.ietf.org/html/draft-hammer-hostmeta-05), [WebFinger](http://hueniverse.com/2009/09/implementing-webfinger/), etc. These technologies are the core of linking an OpenID or email-like id to the other services Chris discussed in his post (contacts, activity aggregators, etc).

If you're working in one of these areas, please review the work Eran is doing and ask if there's a way to help. To get from here to there, we're going to need developers working on implementing more of the connecting technologies; until then we're only going to have standards, not solutions.
