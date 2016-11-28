Contributing
============

When adding new "Hello World" programs, please name the file according to the language it was written in, don't abbreviate the language name too much (so use "JavaScript", not "JS") but don't make it TOO long (so use "CSS" not "Cascading Style Sheets". Use hyphens ("-") as word seperators, and only use a single dot (for seperating the filename from the extension). For exmaple, a "Hello World" program in Objective C should be named "Objective-C.m, and the one in HTML should be named HTML.html.

Use
```bash
cat README_nolist.md > README.md; echo >> README.md; echo "### This repository currently contains "Hello World" programs in the following languages:" >> README.md; ruby list_langs.rb >> README.md
```
for updating the list of languages in `README.md` (make sure you are in the repository's root directory when invoking those commands).
