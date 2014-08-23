---
title: Shell Tricks
layout: post_page
---
Since we never stop learning command line and shell tricks, I decided to make a
list of commands and tricks that I don't use often, but that I want to
remember. This is similar to my [Vim cheat sheet](vim-cheat-sheet.html).

<table>
    <thead>
        <tr><th>Command</th><th>Descriptions</th></tr>
    </thead>
    <tbody>
        <tr>
            <td><code>find . -name "{pattern}" -print | xargs wc -l</code></td>
            <td>Counts the words in all files matched by <code>{pattern}</code>
            and includes a total at the end of the output.</td>
        </tr>
        <tr>
            <td><code>!!</code></td>
            <td>Rerun the previous command, can be preceded by
            <code>sudo</code></td>
        </tr>
    </tbody>
</table>
