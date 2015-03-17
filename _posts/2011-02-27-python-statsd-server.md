Slug: python-statsd-server
Date: 2011-02-27
Title: Python StatsD Server
layout: post

Thanks to Joshua Frederick (github user [jfred](https://github.com/jfred)), we now have an [actual Python implementation]() of the statsd server, so if you don't want to install node.js (though why wouldn't you? :-) ) you can run it all in python.


    from pystatsd import Client, Server

    # client usage
    sc = Client('example.org',8125)

    sc.timing('python_test.time',500)
    sc.increment('python_test.inc_int')
    sc.decrement('python_test.decr_int')

    # server usage
    srvr = Server(pct_threshold=90,
      graphite_port=2003, graphite_host='localhost')
    srvr.serve()

Get the code (now version 0.1.1) from [Github](https://github.com/sivy/py-statsd) or [Pypi]()
