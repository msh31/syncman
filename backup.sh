#!/bin/bash

CONFIG_FILE="$HOME/rsync-manager.conf"

if [[ -f "$CONFIG_FILE" ]]; then
    source "$CONFIG_FILE"
    echo "[inf] loaded config $CONFIG_FILE"
    echo
else
    touch "$CONFIG_FILE"

    read -p "Enter your server IP: " SERVER_IP
    echo "SERVER_IP=$SERVER_IP" > "$CONFIG_FILE"

    read -p "Enter your server username: " SERVER_USERNAME
    echo "SERVER_USERNAME=$SERVER_USERNAME" >> "$CONFIG_FILE"

#only keys are supported
    read -p "Enter your ssh key file location (e.g. ~/.ssh/backup_rsync): " SSH_KEY_PATH 
    echo "SSH_KEY_PATH=$SSH_KEY_PATH" >> "$CONFIG_FILE"

    # echo "[inf] wrote $SERVER_IP" "to $CONFIG_FILE"
    echo
fi

read -p "Enter full path to a file you want to backup (e.g. /mnt/f/programming/rsync-manager/README.md): " LOCAL_FILE_PATH

read -p "Enter full path you want to save to on the server (e.g. storage/rsync-manager/README.md): " SERVER_FILE_PATH
