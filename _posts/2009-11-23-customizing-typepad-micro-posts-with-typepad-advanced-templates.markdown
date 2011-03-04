---
title: "Customizing TypePad Micro posts with TypePad Advanced Templates"
layout: post
tp_urlid: "6a010534988cd3970b012875ca663f970c"
tp_favoritecount: 6
tp_commentcount: 3
tp_permalink: "http://www.monkinetic.com/2009/11/customizing-typepad-micro-posts-with-typepad-advanced-templates.html"
---
I was pleasantly surprised when I realized that the new features included with [TypePad Micro](http://everything.typepad.com/blog/2009/11/typepad-micro-blogging-announcement.html) (Six Apart's free microblogging-focused version of TypePad) worked seamlessly with my TypePad Pro blog.

What I wasn't as happy about was the way that my Micro posts got a bit lost in the front page of my blog. I run a customized theme here on Ye Olde [monkinetic weblog](http://www.monkinetic.com), using TypePad's Advanced Templates feature. This feature lets those of us with the chops (like Six Apart's [Services](http://sixapart.com/services) team - plug plug plug) create our own custom templates and themes.

So back to Micro posts: these posts don't get a post title, so they sort of blend in with the rest of the page, since they're not set off by the larger title text that I usually use for my post titles. So, with some fiddling, I figured out how to set off my Micro posts in a  way that I really like.

## Template Code

The first thing to do was to find a way to identify which posts were Micro posts so that I could target them with CSS. So, in my Main Index template (actually a template module I use for entries), I added this in the entry code:

    <div class="entry<MTIfNonEmpty tag="MTEntryTitle"><MTElse>
    micro</MTElse></MTIfNonEmpty>" id="entry-<$MTEntryID$>">

Because Micro posts don't have post titles, I use TypePad's `MTIfNonEmpty` and `MTElse` tags to add a "micro" class to posts that don't have a title. That's the important part.

## The CSS Code

In my stylesheet, I then added several rules to target the newly-classed 'micro' posts:

    /* styles for Micro posts */

    div.micro {
        margin: 10px 10px 15px 0px;
        background-image: url('pointer.gif');
        background-position: 0px 11px;
        background-repeat: no-repeat;
    }

    div.micro .entry-content {
        margin-left: 10px;
        border-left: 2px solid #2bbaf1;
        padding-left: 10px;   
    }

    div.micro .entry-body {
        font-weight: bold;
        color: #2bbaf1;
    }

## The Result

Now, my Micro posts get a little "speech pointer" and border attached, to call them out as quick posts:

<img class="asset  asset-image at-xid-6a010534988cd3970b0120a6c8aca2970b" alt="Monkinetic weblog | monkinetic.com" title="Monkinetic weblog | monkinetic.com" src="http://steveivy.typepad.com/.a/6a010534988cd3970b0120a6c8aca2970b-800wi" border="0"  />

With a little code and CSS fiddling, you can style your TypePad Micro posts so that they don't get lost amid the other blog posts.
