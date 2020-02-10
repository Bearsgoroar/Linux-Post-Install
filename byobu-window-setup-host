#!/bin/sh
byobu new-session -d -s Byobu
byobu rename-window "Lighthouse"
byobu send-keys "sudo /opt/nebula/nebula -config /opt/nebula/config.yml" C-m
byobu new-window -n Node-1
byobu new-window -n Node-2
byobu new-window -n Node-3
byobu new-window -n Node-4
byobu new-window -n Ansible
byobu new-window -n Shell
byobu -2 attach-session -t Byobu
