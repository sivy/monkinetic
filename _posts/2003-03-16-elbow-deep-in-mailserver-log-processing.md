Slug: elbow-deep-in-mailserver-log-processing
Date: 2003-03-16
Title: Elbow-deep in mail/server log processing
layout: post

I&#39;m determined today to get the pipeline working that gets my server logs from email, saves them to disk, and runs analog on them. I want to have reports on the sites I run, but I have to get the logs delivered in email.

So... I&#39;ve got fetchmail setup, procmail setup, and a custom attachment handler written in python so far. The procmail setup was the hardest so far. Getting the rules right was a royal pain.

So the fun part happens in <code>saveAttached.py</code>. This python script gets a matching message from procmail piped into it. It grabs the raw data from <code>stdin</code>, uses <code>email.Parser</code> to create an <code>email.Message</code> from which it extracts and saves out two versions of the log file that is attached to the email (one called access.log and one using the actual dated logfile name).

It then writes out the rawData back to <code>stdout</code> so that in the procmail rule it can be appended to the appropriate mailbox. After this is done and working I&#39;ll document it, since the procmail rules were a pain, and getting the right data from procmail into python was non-obvious (to me).

This is all running on RedHat 8, although I&#39;m guessing it would also work with little to no modification on any other unix.
