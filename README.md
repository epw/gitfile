# Gitfile, Git for File Versioning

## Problem

Sometimes I have a single text file, in some ordinary location, and it
would be nice to be able to save versions of it.

## Proposal

A script that can be run on a file. It creates a new git repo in some
standard place, moves the file there, commits it, and makes a symlink
of the file to its current location.

A second script that goes to the file's repo location and makes a
commit with a simple default message.

Finally, Emacs commands to invoke both of these.

## Notes

This is not an officially supported Google product.

