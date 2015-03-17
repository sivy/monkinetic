Slug: plazes-to-kml
Date: 2007-04-09
Title: Plazes To KML
layout: post

UPDATE: this plazes2kml.rb now [has it&#39;s own page](http://redmonk.net/projects/plazes2kml)

[Chris Messina](http://factoryjoe.com/blog/) had a [cool idea](http://twitter.com/factoryjoe/statuses/22451001) to map his [plazes](http://beta.plazes.com/) history onto [Google Earth](http://earth.google.com/), but needed some programming help. So I whipped up a [quick ruby script](http://redmonk.net/svn/plazes2kml/) (GPL and MIT licensed) that can be run to grab the data and output it as [KML](http://earth.google.com/kml/). It runs from the command line, or from within [TextMate](http://macromates.com) with <tt>cmd-r</tt>.

Find it in my svn repo at:

From the usage:

    Usage: ruby plazes2kml.rb [options]
    plazes2kml downloads your Plazes history and converts
        it into a Google Earth KML file
        --username USERNAME          your developer key
        --dev-key DEVELOPER_KEY      your username
        --password PASSWORD          your password
        --user-key USER_KEY          your userkey
        --limit[=LIMIT]              How many results to return
        --from-date[=FROMDATE]       Start date for results
        --to-date[=TODATE]           End date for results
        --output[=OUTPUT]            Output to file
        --kill-dups[=y]              Kill duplicate plazes
    -h, --help                       Show this help message.
