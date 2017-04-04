#!/usr/bin/env python3

import os

readme = open('README.md', 'w')

# Copy template to README
with open('README_nolist.md', 'r') as temp:
  for line in temp:
    readme.write(line)

# Write title
readme.write('\n### This repository currently contains "Hello World" programs in the following languages:\n')

# List the available languages
for dirname in os.listdir('.'):
  if not (dirname == '.' or dirname == '..' or dirname[0] == '.' or os.path.isfile(dirname)):
    for filename in os.listdir(dirname):
      if os.path.isfile(os.path.join(dirname, filename)):
        lang = ''
        for name in filename[0:(len(filename) if filename.find('.') == -1 else filename.find('.'))].replace('-', ' ').replace('_', ' ').split():
          lang += name.capitalize() + ' '
        readme.write('* [{}]({})\n'.format(lang[:-1], os.path.join(dirname if dirname != "#" else "%23", filename))) # Cut trailing space

readme.close()
