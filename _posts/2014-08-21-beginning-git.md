---
title: Beginning Git
layout: post_page
---
My girlfriend is learning about R on Coursera (as part of their data science
track) and the instructors have wisely chosen to teach the students about
version control. I decided to write up a little cheat sheet for her to use as
she learns how to work with Git and GitHub.

### Getting around

You can change directories in "Git Bash" using the `cd` command:

```
$ cd myfiles
```

Remember that you can use the tab key to automatically complete long file and
folder names.

### Cloning a repository

When you need to clone a repository you use the `git clone` command, followed by
the path to the repository on GitHub (repositories can also be stored elsewhere,
cloning works the same, more or less).

### Checking the status

You can check the status of your repository with `git status`. This will tell
you, among other things, which files have been changed since the last commit (or
clone), and which files will be part of your next commit.

### Finding out what changed

If you can't remember what you changed in a particular file, you can use `git
diff` to find out. You can either use it by itself, or follow it with the name
of a file and Git will show you what has changed since the last commit (or
clone). Additions will appear in green, deletions will appear in red.

### Committing changes

To commit your changes you generally must first decide which files will be part
of the commit. In many cases this will simply be "all of the file with changes",
but in some cases you may want to commit only specific files. Git handles this
by letting you add changes to a commit one at a time (in fact, you can even add
just part of the changes to a file, but that is more advanced). You do this with
`git add` like so:

```
$ git add myfile.txt
```

You can use `git status` to find out which files have changed and which have
already been added to the commit.

Once you are ready you can commit your changes:

```
$ git commit -m 'Add some stuff to some files'
```

The provided message should describe the changes made in this commit. This can
be helpful if you ever need to go "back in time" to see things the way they were
in the past, good commit messages can act as a sort of guide.

### Pushing changes

Once you have committed some changes, you can generally push them back to GitHub
by using `git push`:

```
git push origin master
```

This will push the branch `master` (the default) to the remote server called
`origin` (the default).
