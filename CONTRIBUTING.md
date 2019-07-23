Contributing
============

When adding new "Hello World" programs, please name the file according to the language it was written in, don't abbreviate the language name too much (so use "JavaScript", not "JS") but don't make it TOO long (so use "CSS" not "Cascading Style Sheets". Use hyphens ("-") as word seperators, and only use a single dot (for seperating the filename from the extension). For example, a "Hello World" program in Objective C should be named "Objective-C.m, and the one in HTML should be named HTML.html.

**INPORTANT: IF YOU WANT TO CHANGE THE README (`README.md`), EDIT `README_nolist.md` (!) THEN RUN THE `list_langs.py` SCRIPT AS NOTED BELOW.**

Use
```bash
./list_langs.py
```
for updating the list of languages in `README.md` (make sure you are in the repository's root directory when running the script). This script will completely re-write `README.md`, copying the contents of `README_nolist.md` before the listing.  
**NOTE THAT THIS SCRIPT MUST BE EXECUTED ON PYTHON 3.6+!** If your default isn't 3.6+, use `python3 list_langs.py`.
