---
title: "Wiring Notational Velocity to a Github Wiki"
layout: post
tp_urlid: "6a010534988cd3970b0148c87620cd970c"
tp_favoritecount: 0
tp_commentcount: 5
tp_permalink: "http://www.monkinetic.com/2011/02/wiring-notational-velocity-to-a-github-wiki.html"
---
Warning: Serious nerditry to follow.

I use [Notational Velocity](http://notational.net/) as my note-taking app. It's a super-easy app that you can drive with the keyboard and syncs with [SimpleNote](http://simple-note.appspot.com), so I can also access my notes on my iPhone. Specifically, I use [nvalt](http://brettterpstra.com/code/notational-velocity-alt/), a fork of NV which adds some nice Markdown-specific features, including a preview.

I got to thinking about how I'd love to be able to edit a wiki through NV, which led to a brainstorm (in the shower, of course).

#### Update

I took some time and created a project to make this as easy as possible for any of you nerdy types who want to try this at home: [Set up your own Github-backed Notational Velocity](http://www.monkinetic.com/2011/02/set-up-your-own-github-backed-notational-velocity.html).

### Notational Velocity works with files

NV has a feature that lets you store your notes as formatted text (markdown) documents on the file system. If you select this option, all your files go in `~/Library/Application Support/Notational Data`. I thought "Github has a wiki... that uses files!"

My first step was to init a git repo in NV's Data directory:

    % cd ~/Library/Application Support/Notational Data
    % git init
    % git add .
    % git commit -m "initial add"

### Github works with files

Then, I went over to Github and created a private repository for my notes, at <https://github.com/sivy/notes-of-interest/wiki>. Sorry, it's private.

Then, I added that repo as a remote on my local repo:

    % git remote add origin git@github.com:sivy/Notes-Of-Interest.wiki.git
    % git push origin master

### I hate updating Github

Like most nerds, I hate doing things manually. I needed to get my changes pushed into the wiki regularly without needing to remember it.

    #!/usr/bin/env perl

    ###
    # I have a github wiki wired up to my Notational Velocity file system data store
    # It's an amusink little gizmo
    #
    my $USER='steve';
    my $status= `cd /Users/$USER/Library/Application\\ Support/Notational\\ Data/; /usr/local/git/bin/git status`;
    
    if ($status =~ /modified|untracked\ files\ present|deleted/) {
        my $out = `cd /Users/$USER/Library/Application\\ Support/Notational\\ Data/; /usr/local/git/bin/git add .; /usr/local/git/bin/git commit -a -m "NV Wiki Update"; /usr/local/git/bin/git push;`;
        `/usr/local/bin/growlnotify 'NV Wiki Update' -m "Your Notes Wiki was updated:\n$out"`;
    } else {
        print "NV Wiki Update: No update needed.\n"
    }

#### Launchd

I use OS X's built-in scheduler, `launchd`, to run my updater every minute. I created this XML .plist file and stored it in `~/Library/LaunchAgents/com.steveivy. updategithubwiki.plist`:

    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
    	<key>Disabled</key>
    	<false/>
    	<key>Label</key>
    	<string>com.steveivy.updategithubwiki</string>
    	<key>ProgramArguments</key>
    	<array>
    		<string>perl</string>
    		<string>/Users/steve/bin/update_gh_wiki.pl</string>
    	</array>
    	<key>QueueDirectories</key>
    	<array/>
    	<key>StartInterval</key>
    	<integer>300</integer>
    	<key>WatchPaths</key>
    	<array/>
    </dict>
    </plist>

Then:

    % launchctl load ~/Library/LaunchAgents/com.steveivy.updateghwiki.plist

Note that the perl script pipes the result through [Growl](http://growl.info/), so I don't have to even think about it - I just know that the wiki has been updated.

<img src="https://img.skitch.com/20110208-811s6hy7y7rfrrrrr3qrhsjxnr.pnghttps://img.skitch.com/20110208-811s6hy7y7rfrrrrr3qrhsjxnr.png" />

## Updates

* Updated to correct that the "store notes as files" feature is in the official Notational Velocity app -- you don't need nvalt to get it.
* I'm updating my watcher script to use OS X's File System Events (launchd's "watchpaths" feature). Stay tuned for progress.
* Added link to the original [Notational Velocity](http://notational.net/) as I seem to have overlooked it.
* While I wrote the launchd plist in [Veloci-Wiki](http://www.monkinetic.com/2011/02/set-up-your-own-github-backed-notational-velocity.html) to use `WatchPaths`, Notational Velocity saves so often (a good thing for not losing information) that Github was boing updated every 10-15 seconds. I've rewritten the plist to use `StartInterval` set to 300 (5 minutes) to reduce the amount of traffic.
