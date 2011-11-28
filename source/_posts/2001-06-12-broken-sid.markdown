---
title: "Broken Sid"
layout: post
tp_urlid: "6a010534988cd3970b0120a55cd99e970b"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2001/06/broken-sid.html"
---
*Sigh*. <a href="http://www.redmonk.net/software/Sid/">Sid</a> was just getting exciting... I had the linking code working the way I wanted it to, I had done some minor re-architecting which had made adding functionality easier, and things were going swimmingly. <p>

Then, of course, I got rambunctious, and things went downhill from there. I added a view subclass so that I could do drag-and-drop intelligently, and now Sid dies of SIGBUS after adding a link via drag-and-drop. Then it decided to munge its classpath somehow. argh.</p>
