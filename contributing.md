## Contributing

### Adding a language

#### Naming

The name of the file will be displayed as-is in the readme. It should be named according to the language it was written in. The name shouldn't be abbreviated too far (use `JavaScript.js` instead of `JS.js`) and it shouldn't be abbreviated too little (use `CSS.css` instead of `Cascading Style Sheets.css`). Additionally, use spaces instead of hyphens or underscores (use `Objective C.m` instead of `Objective-C.m`).

If a file name contains a special character that Windows is not able to display, substitute it with the following:

|Original|Substitute|
|:-:|:-:|
|/|∕|
|\\ |＼|
|:|˸|
|\*|∗|
|?|？|
|"|＂|
|<|﹤|
|>|﹥|
|\||❘|

#### Contents

The code in the file should be the simplest and most straightforward way to print/display/show `Hello World` exactly once in the language used. User input should not be request and a newline should only be printed when necessary.

### Updating README

After adding the language file, `update_list.py` (Python 3.6+) automatically updates the language list.
