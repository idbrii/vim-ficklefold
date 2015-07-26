vim-ficklefold
==============

Facilitates folding: Toggle between fold methods, apply fold expressions, create folds.


ToggleFold
==========
Easily switch between different fold methods: syntax, indent, marker, and (if
foldexpr is set) expr.


FoldAllButMatches
=================

FoldAllButMatches will fold away every line that doesn't match the
query. This is similar to just using :global to see the lines that match
or :grep to see them in the quickfix, but you see them in your buffer
and can edit them. The downside is that you see the "1 line folded"
messages.

You can use FoldAllButMatches with no args to clear the folds (it also
restores foldmethod and foldminlines).


FoldParagraphs
==============
Fold paragraphs of prose.
