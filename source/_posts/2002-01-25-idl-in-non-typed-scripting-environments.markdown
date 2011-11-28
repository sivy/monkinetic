---
title: "IDL in non-typed scripting environments"
layout: post
tp_urlid: "6a010534988cd3970b0120a55cdb7c970b"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2002/01/idl-in-non-typed-scripting-environments.html"
---
Dave is <a href="http://scriptingnews.userland.com/backissues/2002/01/24#l1eb33a91f4a7ab582451d453177a6603">making a point</a> on Scripting News regarding IDL (or in this case WSDL) for Frontier, and other non-typed scripting languages. His point is that he cannot generate at runtime the WSDL directly from the code, as can C# or Java developers - b/c their runtimes have information about the types and numbers of parameters to a call.<p>
This means having to handcode the WSDL for a web service in these environments, which can be a PITA if your service is at all large.<p>
<img align="right" border="1" hspace="2" src="http://media.redmonk.net/images/idlScript.jpg" vspace="2" />I have an idea though. One way to get around this would be to implement a meta-data header for these environments similar to javadoc. I&#39;ll use Frontier as an example.<p>
In Frontier, scripts are outlines. Frontier already has a <a href="http://docserver.userland.com/op/">rich set of functionality</a> dealing with rendering outlines into other formats, esp. <a href="http://docserver.userland.com/html/">HTML</a>. You can use #directives in your outlines, which get translated into information in the symbol table when rendering the outline (or any other datatype for that matter).<p> So, I would propose a simple set of #directives that can be inserted into a script outline above the actual script code, as a commented block. That block can be grabbed and processed to generate whatever idl format is desired.<p>
This is just an idea, someone with more Frontier experience could come up with a better design. I also know that Perl has <a href="http://www.perldoc.com/">Perldoc</a> and <a href="http://www.perldoc.com/perl5.6.1/pod.html">POD</a> (inline support for manpages), so including this information in perl scripts in a long tradition in that community.<p>
Also, at least <a href="http://mail.python.org/pipermail/python-list/2001-June/046402.html">someone</a> is working on WSDL support in Python (which has an easily introspected runtime). &quot;Therefore I am planning to write a WSDL generator that will examine our exposed methods and write out a valid WSDL file.&quot;<p>
So, I think that lack of explicitly typed data should not be the final reason not to support some sort of IDL for web services. There may be other, better reasons, but I have not seen them yet.</p></p></p></p></p></p></p>
