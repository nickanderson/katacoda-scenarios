#!/bin/env bash

export NEW_VER="      admit => { \"127.0.0.1\", @(def.policy_servers) };"
export CURRENT_VER="      admit => { @(def.policy_servers) };"
export AFTER="default_data_select_policy_hub"
export FILE1=/var/cfengine/masterfiles/controls/reports.cf
export FILE2=/tmp/reports.cf


# https://stackoverflow.com/a/32391110/2854727
sudo sed -e '/default_data_select_policy_hub/!b' -e ':a' -e "s/$CURRENT_VER/$NEW_VER/;t trail" -e 'n;ba' -e ':trail' -e 'n;btrail' $FILE1 | sudo tee $FILE2
sudo mv $FILE2 $FILE1
