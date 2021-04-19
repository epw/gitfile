#! /bin/bash

CONF=$HOME/.config/gitfile.conf
cat > $CONF <<EOF
export GITFILE_DIR=$HOME/.local/share/gitfile
EOF

source $CONF
mkdir -p $GITFILE_DIR
