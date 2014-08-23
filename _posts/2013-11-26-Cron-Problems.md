---
title: Cron Problems
layout: post_page
---
Cron is one of those invaluable-but-annoying tools that you can't live without,
but often wish you could. The reason for this is that cron is just so tricky to
get right. I don't think I've ever created a crontab entry that worked on the
first try. To make matters worse, there is no easy way to debug other than to
set the job to run every minute and watch the logs.

While debugging some cron problems, I found a great page that contains an
extensive list of cron "gotchas":
[Reasons why crontab does not work](http://askubuntu.com/questions/23009/reasons-why-crontab-does-not-work).

Some things that always get me:

  * You need a blank line at the bottom of your crontab because every entry must
    end in a newline.
  * You can't have a period (.) in the filename of any script or crontab you put
    in `cron.d`, `cron.daily`, etc.
  * Crontab files in the directories mentioned above must be chown'd to
    `root:root`.
