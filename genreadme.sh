#!/bin/bash
cat README_nolist.md > README.md; echo >> README.md; echo '### This repository currently contains "Hello World" programs in the following languages:' >> README.md; ruby list_langs.rb >> README.md
