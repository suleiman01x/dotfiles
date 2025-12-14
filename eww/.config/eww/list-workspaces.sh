#!/bin/bash

workspaces (){
  active=$(hyprctl monitors -j | jq '.[] | select(.focused) | .activeWorkspace.id')
  hyprctl workspaces -j | jq --arg active ${active} -Mc 'map({id: .id, name: .name, monitor: .monitorID, active: .id == ($active|tonumber)}) | sort_by(.id)'
}

workspaces
	socat -u UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock - | while read -r line; do
  if [[ $line == "workspacev2"* || $line == "activewindowv2"* ]] then
    workspaces
  fi
done
