Slug: rsspuller-script
Date: 2001-01-20
Title: RSSPuller Script
layout: post

RSSPuller script:

<pre><code>
global rssFile
set rssFile to alias &quot;Sandbox:Users:SteveIvy:TheHub:rssSources&quot;
global tmpFile

--return rssFile

set tmpFilePath to &quot;FireStorm:tmp:rssTmpFile&quot;

tell application &quot;BrainForest&quot;
	open {rssFile}

	set rsf to the frontmost document

	set rssSources to (the tree items of rsf whose done is true) as list

	repeat with sourceNode in rssSources
		-- all sources should be actions so we can check them on or off
		if the action of sourceNode is false then set the action of sourceNode to true

		-- clean up

		if (count of the tree items of sourceNode) is not 0 then
			repeat (the count of the tree items of sourceNode) times
				if the (count of (the tree items of (tree item 1 of sourceNode) as list)) is 0 then
					tell rsf to delete tree item 1 of sourceNode
				else
					-- BIG TIME CRASHER HERE
					-- this BREAKS the MAC
					-- if we do this without deleting subnodes first

					-- delete subnodes first
					repeat (the count of the tree items of (tree item 1 of sourceNode)) times
						tell rsf to delete tree item 1 of (tree item 1 of sourceNode)
					end repeat
					-- then delete the node
					tell rsf to delete tree item 1 of sourceNode
				end if
			end repeat
		end if

		set the_url to the note of sourceNode

		-- fetch the rss source
		with timeout of 30 seconds
			tell application &quot;URL Access Scripting&quot;
				--return &quot;&quot; &amp; the_url &amp; &quot;&quot;
				download the_url to file tmpFilePath replacing yes
			end tell
		end timeout
		tell application &quot;URL Access Scripting&quot; to quit

		set xmlStr to &quot;&quot;
		-- read in xml contents
		open for access file tmpFilePath
		set xmlStr to (read file tmpFilePath) --to (get eof file tmpFilePath))
		close access file tmpFilePath


		set xmlData to parse XML (xmlStr)

		--return xmlData
		set rssCh to &quot;&quot;

		repeat with anElement in the XML contents of xmlData
			if the XML tag of anElement is &quot;channel&quot; then
				set rssCh to anElement
				exit repeat
			end if
		end repeat

		if rssCh is not &quot;&quot; then
			set rssCh to the XML contents of rssCh

			set the start date of sourceNode to the current date
			set the due date of sourceNode to the current date

			repeat with anElement in rssCh
				if the XML tag of anElement is &quot;item&quot; then
					set rssItemData to (the XML contents of anElement)
					repeat with itemBit in rssItemData
						if the XML tag of itemBit is &quot;title&quot; then set theTitle to the XML contents of itemBit as string
						if the XML tag of itemBit is &quot;link&quot; then set theLink to the XML contents of itemBit as string
						if the XML tag of itemBit is &quot;description&quot; then set theDesc to the XML contents of itemBit as string
					end repeat

					--now we insert it into brainforest
					tell rsf to set newNode to make new tree item at end of sourceNode with properties {title:theTitle &amp; &quot; - &quot; &amp; theDesc}
					tell rsf to set linkNode to make new tree item at end of newNode with properties {title:theLink}
					set the expanded of newNode to false
				end if
			end repeat
		else
			error &quot;puke&quot;
		end if

		set theTitle to &quot;&quot;
		set theLink to &quot;&quot;
		set theDesc to &quot;&quot;

		set the expanded of sourceNode to false
	end repeat
	activate
	say &quot;RSS Sources updated&quot;
end tell
</code></pre>
