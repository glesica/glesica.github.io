---
title: Vim Cheat Sheet
layout: post_page
---
I love Vim. It is the text editor with which I have found I am most productive.
Almost every day I discover some new trick I didn't know the day before. So I'm
going to start putting those tricks here, when I remember, for my benefit and
the benefit of others. This is my personal Vim cheat sheet.

There are some useful links at the bottom of the page as well. These include
tutorials and general reference sites.

<table>
    <thead>
        <tr><th>Command</th><th>Description</th></tr>
    </thead>
    <tbody>
        <tr><td><code>:g/{regex}/{command}</code></td><td>Execute
        <code>{command}</code> on all lines that match
        <code>{regex}</code></td></tr>

        <tr><td><code>cw</code></td><td>Deletes the word under the cursor and
        goes into edit mode. This can then be repeated on the next occurrence of
        the original word with <code>n.</code>.</td></tr>

        <tr><td><code>!sort</code></td><td>Not strictly a Vim command (the 
        <code>!</code> calls an external program) but nifty. It uses the Unix 
        <code>sort</code> command to sort the highlighted text.</td></tr>

        <tr><td><code>{count}gg</code></td><td>Go to the <code>{count}</code>
        line of the document. Default is the first line. Example:
        <code>25gg</code> would move to the 25th line.</td></tr>

        <tr><td><code>{count}G</code></td><td>Like <code>gg</code> except the
        default is to go to the last line.</td></tr>
        
        <tr><td><code>J</code> and <code>gJ</code></td><td>Join the selected
        lines together. The first removes indentation and inserts spaces, the
        second does not. A <code>{count}</code> can also precede the command in
        lieu of selecting lines.</td></tr>

        <tr><td><code>gqq</code> and <code>gq</code></td><td>Hard wraps long
        lines. The first wraps the current line, the second can be given a
        direction after the command.</td></tr>

        <tr><td><code>=</code></td><td>Applies some fancy auto-indentation.
        Works for various languages dependent on the file type (assuming
        <code>filetype</code> is active).</td></tr>

        <tr><td><code>:TOhtml</code></td><td>Creates an HTML document from the
        current file, complete with syntax coloring based on the current color
        scheme.</td></tr>

        <tr><td><code>z{a|c|o|M|R}</code></td><td>Code folding. Respectively,
        toggle, close, open, close all, open all.</td></tr>

        <tr><td><code>m{name}</code> and <code>`{name}</code></td><td>Create
        and jump to, respectively, a bookmark. If <code>{name}</code> begins
        with a lower-case letter then it is a local bookmark (single file). If
        the first letter is upper-case, then it is a global bookmark (can be
        accessed from any buffer).</td></tr>

        <tr><td><code>:only</code> or <code>CTRL-W o</code></td><td>Close all
        windows but the current one.</td></tr>

        <tr><td><code>CTRL-W r</code> and <code>CTRL-W R</code></td><td>Rotate
        windows down/right and up/left, respectively.</td></tr>

        <tr><td><code>CTRL-W =</code></td><td>Make all windows approximately
        the same height and width.</td></tr>

        <tr><td><code>:resize {-|+}{N}</code> or <code>{N}CTRL-W
        {-|+}</code></td><td>Decrease or increase the current window height by
        <code>{N}</code>. Default is N=1. If the sign is omitted in the first
        form, then just set the height to <code>{N}</code>.</td></tr>

        <tr><td><code>{N}CTRL-W _</code></td><td>Set current window height to
        <code>{N}</code>. Default is tallest possible.</td></tr>

        <tr><td><code>:vertical resize {-|+}{N}</code> or <code>{N}CTRL-W
        {<|>}</code></td><td>Decrease or increase the current window width by
        <code>{N}</code>. Default is N=1. If the sign is omitted in the first
        form, then just set width to <code>{N}</code>.</td></tr>

        <tr><td><code>{N}CTRL-W |</code></td><td>Set current window width to
        <code>{N}</code>. Default is widest possible.</td></tr>

        <tr><td><code>:lwd %:p:h</code></td><td>Set the local working directory
        to the directory of the current file.</td></tr>

        <tr><td><code>c-^</code></td><td>Edit alternate (previous)
        file.</td></tr>

        <tr><td><code>:sh</code></td><td>Run a shell, Vim will resume when the
        shell exits (Ctrl-D).</td></tr>

        <tr><td><code>%</code></td><td>Move to the closing grouping symbol, parens,
        brackets, etc. Can be used in visual select mode.</td></tr>

        <tr><td><code>c{MOVEMENT}</code></td><td>Delete (cut) the result of the
        next movement command and enter insert mode.</td></tr>

        <tr><td><code>CTRL-Y / CTRL-E</code></td><td>Move viewport down or up
        respectively.</td></tr>
    </tbody>
</table>

## References

  * [A Vim Primer](http://danielmiessler.com/study/vim/)
