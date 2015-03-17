Slug: golive-6-filetypes
Date: 2002-07-19
Title: GoLive 6 FileTypes
layout: post

I'm posting this in the hope that after Google indexes it, it will help some other poor soul.

I'm working with the Velocity template engine; templates are HTML files that (usually) have a ".vm" file extension. I could not for the life of me figure out how to get Adobe GoLive 6 to open the file as an html file, nor could I find anything on <a href="http://www.google.com">Google</a>, <a href="http://www.adobe.com">Adobe</a>'s site or forums, or on the velocity lists about how to do so.

Well, I finally started digging around in the GoLive directory, and quickly found this file:

>&lt;golive home&gt;/Settings/FileMappings/default.aglfmi

Adobe has done a Good Thing&trademark; here and used XML to define their file mappings. Simply add a line similar to the one below to the section at mapping-&gt;extensions, and GoLive will happily open your ".vm" or ".wm" (WebMacro's standard extension - change "vm" below to "wm" of course):

>&lt;map ext="vm" mime="text/html" transfer="text" base="html" mac="TEXT/R*ch"/&gt;
