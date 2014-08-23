---
title: Git Cheat Sheet
layout: post_page
---
This is my personal Git cheat sheet. Primarily these are just useful Git
commands that I tend to forget since I don't use them all that often.

    # Make a local copy of the given remote branch
    $ git checkout -b <branch> origin/<branch>

    # Grab branch info from the remote
    $ git fetch origin <branch>
    
    # Undo the previous commit to fix an error
    $ git reset --soft HEAD^

    # Show differences between two branches
    $ git diff --name-status <branch1>..<branch2>

    # Revert a specific commit, removing it from history
    $ git revert <hash>
