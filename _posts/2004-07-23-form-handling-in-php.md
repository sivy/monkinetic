Slug: form-handling-in-php
Date: 2004-07-23
Title: Form handling in PHP
layout: post

I found out a cool feature of PHP today. I&#39;m sure that every other PHP hacker on the planet already knows this, but I didn&#39;t ;-).

If you have several form elements that all pertain to a single entity, you can write your HTML like this:

<code>&lt;input name=&quot;entity[property]&quot; value=&quot;$val&quot; /&gt;</code>

and PHP will create an associative array in the <code>$_GET</code> data with the name <code>entity</code> and a key <code>property</code> with value <code>$val</code>. Nice!

P.S. I did find a pointer to this page on <a href="http://www.php.net/manual/en/language.variables.external.php#AEN4222">Variables from Outside PHP</a> that sort-of explains it, but it doesn&#39;t really address the associative-array feature.
