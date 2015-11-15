---
title: Using Hugo and Continuous Integration to easily build a Static Website
---

[Rachael Worthington](https://twitter.com/nothe) is working on getting [her blog](http://nothe.purplellamas.net/) set up as a static site built by [Hugo](http://gohugo.io), a new entry to the static-site generator field written in Go. She's having a few issues so I thought I'd write about a recent site I set up with Hugo and how that site is getting built/deployed.

I recently set up a static website for my father at <http://ivyarchpc.com>. His site doesn't change very often, and ought to load fairly quickly, so I figured rather than mess around with Wordpress or Drupal, I'd try Hugo. I'm pretty compfortable with Git so the site's source code is hosted on Bitbucket (free private repos, yay). And while I can manage git from the command line without *always* losing my cool, I tend to use [Github Desktop](https://desktop.github.com/) which acts much like any source code management app and keeps me from having to remember how to do partial-file commits.

I looked into several continuous integration services: [TravisCI](http://travisci.org), [CircleCI](http://circleci.com), and [Codeship](http://codeship.com), because I wanted to get the site built and deployed whenever I pushed code into Bitbucket.

[TravisCI](http://travisci.org) is popular among the open-source set because they have a free plan for open source projects, the next plan up is $129/mo and that's just not worth it for a couple of sites. [CircleCI](http://circleci.com) looked good but does not appear to support builds for Go-based projects.

[Codeship](http://codeship.com) supports Go, and I found this article about deploying a Hugo site using the service: [Hugo Deployment via Codeship](http://jice.lavocat.name/blog/2015/hugo-deployment-via-codeship/). My setup for <ivyarchpc.com> is similar.

I connected Codeship to my Bitbucket account, and crated a new project for the repo. I created two build pipelines (described in the article above, I won't re-iterate here) - one builds off of the `master` branch and deploys to the main site. The other build pipeline builds from a feature branch (`feature/responsive`, for a responsive update to the site) and deploys to a subdirectory of the main URL.

My main build pipeline uses a "Custom Script" build with the following script:

```shell
# get hugo
go get -v github.com/spf13/hugo
# build
hugo --verbose
# deploy via ftp
lftp -c "open -u $FTP_USERNAME,$FTP_PASSWORD $SERVER; set ssl:verify-certificate no; mirror -R ${HOME}/clone/_site ."
```

So, yeah.... FTP. The site is hosted on a cheap GoDaddy account that I don't run, so there you go.

Hope this helps out, Rachael, and good luck on your blog!
