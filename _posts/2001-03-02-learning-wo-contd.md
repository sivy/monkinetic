Slug: learning-wo-contd
Date: 2001-03-02
Title: Learning WO Cont'd
layout: post

Last night I had a real breakthrough in my study of WebObjects. Unfortunately, I don&#39;t have the WO 4.01 databases, so I haven&#39;t been able to do some of the exercises in the Programming WebObjects course I&#39;m doing. Instead, I downloaded <a href="http://www.frontbase.com">FrontBase</a> and installed it, created my own model, and completed the exercise.

Well, sort of.

What I did was create my own project - a simple web-based threaded discussion group. I modeled the Message, User, and Enclosure entities, and generated the database in FrontBase. Then I used <a href="http://www.blacksmith.com/ebusiness/20_db_edit.html">DBEdit</a> to enter some data into my Message database. Finally I managed to Fetch the message data (including replies!) from the database in WebObjects. WooHoo!

Next up: creating new messages!
