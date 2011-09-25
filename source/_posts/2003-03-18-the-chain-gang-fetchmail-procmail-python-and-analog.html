---
title: "The Chain Gang: fetchmail, procmail, python, and analog"
layout: post
tp_urlid: "6a010534988cd3970b0120a55ce0ae970b"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2003/03/the-chain-gang-fetchmail-procmail-python-and-analog.html"
---
<style>
    .comment { color:#666666; }
</style>
Ok, so I finally got my server log processing chain working the way I want, and I figured I&#39;d better document it 1) because I&#39;m going to forget very soon how to do it, and 2) because I still get hits from Google for the word &#39;fetchmail&#39; from the last time I mentioned it, so there&#39;s obviously an interest.

First, a description of the problem area, then into the howto.

I run several sites on Conversant, and I&#39;m subscribed to the server logs, meaning each night around 11:00 pm I get the web server log file emailed to me, in NCSA Extended format. I&#39;d been subscribed to the log at my usual address, and was manually saving out the log files and running analog on them. Having recently acquired a pc running linux, I decided that I wanted to move this process to that box and automate it.

So, I was going to use fetchmail to get the email, procmail to sort it, some other script to pull out the attached files and save them to the proper place, then schedule a cron job to run analog on the log files later. I&#39;m going to explain this process from the POV of a unix user, since both my boxen <a href="http://www.apple.com/macosx">run</a> <a href="http://www.redhat.com">unix</a>. It would be adapted for use on Windows, I suppose, but I&#39;m not certain about fetchmail and procmail. (Cygwin, perhaps?)

So, the tools we&#39;ll need:

<ul>
    <li><a href="http://catb.org/~esr/fetchmail/">fetchmail</a></li>
    <li><a href="http://www.promail.org">procmail</a></li>
    <li><a href="http://www.python.org">python</a></li>
    <li>cron</li>
    <li><a href="http://www.analog.cx">analog</a></li>
</ul>

<h3>Collecting our tools</h3>

<code>fetchmail</code> and <code>procmail</code> should be found on almost any unix. Otherwise you can get them from the links above. They should compile and install very easily using the typical <code>configure</code>, <code>make</code>, <code>make install</code> process.

I used python for my mail processing script because I had it on the machine and it was easier than doing it in Perl. Python can be found at python.org and also is available for most any OS.

Analog is a great webserver log analysis tool, and is also available for most any OS. Download it from the above link and follow the installation instructions. (Basically the same - <code>configure</code>, <code>make</code>, <code>make install</code>).

<h3>Step One: <code>fetchmail</code></h3>

<code>fetchmail</code> is a simple utility that does one thing, and does it well. It requires a single configuration file in the home directory of the user it&#39;s going to be running as, <code>.fetchmailrc</code>.

This is my <code>.fetchmailrc</code>:
<blockquote><code>poll mail.redmonk.net protocol pop3 username &lt;username> password &lt;pwd> is
&quot;logs&quot; here
</code></blockquote>

That&#39;s all there is to it. <code>fetchmail</code> has a lot of options you can read about by running <code>man fetchmail</code>, but these are the most common I think. Later we&#39;ll be running <code>fetchmail</code> via <code>cron</code>, but you can also run it in daemon mode by appending <code>-daemon &lt;numberOfSeconds></code> to the call to fetchmail the first time you run it. After that it will run every &lt;numberOfSeconds> until you call it again with <code>-daemon 0</code>.

BTW - you may have to create a <code>~/.forward</code> file if your fetchmail is not configured to run procmail by default. Contents:

<blockquote>
<pre>
/path/to/procmail
</pre>
</blockquote>

<h3>Step Two: <code>procmail</code></h3>

<code>procmail</code> was a pain to configure, largely because I couldn&#39;t find a decent reference for the rule syntax used in <code>.procmailrc</code>, so I had to do a lot of trial and error. The best reference I <i>did</i> find was <a href="http://www.uwasa.fi/~ts/info/proctips.html">Timo&#39;s procmail tips and recipes</a>, and it was invaluable.

Here are the relevant sections of my <code>.procmailrc</code> file:

Setup:<blockquote>
<pre>
SHELL=/bin/sh
DEFAULT=/var/mail/logs

<div class="comment"># I created a user called &#39;logs&#39; just for this purpose.
# The cron jobs are in this user&#39;s crontab too.
# replace &#39;logs&#39; with the name of the user procmail is running for.
</div> 
LOGFILE=/home/logs/procmail.log 

<div class="comment"># Troubleshooting:
</div> 
VERBOSE=yes
LOGABSTRACT=all

<div class="comment"># Shortcuts:
</div> 
BASEDIR=/home/logs/slproc
LOGDIR=/data/log/sites
MAILDIR=/data/mail/
</pre></blockquote>

This is the main rule. I&#39;ve got three of these, one for each server&#39;s log file email that fetchmail is expected to receive.

<blockquote>
<pre>
<div class="comment"># :0 starts the rule, &#39;f&#39; means the rule is a filter, 
# &#39;w&#39; means wait for the piped process to complete 
# before continuing
</div> 
:0 fw

<div class="comment"># Is it is from logs@free-conversant.com?
</div> 
* $ ^From:.*logs@free-conversant.com.*

<div class="comment"># Is it from the redmonk domain and site?
# My emails come in with a subject something like:
# &quot;NCSA Extended for redmonk.redmonk (3/10/03)&quot;
</div> 
* ^Subject:.*redmonk\.redmonk.*

<div class="comment"># Pipe the entire message text through the saveAttached.py script
# saveAttached.py takes one argument: the path of a directory to save
# the attachment in.
# saveAttached.py prints the raw message back out on stdout,
# so that this line can still append it to the appropriate mail file.
</div> 
 ${BASEDIR}/saveAttached.py ${LOGDIR}/redmonk/ \
>> ${MAILDIR}/redmonk.mail
</pre>
</blockquote>

When developing procmail rules, I cannot emphasize how much time and energy it saved me to follow the directions on Timo&#39;s procmail tips page for <a href="http://www.uwasa.fi/~ts/info/proctips.html#testbench">creating a testbench</a> to test individual rules. Essentially you create a separate procmail.rc file with your rules in it, you save out a message that matches the rule you&#39;re trying to test, and feed them both to procmail like so:<blockquote>
<code>procmail procmail.rc &lt; test.msg</code>
</blockquote>
The direction on Timo&#39;s page show you how to create a shell script to run the test for you while writing out and letting you view the procmail log so you can debug the rule.

As I said before, I&#39;ve got three of these rules, but someone with more experience than I could probably grab the site name from the email title and use that to pass to the python script to tell it where to save the log file and what mail file to append the message to. I&#39;ve got my log directories setup in /data/log/sites/&lt;sitename>, and the mail files are named &lt;sitename>.mail.

<h3>Step Three: saveAttached.py</h3>

In studying procmail it looked like it was going to be impossible, or at least beyond my limited understanding, to use procmail to pull out and decode the MIME attached log files. So, I decided to write a python filter script that would take the raw message on <code>stdin</code>, pull out the attached file and decode it, and save the log file out to disk.

The script is here:



It&#39;s fairly straight forward, one bit I had to research was how to get the data from <code>stdin</code>, as I only had experience<strong></strong> in using <code>sys.argv</code>. It was stupidly easy:<blockquote>
<code>
rawData = sys.stdin.read()
</code>
</blockquote>
The other was how to manipulate the raw email message. Python has a built-in module, <a href="http://www.python.org/doc/lib/module-email.html"><code>email</code></a> which makes short work of parsing the data:<blockquote>
<pre>
p=email.Parser.Parser()
msg=p.parsestr(rawData)

for part in msg.walk():
    if part.get_main_type()==&quot;multipart&quot;:
        continue
    name=part.get_param(&quot;name&quot;)
    if name==None:
        name=&quot;noName&quot;
    if (name.endswith(&#39;.log&#39;)):
        # grab the logfile
        f=open(dirPath+name,&quot;wb&quot;)
        f2=open(dirPath+&#39;access.log&#39;,&quot;wb&quot;)
        f.write(part.get_payload(decode=1))
        f2.write(part.get_payload(decode=1))
        f.close()
        f2.close()
</pre>
</blockquote>

<h3>Step Four: cron</h3>

Now that we have the system in place for downloading and storing the log files, we just need to tell it when to run. For that we have <code>cron</code>, the canonical unix scheduler. 

Here are the relevant portions of my crontab:<blockquote>
<pre>
<div class="comment"># minute hour dayOfMonth monthOfYear weekDay command
# fetchmail
</div>
0 1 1-31 * * /usr/bin/fetchmail

<div class="comment"># analog
</div>
0 2 1-31 * * /usr/local/bin/analog -g/home/logs/analog/rm-analog.cfg
</pre>
</blockquote>
To edit your crontab, make sure your EDITOR environment variable is set first (this is in tcsh):<blockquote>
<pre>
setenv EDITOR pico
</pre>
</blockquote>
Or, of course, <code>vi</code> or <code>emacs</code>, or whatever. Then:<blockquote>
<pre>
crontab -e
</pre>
</blockquote>
Will open your crontab in your favorite editor (as a tmp file). Once you&#39;ve made your changes, save, and exit, <code>cron</code> will install your edited crontab.

Now, back to my crontab, er, our crontab.<blockquote>
<pre>
<div class="comment"># minute hour dayOfMonth monthOfYear weekDay command
# fetchmail
</div>
0 1 1-31 * * /usr/bin/fetchmail
</pre>
</blockquote>
This line tells <code>cron</code> to run fetchmail at minute 0 of hour 1 (1:00 am) of every day (1-31) of every month of every year blah blah blah...

I could also (in retrospect) have used * as the value for month. This is the &quot;workhorse&quot; line that triggers our pipeline: <code>fetchmail</code> passes on to <code>procmail</code> by default, so after <code>fetchmail</code> runs, it automatically kicks off <code>procmail</code> to run it&#39;s filters, which calls out <code>saveAttached.py</code> script to save out the attached files. At this point, the logs files are in /data/log/sites/&lt;sitename>. An hour later (just for safety&#39;s sake) <code>cron</code> runs the log analyzer, <code>analog</code><blockquote>
<pre>
<div class="comment"># analog
</div>
0 2 1-31 * * /usr/local/bin/analog -g/home/logs/analog/rm-analog.cfg
</pre>
</blockquote>
This is where stage one of the pipeline ends, and stage two begins. This line runs <code>analog</code> at 2 am, every day of every... You get the idea. It calls <code>analog</code>, passing in a custom config file, <code>rm-analog.cfg</code>.

<h3>Step Five: analog</h3>

<code>rm-analog.cfg</code> is just a normal analog.cfg file with various options turned on and off, and with LOGFILE set to the /data/log/sites/redmonk/ directory. Here are some interesting bits of my config file:
<blockquote>
<pre>
LOGFILE /data/log/sites/redmonk/redmonk.redmonk.*.*
OUTFILE /home/logs/public_html/reports/redmonk/index.html
</pre>
</blockquote>

Because this is linux, I can turn on reverse DNS lookups (it&#39;s broken on Mac OS X)<blockquote>
<pre>
DNS WRITE
</pre>
</blockquote>

And because it runs overnight I&#39;m not worried about the length of time it takes to run when there are a number of new hosts to look up.

One last thing in my <code>rm-analog.cfg</code> file that I like particularly, even though it&#39;s unrelated to the pipeline. Being a weblogger, I like seeing activity on my RSS feed reflected in the results, so I&#39;ve added...<blockquote>
<pre>
PAGEINCLUDE *.rss
TYPEALIAS .rss  &quot;.rss   [Rich Site Summary]&quot;
</pre>
</blockquote>

...to my configuration.

I know there are a few ways I could make this process more efficient. If you have comments or suggestions, you can <a href="mailto:steve@redmonk.net">email me</a>, or leave your notes <a href="&lt;!--#siteurl-->&lt;!--#msgnum-->/reply">here</a>, and I&#39;ll update this page (as well as my own setup!)
