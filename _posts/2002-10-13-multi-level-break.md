Slug: multi-level-break
Date: 2002-10-13
Title: Multi-level 'break'
layout: post

Miscellaneous h4xx0r note: PHP has a mutli-level <code>break</code> which I had not seen before in a language. Used normally, break will exit the current loop (while, for, etc). Using the optional integer argument:
<blockquote><code>break n</code></blockquote>
will break you out of as many nested loops as specified. For example:
<pre> 10 /* Using the optional argument. */
 11 $i = 0;
 12 while ( ++$i ) {
 13     switch ( $i ) {
 14     case 5:
 15         echo &quot;At 5<br />&quot;;
 16         break 1;  /* Exit only the switch. */
 17     case 10:
 18         echo &quot;At 10; quitting<br />\n&quot;;
 19         break 2;  /* Exit the switch and the while. */
 20     default:
 21         break;
 22     }
 23 } </pre>
Found <a href="http://phpbuilder.com/manual/control-structures.break.php">here</a>.
