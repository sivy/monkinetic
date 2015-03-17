Title: 'Easy way to temporarily kill logging in Python'
Date: 2014-07-03 14:28

Ever want to just turn off that logger for a while in Python? Maybe while running tests or debugging? Even the CRITICAL messages?

Notice that the logging level contants (`logging.DEBUG` etc) actually represent [numeric values](https://docs.python.org/2/howto/logging.html#logging-levels):

    Level       Numeric value
    CRITICAL	50
    ERROR	    40
    WARNING	    30
    INFO	    20
    DEBUG	    10
    NOTSET 	    0

On a whim I tried:

    logging.getLogger('logger_to_turn_off').setLevel(100)

And *bam*, no logging, even the CRITICAL messages. Yes, most of you python nerds knew this, but I didn't, so *I* learned something at least!