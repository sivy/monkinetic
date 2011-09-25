---
title: "PHP, WordPress, Ruby, and DiSo"
layout: post
tp_urlid: "6a010534988cd3970b0120a5b3677f970c"
tp_favoritecount: 0
tp_commentcount: 3
tp_permalink: "http://www.monkinetic.com/2008/01/php-wordpress-ruby-and-diso.html"
---
Tim Bray has a ongoing (ha) series of predictions for 2008, generated as a response to [this request](http://www.tbray.org/ongoing/When/200x/2008/01/01/Predictions) from Sun.

Recently, Tim posted [Problems With PHP](http://www.tbray.org/ongoing/When/200x/2008/01/04/Predictions-PHP), which left me thinking and ambivalent, and found me composing this response in my head at midnight.

## PHP - Easy but Ugly

Tim says:

>Yes, ...  Its enabled huge numbers of people to create decent Web sites without having to learn too much or try too hard; a very good thing. Also, it runs pretty fast. Plus, its been used to build some of the most instructive and useful apps out there, like MediaWiki and WordPress.

PHP has huge adoption among ISPs and shared hosting providers for this very fact. People can create "dynamic" (remember when that meant "my site has a form!") websites very easily with little work on the provider's part.

This, in my opinion, has been the secret to WordPress's success as well. Your average user, with just enough FTP experience to hang themselves and a helpful provider, can get WordPress up and running in about 15 minutes (10 to request the db and 5 to install WordPress). Adding plugins requires only a minute to download one and ftp it up to the site, and a minute to enable it in the admin.

> ... and No  On the other hand, speaking as an actual computer programmer, I really dislike PHP. I find it ugly and un-modular and theres something about it that encourages people to write horrible code. Were talking serious maintainability pain.

No argument from me. PHP ain't pretty. And it's isn't particularly easy to write re-usable code, PEAR notwithstanding.

But, I keep coming back to the fact that PHP is so dang easy to work in. And reload-on-refresh (see below) means that changes get reflected immediately, making hacking really really fast. WordPress is pretty easy to extend, it has a *ton* of useful hooks for plugin developers to hang interesting stuff off on -- [and they have](http://wordpress.org/extend)! 

## Meanwhile...

The other language I've really taken a shine to is Ruby. Not Rails so much, which I still find to be too full of magic for comfort. As an old-skool web guy I still prefer seeing some metal from time to time. But I really really enjoy Ruby for shell-scripting tasks - I've written several file validators at work and I can whip them out and re-iterate, adding features and such quite quickly. Ruby took just enough from Perl to make it fun (it had me at <code>var =~ /re/</code>). I've even branched out into small web apps using [camping](http://code.whytheluckystiff.net/camping), but I confess to even a slight bit of unease at the behind-the-scenes shenanigans it plays.

Now, as great as Ruby-the-language is, I don't see anyone writing an app like WordPress in Ruby, and I don't see it getting the adoption that PHP has for a while, if ever. Why? Well, for the reasons I outlined above.

1) PHP's greatest ugliness is also its greatest strength: You can mix PHP and HTML right in the same file, and most users do. It's awful from visual and maintenance viewpoints. BUT you can point any recent Apache at that <code>.php</code> file and it will spit out pretty much whatever HTML you told it to. It's stinkin' simple. 

With the possible exception of the ill-fated mod_ruby, I don't know of a common way to do the same with Ruby. You have ERB for PHP/ASP-style code delimiters, but even ERB is typically used with an app framework of sorts (see the next point).

2) Reload-on-refresh: Hit reload on your browser window showing that aforementioned <code>.php</code> file, and it will re-run the script. Any changes you've made will be reflected in the page. Now this has all kinds of scalability issues, I know, and there are ways around it. But the default is reload-on-refresh, and many apps - including WordPress - work great this way. 

Again, with the exception of the defunct mod_ruby, the way to put Ruby on the web is via Rails, or to a much lesser extend, camping. Both make use of persistent applications, which means that to load new code the application has to be restarted, which also usually means killing a FastCGI process via a shell command or automated build/deploy process. [*[Update #1](#reload_update)]

While perfectly acceptable for applications with no user extensibility (BaseCamp, HighRise, Twitter, etc.), apps like WordPress are expected to be modified by non-highly-technical users via templates, plugins, etc. and they're not all going to have shell access or the knowledge of the command-line necessary to keep a persistent app running, or reload it when needed.

<a href="http://www.youtube.com/watch?v=-3ODe9mqoDE"><img  alt="tron_bot" class="at-xid-6a010534988cd3970b0120a5b36783970c " src="http://steveivy.typepad.com/.a/6a010534988cd3970b0120a5b36783970c-pi" style="float:right; margin: 0 0 8px 8px; padding: 1px; border: 1px solid #ccc;" /></a>
3) Persistent apps are unloved by shared hosting providers: [Dreamhost](http://dreamhost.com), my hosting provider, is an awesome host. They even provide Ruby and Rails pre-installed on their servers. But getting a persistent app up and running while avoiding the memory-and-process hunter killer bots is really frustrating.

##Outro

Well, there's more I could say that would not necessarily add any clarity to my points. Perhaps I can end with a request.

My Ruby knowledge is limited, I'll confess. I've written some Rails code, but got frustrated trying to find a place to host it and gave up on the whole Rails thing. Some of what I've described in this post may be wrong, and I hope those of you who know better will set me straight gently. But what I want to know is: 

**Could an app like WordPress, easy for users of medium technical knowledge to run and customize, easy for developers to extend, and easy for hosts to provide, be written in Ruby? If so, how?**

For the [DiSo project](http://diso-project.org), Chris and I decided to start with WordPress because it had all the attributes I've described. We want to branch our into Ruby at some point, and I consider this discussion to be extremely important to that process.

<a name="reload_update"></a>Update #1: Tim pinged to remind me - idiot! - that Rails will happily reload code while in dev mode. Sorry for the oversight.

Update #2: Weird, I wonder if the Dreamhost guys saw my post, or if they saw Tim's post, or if it was just [a massive coincidence](http://blog.dreamhost.com/2008/01/07/how-ruby-on-rails-could-be-much-better/).
