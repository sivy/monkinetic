Slug: identity-activity-making-the-connection
Date: 2009-10-18
Title: "Identity & Activity: Making The Connection"
layout: post

I logged into [Get Satisfaction](http://getsatisfaction.com) recently (using an OpenID of course), and something about this simple act got me thinking. Ive got two accounts on Get Satisfaction - one using my personal account, and one using my work account. One of the features of OpenID is that you can maintain multiple identities (one might say they tend to proliferate too easily, considering the number of providers coming online) and use them for various purposes.

There are a myriad of open technologies now growing up around identity and authorization: [OpenID](http://openid.net) and [Attribute Exchange](http://openid.net/specs/openid-attribute-exchange-1_0.html). [OAuth](http://oauth.net). [XRDS Simple](http://xrds-simple.net/). [WebFinger](http://code.google.com/p/webfinger/). These technologies (some emerging, some well established) are focused on solving the problem of sharing and managing my identity information in the [distributed social network](http://diso-project.org).

Increasingly, that identity is tied to a community that aggregates social activity: the OpenID I use to login to a new service is as likely to be my [TypePad](http://typepad.com) identity, my Google identity, or my [Facebook](http://facebook.com) identity as it is to be my personal OpenID. I may even decide which login identity to use based on how the site Im logging into relates (in my mind, of course) to my social network in one of those communities. Most of my non-tech friends and family primarily use Facebook; many of my co-workers are on TypePad; many of my other online community contacts can be found on Google.

*So I've been thinking about the intersection of identity and activity.*

Who we are (more accurately, how we are known) is often defined more by what we do than by any particular personal attribute - after all, "Even a child is known by his actions". It should be no surprise that [Activities](http://activitystrea.ms) are becoming as important as Identity in how we relate to one another online. Most every social networking site now has some sort of running activity view that shows you what your friends on that service are doing - and vice versa. The activities we choose to share with one another are a powerful bonding force. Many (most?) of those same sites are offering that activity information in formats (RSS, Atom, or - even better - the new ActivityStrea.ms extension to Atom) that can be consumed and aggregated by other sites.

Facebook can import activities from a variety of feeds/sites; Typepad will automatically import my Twitter status; FriendFeed made an entire business out of aggregating just about any social feed you could find. When I use my identity in a community to login to a new site, why shouldn't the community service be able to ask me right then:

>Hey Steve - as long as youre authenticating with [service] as a member of this community, would you like to share your activities on [service] with your friends / followers in the community?

Id probably click that button in two shakes. And this isn't limited to the large social sites - if you were using your personal OpenID  server and lifestreaming application, your OpenID server should be able to ask if you want to start aggregating / lifestreaming your activities from the new service - all the technological pieces needed to make this work exist today.

In a [post to the Activity Streams mailing list](http://groups.google.com/group/activity-streams/browse_thread/thread/a713cc66904ec50b) I've outlined a solution and implementation (built mostly by fellow Six Aparter [Mark Paschal](http://markpasc.org/mark/)) that builds on existing technologies, and only requires a bit of cooperation between activity providers and identity providers. There are demo apps you can try out at <http://identity.neologasm.org> (registering gives you an openid there) and <http://activity.neologasm.org> (use the openid from the identity app to login here) The rest of the details are in the activity streams post; the source for both apps is available on [GitHub](http://github.com/sivy).

My hope is that we can get a discussion going in the openid and activity streams communities that will help clarify the technological issues as well as the user-interaction issues.

From my [mailing list post](http://groups.google.com/group/activity-streams/browse_thread/thread/a713cc66904ec50b):

>It isn't a difficult implementation (Mark Paschal and I -
mostly Mark - implemented the handshake in a few hours), and I think
the benefits to users, activity providers and social aggregators would
be significant.

>Users are given an easy and understandable opportunity to take
advantage of the power of sharing ones activity in the community;
activity providers are given more exposure in more communities for
their service, and community/social network providers are given a
valuable tool to increase members investment in the network.
