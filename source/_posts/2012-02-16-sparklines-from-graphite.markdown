---
layout: post
title: "Sparklines from Graphite"
date: 2012-02-16 14:25
comments: true
categories: 
---

I decided I wanted [sparklines](http://www.edwardtufte.com/bboard/q-and-a-fetch-msg?msg_id=0001OR) for an app dashboard I'm working on, and wondered if I could get them straight from [Graphite's URL API](http://readthedocs.org/docs/graphite/en/latest/url-api.html). Turns out you can:

![Data Courtesy of Etsy](http://static.monkinetic.com/images/etsy_404_sparkline-20120216-142723.png)

    http://your.graphite.example.com/render\
    ?from=-2hours\
    &height=20\
    &until=now\
    &width=120\
    &hideGrid=true\
    &hideLegend=true\
    &hideAxes=true\
    &bgcolor=white
    &fgcolor=black\
    &margin=0\
    &colorList=black\
    &target=alias(stats.your.metric.here)