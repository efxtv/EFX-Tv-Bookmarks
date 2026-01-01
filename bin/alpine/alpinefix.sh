#!/bin/bash
cat <<EOF > /root/.profile
export PS1="\[\e[92m\]▷ \[\e[31m\](\u@root) \w/# \[\e[m\]"
alias ls='ls --color=auto'
export SHELL=/bin/bash
EOF

mkdir -p /etc/skel
cat <<EOF > /etc/skel/.profile
export PS1="\[\e[92m\]▷ \[\e[32m\](\u@root) \w/# \[\e[m\]"
alias ls='ls --color=auto'
export SHELL=/bin/bash
EOF

rc-update add docker boot
