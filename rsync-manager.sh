#!/bin/bash

CONFIG_FILE="$HOME/rsync-manager.conf"

usage() {
  echo "Usage: $0 [backup|restore]"
  echo "  backup  - Upload a local file to the remote server"
  echo "  restore - Download a file from the remote server to local"
  exit 1
}

if [[ $# -ne 1 ]]; then
  usage
fi

MODE=$1

# config handling
if [[ -f "$CONFIG_FILE" ]]; then
  source "$CONFIG_FILE"
  echo "[inf] loaded config $CONFIG_FILE"
else
  echo "[inf] Config file not found, creating one at $CONFIG_FILE"
  read -p "Enter your server IP: " SERVER_IP
  read -p "Enter your server username: " SERVER_USERNAME
  read -p "Enter your ssh key file location (e.g. ~/.ssh/backup_rsync): " SSH_KEY_PATH

  {
    echo "SERVER_IP=$SERVER_IP"
    echo "SERVER_USERNAME=$SERVER_USERNAME"
    echo "SSH_KEY_PATH=$SSH_KEY_PATH"
  } > "$CONFIG_FILE"

  echo "[inf] Config saved."
fi


# -a: archive, preserves links, perms, modifiction times, groups, owners, etc
# -v: verbose, shows what its doing to the user
# -z: use compression
# --progress: shows the progress, useful for big transfers


if [[ "$MODE" == "backup" ]]; then
  read -p "Enter full local file path to BACKUP (e.g. /mnt/f/programming/rsync-manager/README.md): " LOCAL_FILE_PATH
  LOCAL_FILE_PATH="${LOCAL_FILE_PATH/#\~/$HOME}"

  if [[ ! -f "$LOCAL_FILE_PATH" ]]; then
    echo "[err] Local file '$LOCAL_FILE_PATH' does not exist. Exiting."
    exit 1
  fi

  read -p "Enter remote destination path (e.g. storage/rsync-manager/): " SERVER_FILE_PATH

  rsync -az --progress \
    -e "ssh -i $SSH_KEY_PATH" \
    "$LOCAL_FILE_PATH" \
    "$SERVER_USERNAME@$SERVER_IP:$SERVER_FILE_PATH"

elif [[ "$MODE" == "restore" ]]; then
  read -p "Enter full local file path where you want to SAVE the restored file (e.g. ~/Downloads/README.md): " LOCAL_FILE_PATH
  LOCAL_FILE_PATH="${LOCAL_FILE_PATH/#\~/$HOME}"

  read -p "Enter full remote file path to RESTORE (e.g. storage/rsync-manager/README.md): " SERVER_FILE_PATH

  if ! ssh -i "$SSH_KEY_PATH" "$SERVER_USERNAME@$SERVER_IP" test -e "$SERVER_FILE_PATH"; then
    echo "[err] Remote file '$SERVER_FILE_PATH' does not exist on server. Exiting."
    exit 1
  fi

  rsync -az \
    -e "ssh -i $SSH_KEY_PATH" \
    "$SERVER_USERNAME@$SERVER_IP:$SERVER_FILE_PATH" \
    "$LOCAL_FILE_PATH"

else
  usage
fi