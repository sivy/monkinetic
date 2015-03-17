Slug: the-new-typography-slate-the-headline
Date: 2007-04-11
Title: "The New Typography: Slate & The Headline"
layout: post

<a href="http://www.slate.com/id/2162844?nav=tap3"><img alt="The%20trouble%20with%20Fred%20Thompson.%20-%20By%20John%20Dickerson%20-%20Slate%20Magazine" class="at-xid-6a010534988cd3970b0120a5b36bc9970c" src="http://steveivy.typepad.com/.a/6a010534988cd3970b0120a5b36bc9970c-pi" style="border: 1px solid #ccc; margin: 20px 0;" /></a>

I love this example from Slate. I don&#39;t know how long they&#39;ve been setting headlines like this, but the headline/deck/byline on this article is snappy. Arial looks good big. Who knew? The subhead, with it&#39;s small-caps effect in Georgia, really echos what you see in print newspapers, and gives Slate a visual gravity that compliments the quality writing.

    .article_top h1 {0207_slate_styles... (line 1106)
        font-family:Arial;
        font-size:36px;
        font-size-adjust:none;
        font-stretch:normal;
        font-style:normal;
        font-variant:normal;
        font-weight:bold;
        letter-spacing:0.02em;
        line-height:39px;
    }
    h1 {
        margin:0pt;
        padding:0pt;
    }

    .article_top .subhead {
        display:block;
        font-family:Georgia;
        font-size:16px;
        font-size-adjust:none;
        font-stretch:normal;
        font-style:normal;
        font-variant:normal;
        font-weight:normal;
        letter-spacing:0.02em;
        line-height:20px;
        text-transform:uppercase;
    }

    article_top .byline {0207_slate_styles... (line 1116)
        color:#660033;
        font-family:Georgia;
        font-size:12px;
        font-size-adjust:none;
        font-stretch:normal;
        font-style:italic;
        font-variant:normal;
        font-weight:normal;
        line-height:20px;
        text-transform:none;
    }

This screenshot brought to you by the letter S, for [Skitch](http://plasq.com/skitch).

([The New Typography](http://redmonk.net/tags/thenewtypography) is a series of posts of indeterminate usefulness showcasing interesting uses of typography online and how the designer implemented them. Type-as-image need not apply.)
