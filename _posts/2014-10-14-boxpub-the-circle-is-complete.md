Title: "boxpub: The circle is complete"
Date: 2014-10-14 08:27

My new blog software - [boxpub](https://github.com/sivy), which runs this site - got a new feature last night. Fairly recently, Dropbox implemented webhooks for applications, so I added two simple webhook handlers (for the verification step and the data step). How am I using this?

I run this site behind [Fastly](http://fastly.com/), a great caching proxy service / CDN based on Varnish. I use it because it basically gets me an insanely fast front end to my little gunicorn app running on a fairly meager [Linode](http://linode.com). Fastly caches all my HTML permanently (the way I have it configured) unless explicitly invalidated. How do I invalidate? Fastly supports a great Varnish setup that allows me to send a PURGE request (`curl -X PURGE <url>`) to my home page and Fastly invalidates the cache for that page, and it is re-fetched and generated on next request. Think of it as a just-in-time in-memory static site generator (buzzword bomb).

So, in the current na&#239;ve implementation:

    @boxpub.route('/webhooks/dropbox', methods=['POST'])
    def dropbox_webhook_handle():
        url = CONFIG.SITE_DATA['url']
        try:
            log.info('PURGING site index')
            purge_resp = requests.request('PURGE', url)
            log.debug(purge_resp.text)
            resp = make_response(purge_resp.text)
        except Exception, e:
            log.exception(e)
            resp = make_response("ERR: " + e.message)
        log.debug(resp)
        return resp

Still to do is determining what post or page changed, and purging those particular URLs.

