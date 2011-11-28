---
title: "iChatAV BuddyList sort bug and fix"
layout: post
tp_urlid: "6a010534988cd3970b0120a5b3647d970c"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2003/07/ichatav-buddylist-sort-bug-and-fix.html"
---
I found a bug of sorts (no pun intended) with <a href="http://www.apple.com/ichat/">iChat AV</a>&#39;s buddy list. There is a new feature where if you click a buddy in the list and drag a bit to the left, you can then re-order your buddies right in the list. That&#39;s the feature. 

But, having done so, iChat no longer moves logged in buddies to the top of the list, so you have to scroll though the list to find your logged in buddies. That&#39;s the bug.

I used the <code>defaults</code> program to inspect ichat&#39;s preferences:

<code>defaults read com.apple.ichat  bbedit</code>

And found the pref I wanted to change. A bit of trial and error later, I found the proper setting:

<code>defaults write com.apple.ichat &quot;BuddyList.SortOrder&quot; 3</code>

This will return your buddy list to it&#39;s proper sorting behavior. <i>Note: iChat must not be running when you run this command.</i> This is becuase iChat saves it&#39;s prefs when it quits, and it will overwrite the changes you just made.
