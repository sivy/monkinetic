---
title: "Interview: Tantek Celik, Conceptualizing DiSo 2.0"
layout: post
tp_urlid: "6a010534988cd3970b01310f8f0003970c"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2010/03/interview-tantek-celik-conceptualizing-diso-20.html"
---
This is the second post in a series on the Future of [DiSo](http://diso-project.org) (the first post is appropriately titled [The Future of DiSo](http://www.monkinetic.com/2010/02/the-future-of-diso.html)).

## Introduction

I first ran into [Tantek &Ccedil;elik](http://tantek.com) back in 2003 as part of the Microformats community - Tantek has been a key proponent of the HTML-based microdata syntax since the beginning, and his patient guidance along with others in that community has given us [XFN](http://gmpg.org/xfn/), [hCard](http://microformats.org/wiki/hcard), [hAtom](http://microformats.org/wiki/hatom), and a number of other widely adopted microdata formats.

Tantek has also been a thoughtful member of the [DiSo](http://diso-project.org) community, chiming in from time to time to advocate for simplicity over complexity, building on earlier work, and working from consensus where possible. He recently posted on his site about his thoughts on [what the next "version" of DiSo might look like](http://tantek.com/2010/034/t2/diso-2-personal-domains-shortener-hatom-push-relmeauth), and he kindly agreed to chat with me about it.

Here's part 1 of my email interview with Tantek. Enjoy!

---

## Conceptualizing DiSo 2.0 

**Steve Ivy:** *Before looking more at where you see DiSo going, what is your take
on DiSo originally envisioned and as it exists now?*

**Tantek &Ccedil;elik:** That's a big couple of questions.

As originally envisioned, <http://diso-project.org> defines DiSo as "an
initiative to facilitate the creation of open, non-proprietary and
interoperable building blocks for the decentralized social web."

I think this is an excellent high level vision that remains relevant
and important today.

The home page also says:

"Our first target is WordPress, bootstrapping on existing work and
building out from there."

That "first target" goal provides a good definition for what I've been
calling DiSo 1.0 - which was certainly a good focus for when DiSo was
originally envisioned back in December 2007, when blogging was still
people's primary means of self-publishing, and only a few folks had
started using micro-blogging services like Twitter.

Since then many things have changed, but several in particular:

* [Twitter](http://twitter.com)'s popularity. Its usage has in many ways eclipsed blogging.
* URL shorteners. They've become very popular, and awareness of their
problems has grown.
* The rise of [microformats](http://microformats.org/wiki/). microformats have continued to mature,
advance, and become far more popular than XML publishing efforts with
more and more publishers and consumers.
* Authentication via [OAuth](http://oauth.net).
* Problems with maintaining your own self-hosted CMS and database(s)
have become more apparent (more on that later).
* [WebHooks](http://www.webhooks.org) and [PubSubHubbub](http://code.google.com/p/pubsubhubbub/) were created, launched, and have solved many longstanding distributed notification challenges.

I think all of these big changes (and several smaller ones) have made
it clear that we need to update the notion of what a DiSo
implementation should both look like and do.

**SI:** *It seems like DiSo has been targeted at the hobbyist programmer or technical blogger who knows how to run their own site, etc. But even that user is now often moving to hosted or semi-hosted service where they don't control every aspect of the site for convenience sake, but
might want some control. Who do you see as the target user for DiSo-type technologies now?*

**T&Ccedil;:** DiSo, at least with its first implementation focus, was very much
targeted at the hobbyist programmer or technical blogger. Setting up
and maintaining your own WordPress install is no small task.

Even technical hobbyists who may be able to setup and host their own
WordPress may simply be too busy to do so. Nevermind having to pay
another backup tax.

<blockquote style="color:#777; width:150px; line-height: 24px; float:right; margin:0 0 10px 10px; border:none; border-top:3px solid #999; border-bottom:3px solid #999; padding:5px 0 5px 0; font-family:Georgia, serif; font-style:italic; font-size:22px;">I think we need to take DiSo back to its egalitarian roots. - Tantek &Ccedil;elik</blockquote>

I think [Matt Mullenweg](http://ma.tt) himself realized all of this and created
[WordPress.com](http://wordpress.com) to provide hosted WordPress blogs for anyone to easily
create and use.

The trend of folks moving to hosted or semi-hosted services is
certainly real however, and frankly, as a result it feels like we've
lost ground from a DiSo perspective.

Even the [World Wide Web Consortium (W3C)](http://w3.org/), who is well known to always
host their own content, services, mailing lists etc., are using
[Identi.ca](http://identi.ca) and Twitter to post updates which are often not on their own w3.org site: (W3C [on identi.ca](http://identi.ca/w3c), [on Twitter](http://twitter.com/w3c)).

I'm no exception. I've been posting photos on [Flickr since 2005](http://www.flickr.com/photos/tantek/archives/),
[Twittering since 2006](http://www.whendidyoujointwitter.com/?username=t), and using PBWiki for my personal [wiki pages
since 2007](http://tantek.pbworks.com/FrontPage.2007-01-23-05-15-18).

Eventually I was posting more to other services ([mostly Twitter](http://twitter.com/t)) than
my own personal site which itself fell into neglect in late 2008 where
it stayed dormant until I began [rebuilding it this year](http://tantek.com/2010/001/t1/declaring-independence-building-it) with an eye
towards DiSo 2.0.

To answer the last part of your question "Who do you see as the target
user for DiSo-type technologies now?" I think we need to take DiSo
back to its egalitarian roots.

I'd like to see DiSo technologies support any individual or
organization who owns their own domain name.

You shouldn't have to be a sys-admin, a technologist, or even a hobbyist.

Maybe you're an independent consultant, or a small company, or maybe
you just firmly believe in owning your own content.  Maybe you worry
that hosted services can and will be bought and shutdown, suddenly
silencing millions of permalinks (e.g. [Yahoo/Geocities](http://www.flickr.com/photos/factoryjoe/4053508414/), [SixApart/Pownce](http://www.flickr.com/photos/laughingsquid/3075635490)). All those posts lost forever, like tears in rain (with apologies to the [respective](http://www.imdb.com/title/tt0076759/quotes?qt0440735) [movies](http://www.imdb.com/title/tt0083658/quotes?qt0378266)).

All it should take is:

1. Your own domain name (or names, including a custom shortener)
2. A Web site hosting service with a fairly average hosting company
3. FTP/SFTP/scp access to your site

It needs to be that easy.

People quickly understand all three of these:

1. Owning your own domain name is not much different than owning your
   own cell number and being able to take it with you (as opposed to
   sharing a home or work landline with a bunch of other people).
2. A Web site hosting service is similar to a mobile phone provider -
   you pay a monthly fee for your number (domain name) to work when
   people call (browse) it.
3. FTP access is just like moving files around in folders, which
   already has broad understanding thanks to the ubiquitous desktop
   metaphor.

Thus at a high level, with DiSo 2.0 we're really talking about two big
areas of shifts:

1. Modernization. Many technological changes have occurred over the
   past several years that need to be incorporated.

2. For the rest of us. Broader access and usability through a focus on
   friendlier and simpler user experience, from install, to use, to
   maintenance.

Fortunately these two areas of shifts are complementary and together
help drive a much better design and solution than either would on its
own.

**SI:** *When did you start thinking about the "next" version of DiSo, and what was the inspiration behind your list of 10 "features"?*

**T&Ccedil;:** I've been thinking about DiSo ever since the term was first coined, as
it served as a very powerful focusing force to help drive open web
standards development.  After having my own struggles with WordPress
(backups, vulnerabilities, exploits, and updates are all a pain) and
witnessing others' struggles such as [Eric Meyer's problems with
WordPress, MySQL, and UTF-8](http://meyerweb.com/eric/thoughts/2009/11/19/correcting-corrupted-characters/), it became clear to me that for DiSo to
reach a broader set of users, it needed an implementation
redefinition.

As far as my specific 10 features, I analyzed the above-mentioned
technological shifts over the past several years and realized that
each of them pointed towards key changes in what a personal site owner
needed to do.

Once I started sketching, prototyping, and constructing the building
blocks necessary to accommodate those changes, it became clear that
what I had started to design and implement very much fit the original
DiSo vision, and yet had replaced much of its initial technology
implementation stack.

In writing down a concise list of the building blocks it was clear
that I had come up with a modest proposal for a DiSo 2.0.  Now we just
have to finish building it.

---

More to come, stay tuned.
