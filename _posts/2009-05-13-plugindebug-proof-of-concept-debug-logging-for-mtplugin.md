Slug: plugindebug-proof-of-concept-debug-logging-for-mtplugin
Date: 2009-05-13
Title: "PluginDebug: proof-of-concept debug logging for MT::Plugin"
layout: post

As a developer for [SixApart](http://sixapart.com) Services, one thing I do a lot of is put debug code in plugins I'm working on to output values to Movable Type's backend activity log. This can get messy, and I usually end up writing a one-off debuglog function for each plugin to make this more convenient.

Well, I finally got tired of the run-around and wrote a proof-of-concept plugin that adds a debuglog function to MT::Plugin.

It works by looking for a config directive in `mt-config.cgi`:

  PluginDebug mypluginid, myotherpluginid

If the id of the currentplugin is in that list, then calling:

  $plugin-&gt;debuglog($msg);

...will add the message to the activity log with a log level of debug. For the lazy, you can also use 'all' as the value of PluginDebug:

  PluginDebug all

And any call to `$plugin-&gt;debug` will get logged. My hope is to see this get added to MT core soon (hence the "proof of concept" status) but I welcome any thoughts on how to make this better for developers.
