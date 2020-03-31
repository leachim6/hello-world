#!/usr/bin/env python3

import os
import posixpath
from urllib.parse import quote

readme = open('README.md', 'w', encoding="utf-8")

# Copy template to README
with open('README_nolist.md', 'r') as file:
  for line in file:
    readme.write(line)

# Write title
readme.write('\n### This repository currently contains "Hello World" programs in the following languages:\n')

# List the available languages
for directory in sorted(os.listdir('.')):
  if not (directory == '.' or directory == '..' or directory[0] == '.' or os.path.isfile(directory)):
    for filename in sorted(os.listdir(directory), key=lambda s: s.lower()):
      if os.path.isfile(os.path.join(directory, filename)):
        language = os.path.splitext(filename)[0].replace('-', ' ').replace('_', ' ').title()
        readme.write(f'* [{language}]({posixpath.join(quote(directory), quote(filename))})\n')

readme.close()
