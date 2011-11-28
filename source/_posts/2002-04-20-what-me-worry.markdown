---
title: "What? Me, Worry?"
layout: post
tp_urlid: "6a010534988cd3970b0120a5b35c4b970c"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2002/04/what-me-worry.html"
---
Ok, I got up this am to find that at 10:00 pm last night a co-worker had deployed my most recent app... gah! Fortunately, it&#39;s a low-traffic site. However, later on I&#39;m watching the logs and suddenly I&#39;m watching the app go into an infinite loop. Akk!

*Sigh*. I finally worked it out, but the fix involved 1) finding the right place to redirect the app to at a certain point, 2) make the fix, 3) commit the changes to CVS, 4) checkout and build the app on the staging server, 5) rcopy the built app to the deployment server, and 6) restart the application instances.

*Ugh*. Of course, all the while the terminal that&#39;s tailing the logs is spouting log messages... <i>hurry... hurry... hurry...</i>
