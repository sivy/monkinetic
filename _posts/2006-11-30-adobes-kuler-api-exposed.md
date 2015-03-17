Slug: adobes-kuler-api-exposed
Date: 2006-11-30
Title: Adobe's kuler API exposed
layout: post

Geekery ahead.

I really love Adobe&#39;s new social app, [kuler](http://kuler.adobe.com), built around creating, tagging, and sharing color themes. The interface is gorgeous, and the ability to download themes into Photoshop and Illustrator is a great feature.

However, as a social app, kuler is not very social. It exists completely as a Flash application, and there are no features that allow the sharing of information created in the kuler space with anything outside it. At the least, I wanted an RSS feed of my themes that I could aggregate on [DELICIOUSLYMETA](http://deliciouslymeta.com/).

Based on some information gleaned from <a href="http://www.forta.com/blog/index.cfm/2006/11/17/ColdFusion-Powers-Adobe-Kuler#c080D9370-3048-80A9-EF1D8476E2A663FB">a blog comment</a> by a kuler employee, I installed the excellent network tool [WireShark](http://wireshark.org) (n&eacute;e Ethereal) and started watching the traffic between the Flash app and Adobe&#39;s servers.

Sure enough, kuler uses a [REST](http://en.wikipedia.org/wiki/Representational_State_Transfer)-style API based on http calls t the server that return XML documents representing the data. I&#39;ve first wrote some PHP code to test it, and then started documenting the API at . I&#39;ve only got the basics documented yet, but over time I&#39;ll get more of it down. At some point I hope to be able to offer RSS feeds for a user&#39;s themes.

My goal in this project is not to &quot;hack&#39; Adobe&#39;s cool new app, but to show how the API model they use is actually a great foundation for a social app. Hopefully they will publicize and document the API in the near future and this experiment will be obsolete.

<p style="text-align: center"><img alt="kuler_labs_logos.png" class="at-xid-6a010534988cd3970b0120a5b367b6970c" id="image2420" src="http://steveivy.typepad.com/.a/6a010534988cd3970b0120a5b367b6970c-pi" /></p>
