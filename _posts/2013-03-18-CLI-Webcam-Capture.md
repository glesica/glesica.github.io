---
title: CLI Webcam Capture
layout: post_page
---

I wanted to have my webcam take pictures while I'm gone during the day so I can
see what my cat does all day. After searching for a couple minutes I found a
good answer on Stack Overflow: <http://stackoverflow.com/q/9391456>

Basically, you can use VLC (<http://videolan.org>) to do just this. The command
is pretty long, but it's fairly easy to understand. However, this doesn't seem
to work from cron, for whatever reason (though it works wonderfully when
manually invoked).

    vlc -I dummy v4l2:///dev/video0 --video-filter scene --no-audio --scene-path
    /home/george --scene-prefix autocap_ --scene-format png vlc://quit
    --run-time=1

So, back to the drawing board. After a bit more searching, I found a post on the
Ubuntu forums: <http://ubuntuforums.org/showthread.php?t=1337440>. The posters
suggested using a program called `streamer`. This was easily installed and it
seems to work perfectly from cron. Note that the trailing zeros are
automatically used to generate sequential names.

    streamer -c /dev/video0 -b 32 -s 640x480 -o
    /home/george/cap0000.jpeg

If I end up finding this useful (in other words, if my cat actually spends a
significant part of the day in view of the camera) then I will add a cron job to
delete the old pictures every couple days.
