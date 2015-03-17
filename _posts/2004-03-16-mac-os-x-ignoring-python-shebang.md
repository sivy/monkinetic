Slug: mac-os-x-ignoring-python-shebang
Date: 2004-03-16
Title: Mac OS X ignoring python shebang?!
layout: post

I&#39;ve recently added a second Python install on my OS X box, in /opt/Python. I&#39;ve got a script with a shebang at the top:

<code>#!/opt/Python/bin/python</code>

When I run the script like so:

<code>/opt/Python/bin/python alltests.py</code>

It runs fine. If I just:

<code>./alltests.py</code>

I get an error:

<code>Fatal Python error: Interpreter not initialized (version mismatch?)
<br />Abort trap
</code>

and I can confirm that it&#39;s running the script in the System python - the first two lines in the script are:

<code>import sys<br />
print sys.path</code>

Which prints:

<blockquote>
[&#39;/opt/myProj&#39;, &#39;/System/Library/Frameworks/Python.framework/Versions/2.3/lib/python23.zip&#39;, &#39;/System/Library/Frameworks/Python.framework/Versions/2.3/lib/python2.3&#39;, &#39;/System/Library/Frameworks/Python.framework/Versions/2.3/lib/python2.3/plat-darwin&#39;, &#39;/System/Library/Frameworks/Python.framework/Versions/2.3/lib/python2.3/plat-mac&#39;, &#39;/System/Library/Frameworks/Python.framework/Versions/2.3/lib/python2.3/plat-mac/lib-scriptpackages&#39;, &#39;/System/Library/Frameworks/Python.framework/Versions/2.3/lib/python2.3/lib-tk&#39;, &#39;/System/Library/Frameworks/Python.framework/Versions/2.3/lib/python2.3/lib-dynload&#39;, &#39;/System/Library/Frameworks/Python.framework/Versions/2.3/lib/python2.3/site-packages&#39;]
</blockquote>

So why is Mac OS X not using the python spec&#39;d in the shebang?

(I also checked the line endings  - unix.)
