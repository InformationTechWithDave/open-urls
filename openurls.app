# Open Script Editor.app and pasted in the text below. Save it as 
# "/Users/yourusername/Scripts/OpenURLsInEdge.app".

tell application "Microsoft Edge"
	activate
	if (count of windows) is 0 then
		make new window
	end if
	set urlList to {"https://www.bleepingcomputer.com/", "https://krebsonsecurity.com/", "https://thehackernews.com/", "https://www.darkreading.com/"}
	tell front window
		repeat with urlItem in urlList
			make new tab with properties {URL:urlItem}
		end repeat
		if (count of tabs) > (count of urlList) then
			close tab 1
		end if
	end tell
end tell
