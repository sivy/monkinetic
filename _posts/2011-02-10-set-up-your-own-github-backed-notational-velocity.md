Slug: set-up-your-own-github-backed-notational-velocity
Date: 2011-02-10
Title: Set up your own Github-backed Notational Velocity
layout: post


[When I last posted](http://www.monkinetic.com/2011/02/wiring-notational-velocity-to-a-github-wiki.html), I described how I was using a Github-backed wiki as my notes directory in [Notational Velocity](http://notational.net) (and the fork I use, [nvalt](http://brettterpstra.com/code/notational-velocity-alt/)). That post got some interest, so I decided to try and make the process a bit easier by creating a project for it on GitHub: [Veloci-Wiki](https://github.com/sivy/veloci-wiki). In  nutshell, once you have a github wiki checked out locally, you checkout Veloci-Wiki and pass the path to your wiki clone to the setup script:

    veloci-wiki% perl setup.pl <path/to/your/wiki/clone>

...and Veloci-wiki creates and installs the launchd config file for you, which runs the `vw-update.pl` script (in the veloci-wiki repo) against your wiki checkout anytime a file is changed, added, or removed there, pushing the changes to your Github wiki:

<img src="https://img.skitch.com/20110210-fgqmw673pkh773gc6rewj7sqaw.png" style="border: 1px solid #999" />

Full instructions are in the [README](https://github.com/sivy/veloci-wiki/blob/master/README.md). Happy hacking, and you can report any issues [on Github](https://github.com/sivy/veloci-wiki/issues), leave a comment, or email me (steveivy @ gmail).
