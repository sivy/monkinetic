---
title: "Converting From CVS to SVN"
layout: post
tp_urlid: "6a010534988cd3970b0120a5b362c2970c"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2005/03/converting-from-cvs-to-svn.html"
---
At work, we recently &quot;upgraded&quot; from using CVS for all our source control to using <a href="http://subversion.tigris.org">Subversion</a>. Subversion is what all the cool kids are using, but we chose it for several reasons, not  the least of which being intelligent tag and branch management. With CVS, managing our release branches was becoming more and more hairy, while creating a new branch with Subversion is almost trivial. Other bennies:

* Subversion runs over <a href="http://httpd.apache.org">http</a>, making <a href="http://svnbook.red-bean.com/en/1.0/svn-book.html#svn-ch-7-sect-2">browsing the repository incredibly easy</a>, if a bit spare.
* Versioned meta data called <a href="http://svnbook.red-bean.com/en/1.0/svn-book.html#svn-ch-7-sect-2">Properties</a>
* Subversion uses a property called <a href="http://svnbook.red-bean.com/en/1.0/svn-book.html#svn-ch-7-sect-3">externals</a> to identify that a module should include checkouts from other modules. This means that Our main portal app can automaticlly checkout each application from the repositry in the correct location without us having to checkout the portal, then cheack out each app into the portal directory.
* The optimized update/commit code uses diffs in both directions, making updates fast and compares almost instantaneous.
* <code>svn</code> commands are sensble, easy to learn, and based on CVS commands where appropriate 
* <a href="http://svnbook.red-bean.com/en/1.0/">Version Control With Subversion</a>
