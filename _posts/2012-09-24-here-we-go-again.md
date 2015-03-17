Title: Here we go again…
Date: 2012-09-24 7:17

### Friction

[This blog](http://monkinetic.com) has been through a couple different names, many different publishing platforms, and many different designs.

Most recently, in a fit of nerd pique, I ported monkinetic from [Typepad](http://typepad.com) to Jekyll/[Octpress](http://octopress.org/). I had been writing almost exclusively in [Markdown](http://daringfireball.net/projects/markdown/) for years, and I decided to go full-Markdown, with a statically generated site.

However, I quickly found that I'm not a command-line blogger. There was simply too much friction in having to:

* open a terminal
* find the right directory
* run a script to start a post
* edit in my editor of choice and save
* regenerate and republish the site

This also meant that I couldn't blog from my phone/tablet without a number of extra steps, and while I know I could have automated the process - with even more work - *how I blog* isn't what I want to spend my time fiddling with any more. I want to be able to *just write*.

## Scriptogr.am

Recently, a number of [Dropbox](http:dropbox.com)-based Markdown editors have shown up on the iOS store, and subsequently a few blogging engines have popped up that render from Markdown and operateo from your Dropbox account.

I checked out [Calepin](http://calepin.co), one of these services, but Calepin offers no way to customize your theme, and it looks like the service may not coninue.

My next stop was [Scriptogr.am](http://scriptogr.am), and this looks promising. After a couple hours running and re-running my body of posts through a custom script to munge them into the flavor of Markdown Scriptogram prefers, and a few false starts with bad filenames(Scriptogram doesn't seem to like filenames with "---" in them) I've got the blog ported over and it seems to be working pretty well. A couple things to note:

* I can write in an editor like [Mou](http://mouapp.com/) and then save to my Dropbox folder (Scriptogram creates an `/Apps/Scriptogram/posts` folder for you).
* Mou also supports posting directly to Scriptogram via their API. Haven't tried this yet.
* As with all Markdown-to-blog generators, upadting the site takes a while, but I can push the button on Scriptogram and let it do the work.
* I wish that it would auto-update after I've saved the post in Dropbox.

I'll do this for a little while, and if I seem to be writing more, I'll move the main domain over.