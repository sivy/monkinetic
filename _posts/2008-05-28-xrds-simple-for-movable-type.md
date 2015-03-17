Slug: xrds-simple-for-movable-type
Date: 2008-05-28
Title: XRDS Simple for Movable Type
layout: post

[DiSo](http://diso-project.org) is built on the idea of implementing social networking concepts on existing standards where possible. One of those standards is [XRDS Simple](http://xrds-simple.net/core/1.0/), a service description and discovery format that is a part of several recent and upcoming standards including OpenID and OAuth. This weekend I decided to build a generalized service for Movable Type that implements XRDS.

## XRDS Simple for Movable Type (version 0.1)

XRDS Simple for Movable Type implements [XRDS Simple](http://xrds-simple.net/core/1.0/) service discovery. New web services like [OpenID](http://openid.net) and [OAuth](http://oauth.net) are encouraging the use of XRDS (eXtensible Resource Descriptor Sequence) (and specifically the new, simplified version) for service discovery.

XRDS Simple for Movable Type is a faceless application that gives plugins a way to register services to be advertised in the discovery document, similar to how plugins can register new streams with [Mark's Action Streams plugin](http://plugins.movabletype.org/action-streams/).

## Registering A Plugin's Services

Sample configuration YAML:

  xrds_services:
    openid2:
      type: http://specs.openid.net/auth/2.0/server
      # media_type:
      uri: http://endpoint.example.net
      namespace_id: openid
      namespace_uri: http://openid.net/xmlns/1.0
      priority: 10
      # local_id: http://redmonk.net
      local_id_handler: sub { "http://example.com" }

A plugin registers its services with XRDS Simple by including an <code>xrds_services</code> section in <code>config.yaml</code>. In that section are any number of service definitions, each listed under a unique identifier.

Within the service definition are a number of items which generally follow the XRDS Simple spec[1]. Of note are the <code>namespace\_id</code>, <code>namespace\_uri</code>, and <code>local\_id\_handler</code>.

Each service can register a namespace to be included in the xml declaration of the discovery document. The <code>namespace\_id</code> and <code>namespace\_uri</code> parameters are used to construct an <code>xsmlns:</code> attribute, like:

  xmlns:openid="http://openid.net/xmlns/1.0"

XRDS also supports the concept of a local id - an identifier for this site or user on the service the discovery document points to. The <code>local\_id</code> parameter will be added to the generated document in the service definition. Sometimes the <code>local\_id</code> will need to be set programatically. In that case, pass in a coderef as <code>local\_id\_handler</code>.

  local_id_handler: sub { "http://example.com" }

## What's it good for?

XRDS is developing as the discovery mechanism for a new generation of social applications. Eventually, Movable Type's OpenID server and delegation could be changed to use this simpler yaml-based configuration, and let the plugin generate the appropriate XRDS document, instead of [generating the document itself](http://code.sixapart.com/trac/mtplugins/browser/trunk/openid2-server/plugins/openid2-server/tmpl/xrds-server.tmpl). As Movable Type begins to offer OAuth-based services, those too can be listed - per the [OAuth Discovery spec](http://oauth.net/discovery/1.0).

## Check it out

As this is a faceless application, and there are currently no services in MT using this code, this is really developer-preview code. Download and peruse the plugin - it's very simple. I'd be interested in feedback on the code and the YAML format as well. Upcoming features include support for multiple Type and MediaType elements (per [the spec](http://xrds-simple.net/core/1.0/)), as well as support for passing a coderef for parameters instead of static values.

### Download

Download [XRDS Simple for Movable Type](http://diso.googlecode.com/files/XRDS_Simple_0.1.zip) or check it out from the [DiSo repository](http://code.google.com/p/diso/source/checkout).
