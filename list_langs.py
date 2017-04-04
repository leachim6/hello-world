#!/usr/bin/env python3

import os
from urllib.parse import quote

readme = open('README.md', 'w')

# Copy template to README
with open('README_nolist.md', 'r') as temp:
  for line in temp:
    readme.write(line)

# Write title
readme.write('\n### This repository currently contains "Hello World" programs in the following languages:\n')

# List the available languages
for dirname in sorted(os.listdir('.')):
  if not (dirname == '.' or dirname == '..' or dirname[0] == '.' or os.path.isfile(dirname)):
    for filename in sorted(os.listdir(dirname), key=lambda s: s.lower()):
      if os.path.isfile(os.path.join(dirname, filename)):
        lang = ''
        for name in filename[0:(len(filename) if filename.find('.') == -1 else filename.find('.'))].replace('-', ' ').replace('_', ' ').split():
          lang += name.capitalize() + ' '
        readme.write('* [{}]({})\n'.format(lang[:-1], quote(os.path.join(dirname, filename)))) # Cut trailing space

readme.close()
