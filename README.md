# open-urls
Applescript to automatically open URLs. This should work on any version of macOS although I've only tested it on Sequoia and Tahoe.

This Applescript opens a list of URLs in your selected browser in separate tabs, and can be scheduled to do so automatically. If you use a different browser replace "Microsoft Edge" with your preferred browser. E.g., "Safari".

To have it run automatically at a set time I use cron, which is a standard UNIX utility included with macOS. To schedule it add it to your crontab. Open Terminal.app and type in "crontab -e". It will open your crontab in your default editor, which is likely to be either vim or nano. Paste this line into your crontab file, save, and exit:

30 8 * * 1 open /Users/yourusername/Scripts/OpenURLsInEdge.app

This will schedule the app to run every Monday morning at 8:30 AM. If you want to change it to 10:00 AM modify it like this:

0 10 * * 1 open /Users/yourusername/Scripts/OpenURLsInEdge.app

To list existing cron jobs use "crontab -l".

A good overview of how to use cron can be found here: 
https://www.redhat.com/en/blog/linux-cron-command
