Slug: ie7-radio-buttons-do-not-send-onchange-event-correctly
Date: 2007-02-20
Title: IE7 radio buttons do not send onchange event correctly
layout: post

Unbelievable. IE(6/7?) [does not send onchange events for radio buttons correctly](http://blogs.msdn.com/dmassy/archive/2006/11/30/vpc-to-run-ie6-and-ie7-on-the-same-machine.aspx#1184671).

&gt;7.) Radio buttons, do not fire the onchange event, until another element is given the focus.  This is plain wrong, as any attempt to retrieve the value returns the new, changed value, thus the event most certainly occurred.
