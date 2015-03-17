Slug: rss-puller
Date: 2001-01-20
Title: RSS Puller
layout: post

After spending time learning just about every other interesting scripting language undet the sun, I realized recently that I had totally neglected a powerful tool, right under my nose: Applescript.

Now, Applescript is often maligned by the general scripting community as being a too verbose. Indeed, it&#39;s english-like syntax is fairly verbose, but incredibly flexible as well. This is not, however, going to be an Applescript tutorial, so I&#39;ll suffice it to say that I&#39;ve been learning Applescript, and in doing so decided to also throw in someof my other passions, XML and web-based news syndication.

So I&#39;ve created RSSPuller. RSSPuller is an applescript applet that works with a fantastic Mac outliner called BrainForest. Brainforest Professional is the desktop version of a Aportis&#39;s Palm outliner. BrainForest is also very scriptable, with a flexible object model for manipulating outlines. Here&#39;s what you end up with from RSSPuller:

<center><img src="http://media.redmonk.net/images/puller.gif" /></center>

Firstly, some background on RSS: the Resource Description Framework is an XML format that is used by news websites to let other sites syndicate their news headlines. Several other RSS readers have been developed, most notably Jeff Barr&#39;s <a href="http://www.vertexdev.com/HeadlineViewer/index.html">Headline Viewer</a>.

RSSPuller let&#39;s you create an outline of RSS sources, which are then filled in for you with the news headlines and links when the script is run. I&#39;m using the <a href="http://www.sophisticated.com/products/ido/ido_ss.html">iDo Script Scheduler</a> to run the script every 30 minutes.

The script takes an outline of RSS sources from Brainforest, and using URLs stored in the note field of the outline object, downloads the RSS file. NOte: it only downloads the files for those sources which have been checked off (marked as done) in the sources outline. In this way you can select which sources to get at any particular time.

RSSPuller then creates subnodes under each headline, and a subnode of the headline for the link. It also sets the start and due dates on the source node to the current time, so you can see when it was last updated.

The script could be more intelligent - I&#39;d like to have it use other features of BrainForest&#39;s rich set of tree-item properties. For example, it would be better to have the script run more often, and have it use the due dates to check when it should next download that file. Then I could set it to update less often for some sources, and more often others. I could also use the frequency property to store a number of minutes.

If you&#39;d like to try RSSPuller, you can <a href="http://media.redmonk.net/files/rssPuller.zip">download it</a>. You can also get the text <a href="http://www.redmonk.net/327">here</a>.

Of course, you&#39;ll need BrainForest Profession for the Macintosh ($30 from <a href="http://www.aportis.com/products/BrainForest/benefits.html">Aportis</a>)

There don&#39;t seem to be any show stopper bugs here, but I wouldn&#39;t suggest using this script yet if you&#39;re afraid to dig into Script Editor once in a while.
