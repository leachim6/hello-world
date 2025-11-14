#!/usr/bin/env python3

import os
import posixpath
from urllib.parse import quote
import re


def regexReplace(string, search, replacement):
    return re.compile(search).sub(replacement, string)


languageCount = 0
languagesText = ""


def normalize(name):
    return (name.replace("∕", "/").replace("＼", "\\").replace("˸", ":").replace(
        "∗", "*").replace("？", "?").replace("＂", "\"").replace(
            "﹤", "<").replace("﹥", ">").replace("❘", "|"))


# List the available languages
for initialDir in sorted(os.listdir('.')):
    if (initialDir == '.' or initialDir == '..' or initialDir[0] == '.'
            or os.path.isfile(initialDir)):
        continue

    for languageDir in sorted(os.listdir(initialDir), key=lambda s: s.lower()):
        languagePath = os.path.join(initialDir, languageDir)
        if not os.path.isdir(languagePath):
            continue

        displayInitial = normalize(initialDir)
        displayLanguage = normalize(languageDir)
        languagesText += (
            f'* [{displayLanguage}]'
            f'({posixpath.join(quote(initialDir), quote(languageDir))})\n')
        languageCount += 1

result = f"""<!--Languages start-->
## Languages ({languageCount} total)

{languagesText}<!--Languages end-->"""

readmeContents = open('readme.md', 'r', encoding="utf-8").read()

open('readme.md', 'w', encoding="utf-8").write(
    regexReplace(readmeContents,
                 r"<!--Languages start-->(.|\n)*<!--Languages end-->", result))