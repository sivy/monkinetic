Slug: broken-sid
Date: 2001-06-12
Title: Broken Sid
layout: post

*Sigh*. <a href="http://www.redmonk.net/software/Sid/">Sid</a> was just getting exciting... I had the linking code working the way I wanted it to, I had done some minor re-architecting which had made adding functionality easier, and things were going swimmingly. <p>

Then, of course, I got rambunctious, and things went downhill from there. I added a view subclass so that I could do drag-and-drop intelligently, and now Sid dies of SIGBUS after adding a link via drag-and-drop. Then it decided to munge its classpath somehow. argh.</p>
