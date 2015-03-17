Slug: argh-debugging-cheetah-template-engine
Date: 2003-03-08
Title: Argh! Debugging Cheetah template engine
layout: post

I&#39;m trying to use the <a href="http://www.cheetahtemplate.org">Cheetah template engine</a> - a python-based engine along the lines of <a href="http://jakarta.apache.org/velocity/">Velocity</a> - and debugging the template is getting very very annoying.

I have a data structure that looks like this (<a --="--" href="&lt;!--#enclosure filename=" linkonly="true" output.txt"="output.txt&quot;" urlonly="true">&quot;&gt;output.txt</a>) and a template that looks like this (<a --="--" feedreport.tmpl"="feedReport.tmpl&quot;" href="&lt;!--#enclosure filename=" linkonly="true" urlonly="true">&quot;&gt;feedReport.tmpl</a>).

As far as I can tell the template code matches the datastructure, and I&#39;m passing in the data (the dictionary described in output.txt) like so:

<code>t = Template(file=&quot;feedReport.tmpl&quot;, searchList=[data])</code>

But the template is outputting nothing! I looked for an email address for <a href="http://www.intertwingly.net/blog/">Sam Ruby</a> (who&#39;s using Cheetah for his weblog engine) to no avail. (Maybe he&#39;ll see this post in <a href="http://www.technorati.com">Technorati</a> and come to my aid! -))

If anyone out there is familiar with Cheetah I could really use some help.
