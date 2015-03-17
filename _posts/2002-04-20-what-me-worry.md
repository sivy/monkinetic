Slug: what-me-worry
Date: 2002-04-20
Title: What? Me, Worry?
layout: post

Ok, I got up this am to find that at 10:00 pm last night a co-worker had deployed my most recent app... gah! Fortunately, it&#39;s a low-traffic site. However, later on I&#39;m watching the logs and suddenly I&#39;m watching the app go into an infinite loop. Akk!

*Sigh*. I finally worked it out, but the fix involved 1) finding the right place to redirect the app to at a certain point, 2) make the fix, 3) commit the changes to CVS, 4) checkout and build the app on the staging server, 5) rcopy the built app to the deployment server, and 6) restart the application instances.

*Ugh*. Of course, all the while the terminal that&#39;s tailing the logs is spouting log messages... <i>hurry... hurry... hurry...</i>
