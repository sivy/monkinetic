Slug: turck-mmcache-failing-on-mac-os-x-1037-client
Date: 2005-02-02
Title: Turck MMCache failing on Mac OS X 10.3.7 (client)
layout: post

I&#39;m trying to get the php accelerator <a href="http://turck-mmcache.sourceforge.net/index_old.html">MMCache</a> running on a Mac running Mac OS X 10.3.7, and it&#39;s failing. I&#39;ve followed the <a href="http://jacken.dyndns.org/blog/archives/2004/07/13/installing-turck-mmcache-php-accelerator/">install instructions on Jacken&#39;s weblog</a>, and tried the <a href="http://www.appletalk.com.au/articles/index.php?article=3903">install process described in this Appletalk Australia article</a>.

I did have to install fink, as described in Jacken&#39;s post. After completing the install, when I restart apache

> <code>sudo apachectl graceful</code>

it says httpd started, and I do *not* get any errors in apache&#39;s <code>error_log</code>, but <code>httpd</code> afterward is not running.

> <code>myhost:/tmp/turck-mmcache-2.4.6 steve$ ps -ax | grep -v grep | grep httpd<br />752  p2  S+     0:00.00 tail -f /var/log/httpd/error_log</code>

Restarting apache again, <code>error_log</code> includes the following line:

><code>[Tue Feb  1 09:25:45 2005] [warn] pid file /private/var/run/httpd.pid overwritten -- Unclean shutdown of previous Apache run?</code>

<code>mmcache.so</code> is in <code>/usr/local/php/extensions/no-debug-non-zts-20020429/</code>, as described in the recommended modifications to php.ini:

<blockquote><code>; Turck MMCache<br />zend_extension=&quot;/usr/local/php/extensions/no-debug-non-zts-20020429/mmcache.so&quot;<br />mmcache.shm_size=&quot;16&quot;<br />mmcache.cache_dir=&quot;/tmp/mmcache&quot;<br />mmcache.enable=&quot;1&quot;<br />mmcache.optimizer=&quot;1&quot;<br />mmcache.check_mtime=&quot;1&quot;<br />mmcache.debug=&quot;0&quot;<br />mmcache.filter=&quot;&quot;<br />mmcache.shm_max=&quot;0&quot;<br />mmcache.shm_ttl=&quot;0&quot;<br />mmcache.shm_prune_period=&quot;0&quot;<br />mmcache.shm_only=&quot;0&quot;<br />mmcache.compress=&quot;1&quot;</code></blockquote>

I would be very interested to know if anyone has gotten this working or, better yet, if they had this same issue and found a workaround.
