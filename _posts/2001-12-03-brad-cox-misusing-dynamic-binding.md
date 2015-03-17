Slug: brad-cox-misusing-dynamic-binding
Date: 2001-12-03
Title: "Brad Cox: Misusing Dynamic Binding"
layout: post

Brad Cox (inventor of Objective-C, the main language OS X applications are written in) is building Java Web Applications now. In <a href="http://softwaredev.earthweb.com/java/sdjojta/article/0,,12401_927161,00.html">this article</a> he is complaining about the way most web application servers still treat pages as files. (see <a href="http://java.sun.com/products/jsp/">JSP</a>)<p>

Jim has addressed the page issue <a href="http://jim.roepcke.com/2001/12/01#item3441">here</a>.

What I thought was interesting was this quote:<br />
&quot;The servlet for the application publishes a public final static SomeClass instance variable via which other pages reference the singleton instance of each page of the application. When a page needs to emit an <a href="href"> link to another page (the arrows in the figure), it calls <i>SomeClass. instance. emitLink(ctx)</i>. To emit a &lt;form&gt; command, it calls <i>SomeClass. instance. emitForm(ctx)</i> instead.&quot;<p>

The WebObjects Way goes something link this: the link (WOHyperlink) is created visually in WebObjects Builder (visual page interface builder). Then the developer sets (in the tool) the &quot;pageName&quot; binding on the link to &quot;theNextPage&quot; (via a drop-down list of all available pages in the project). Done! WO takes care of figuring out how to make the link for you.</p></a></p>
