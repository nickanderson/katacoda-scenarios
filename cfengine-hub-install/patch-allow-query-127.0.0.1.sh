
NEW_VER="      admit => { \"127.0.0.1\", @(def.policy_servers) };"
CURRENT_VER="      admit => { @(def.policy_servers) };"
AFTER="default_data_select_policy_hub"
FILE1=/var/cfengine/share/NovaBase/masterfiles/controls/reports.cf
FILE2=$FILE1

# https://stackoverflow.com/a/32391110/2854727
sudo -i sed -e '/default_data_select_policy_hub/!b' -e ':a' -e "s/$CURRENT_VER/$NEW_VER/;t trail" -e 'n;ba' -e ':trail' -e 'n;btrail' $FILE1 > $FILE2
