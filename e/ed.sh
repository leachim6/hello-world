#!/bin/sh

ed -s <<'EOF'
i
Hello World!
.
p
EOF
