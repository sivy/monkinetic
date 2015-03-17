Slug: querying-analogies
Date: 2002-03-09
Title: Querying Analogies
layout: post

I was wondering whether Python had the concept of interfaces, like Java does, when it hit me - what I want is a search engine that will let me search using formal analogies, they way they do in the SATs back in high school. &quot;a is to b, as c is to ?&quot; I was really good at those, probably because I think in the abstract very well (and was destined to be a programmer -)). Anyway, I want to ask Google &quot;Show me anything that has the same relationship to Python that Interfaces do to Java&quot;.<p>

Now with Google right now that might take me 7, 8, or more queries to find the right keyword to describe the relationship between Java and Interfaces, then find a page that describes something with that same keyword in proximity to Python.<p>

Well, it just hit me - the technology already exists - I&#39;m using it in my spare time these days. It&#39;s called <a href="http://www.w3.org/RDF/">RDF</a>, and what RDF gives me is a vocabulary to say &quot;something SUBJECT has a relationship PREDICATE to something OBJECT&quot;. If I have a store of information encoded this way (there are already various formats that all do the same thing more or less) I can then query that information like this:<p>

<code>&quot;Java&quot; ?x &quot;Interfaces&quot;</code>: Finds all the values for x.<p>
AND <code>&quot;Python&quot; ?x ?y</code>: Finds all the values for y that are the OBJECT of a relationship x.<p>

This is a simple (if powerful) example of what will be possible once networks like <a href="http://semplesh.com/">The Semplesh</a> come online.</p></p></p></p></p>
