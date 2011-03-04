---
title: "CSS, Ids, >, and IE"
layout: post
tp_urlid: "6a010534988cd3970b0120a5b3698b970c"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2006/09/css-ids-and-ie.html"
---
(Geekery ahead)

Wow. I just got schooled in the specifics (pun intended) of CSS cascade specificity. As usual, the trouble started when IE would not render a layout properly. After hunting down a bug related to IE&#39;s non-support for the [child selector](http://www.w3.org/TR/CSS21/selector.html#child-selectors) (>), I found that I could not get some descendant selelectors to override properly.

Firstly, here&#39;s the structure and css I was using initially:

HTML:

    ol#container
        li
            ul.subcontainer
                li

CSS:

    ol#container>li { float: left; ... }

Fireflox floated the LIs perfectly, while IE completely ignored the float on the intial LI. After hunting down the fact that IE does not support that initial child selector, I removed it and went about overriding those styles to reset them to default values for descendant LIs.

    ol#container li { float:left ... }

So, that fixed the initial problem, but now both Firefox and IE were floating both the initial LIs and all descendant LIs. I tried selectors of varying specificity, trying to override those first styles, and nothing worked.

So, next step was to figure out what the cascade was doing. I poked around the [W3C CSS spec](http://www.w3.org/TR/REC-CSS2/) until I found the [section on specificity](http://www.w3.org/TR/REC-CSS2/cascade.html#specificity). Lo and behold, I discovered that id selectors are like the &quot;bunker-busters&quot; of the CSS world:

> A selector&#39;s specificity is calculated as follows:

>    * count the number of ID attributes in the selector (= a)
>    * count the number of other attributes and pseudo-classes in the selector (= b)
>    * count the number of element names in the selector (= c)
>    * ignore pseudo-elements. 

> Concatenating the three numbers a-b-c (in a number system with a large base) gives 
> the specificity.

> Some examples:

>    \*             {}  /* a=0 b=0 c=0 -> specificity =   0 */

>    LI            {}  /* a=0 b=0 c=1 -> specificity =   1 */

>    UL LI         {}  /* a=0 b=0 c=2 -> specificity =   2 */

>    UL OL+LI      {}  /* a=0 b=0 c=3 -> specificity =   3 */

>    H1 + *[REL=up]{}  /* a=0 b=1 c=1 -> specificity =  11 */

>    UL OL LI.red  {}  /* a=0 b=1 c=3 -> specificity =  13 */ 

>    LI.red.level  {}  /* a=0 b=2 c=1 -> specificity =  21 */

>    #x34y         {}  /* a=1 b=0 c=0 -> specificity = 100 */ 

Adding an id to a css selector adds _*100*_ to the specificity value, making it almost impossible, short of another id selector, to override. The final fix involved removing the id selector on the initial selector, then I was able to override the LI styles later on the css. *Whew*!
