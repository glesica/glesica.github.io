---
title: Fixing the Default PDF Viewer on Linux Mint 14 MATE
layout: post_page
---

Wow, what a long title for a very short post. I recently upgraded to Linux Mint
14 MATE. I'm very much a Unity refugee so I love that MATE has resurrected
Gnome 2. One bug I ran into is that Chromium refused to open a PDF that it had
downloaded. The fix is simple:

    $ xdg-mime default atril.desktop application/pdf

Boom. Done. The problem is that Evince is set as the default PDF viewer. But
Evince has been renamed Atril in MATE (to avoid confusion and trademark issues,
I assume).

Happy MATEing!
