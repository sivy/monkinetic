Slug: falling-paradigms
Date: 2001-02-08
Title: Falling Paradigms
layout: post

Well, I&#39;m two days into my WebObjects journey. I worked on Chapters 2 and 3 last night, finishing Chapter 2 and getting halfway though Chapter 3. &quot;JIm&quot; and I got to chatting, and we discussed some of the things I&#39;m learning about WebObjects. Here are some of the interesting thoughts:

<b><font color="#ff0000">monkinetic</font>: Wo turns quite a few of my web dev paradigms on their heads</b><br />
<b>JimRoepcke:</b> yup.

<b><font color="#ff0000">monkinetic</font>: well, and the whole idea of a &quot;sending page&quot; and a &quot;recieving script&quot; are stood on end too</b><br />

WebObjects takes care of the mundane stuff we as web developers are used to doing.

For example: in every other environment I&#39;ve used, there&#39;s some work to getting form data out of the request (or request object) in order to then assign it to local variables in your page. WO completely hides this process from you - by the time your component code is called, the instance variables for your component are already populated. Not only that, but - get this - they&#39;re populated with the actual <i>objects</i> that the form data (as keys) pointed to. You as a developer don&#39;t even have to walk the vars, fetching db data for the identified objects.

Another Example: Assume you have a page with a form on it. In your average web app server environment, that form has an action that points to the next page in the process, the one that will catch the form data and process it. If the UI depends on what the user has input, you must use something like a <code>case</code> statement to present different information to the user. Within that switch is the code to generate each version of the page. In WebObjects, firstly, forms usually post to the <i>component that generated the page the user is viewing</i>. In this component you decide which page the user should see next. You then <i>instantiate the next component</i>, set any instance vars that need to be set, and then return the component. WO takes care of telling that next component to append its HTML to the response, which it does.

Of course, this stuff is making my head hurt. ;-&gt;

<b><font color="#ff0000">monkinetic</font>: no wonder WO developers go nuts when they have to work in another environment</b><br />
<b><font color="#ff0000">monkinetic</font>: it&#39;s like going back to assembler or something</b>

Ok, perhaps that was a bit of an exaggeration, but the fact remains that most other web app environments require much more of the developer to get data, and set up your local environment before you actually begin doing whatever the component does. WO simplifies the process significantly, while also providing mechanisms for overriding default behavior if you need to.
