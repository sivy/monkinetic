Slug: mark-pilgrim-on-opml
Date: 2002-04-15
Title: Mark Pilgrim on OPML
layout: post

<a href="http://diveintomark.org/archives/2002/04/15.html#investigating_opml">Mark Pilgrim investigates OPML</a>. He makes some of the same observations that I&#39;ve made in the past (unfortunately I don&#39;t believe I published any of them, so go read his).

OPML is a nice idea, but is limited by Dave&#39;s view that XML circa 1998 is all anyone should ever need, and his dislike for namespaces and subsequent refusal to update Frontier XML parser to support them.

For the record: having an xml-based outline format is an excellent idea! XML is perfect for describing hierarchies. Of course, an outline is often pretty boring unless you can also describe what the nodes represent. So Dave came up with <a href="http://radiodiscuss.userland.com/nodeTypesReference">nodetypes</a>. Nodetypes allow you to say &quot;this node represents an mp3 file&quot; or &quot;this node represents a Manila website structure&quot;. This also is an excellent idea. <i>However</i>...

In order to be <a href="http://www.w3.org/XML/">XML</a> compatible/compliant, (and I DO mean XML circa 1998 or thereabouts) OPML needs to have a DTD against which strict parsers can validate the document. However (and I can&#39;t find the reference at this time) <a href="http://www.opml.org/spec">OPML</a> does not define what attributes can or cannot appear in an &lt;outline&gt; node. The only required attribute is the &quot;text&quot; attribute which contains the text of the outline heading. This is a problem because each nodetype uses a seperate set of attributes contained in the &lt;outline&gt; node to store information. This makes it impossible to develop a DTD for any OPML file because it may contain arbitrary attributes on a node.

The accepted solution to this problem in 98% of the XML-using world would be to break out nodetypes into their own namespaces. Define OPML-the-structred-document as simply as possible: &lt;opml&gt;, &lt;head&gt;, &lt;body&gt;, &lt;outline&gt;. Then, let applications thereof define their own elements and attributes, point those namespaces at their own DTDs, and then a parser <i>that cares</i> about such things can compare the OPML document to the included DTDs, and be happy. Meanwhile, parsers that don&#39;t care could ignore the DTDs and keep right on going.

Of course, <a href="http://docserver.userland.com/xml/">Frontier&#39;s parser</a> has not changed much since being &quot;kernelized&quot; a while back, and it does not support namespaces. So no Userland XML will ever make use of them, which is sad because I think XML Namespaces have &quot;grown up&quot; since their introduction, and are a big part of taking the web to the <a href="http://www.w3.org/2001/sw/">next step</a>.
