Bootstrap the hub to itself


## Tweaks
The MPF needs to be tweaked so that we can collect from locahost.

edit /var/cfengine/NovaBase/share/masterfiles/controls/reports.cf and add 127.0.0.1 to the query access rules.

`sudo -i`{{execute}}
`NEW_VER="      admit => { \"127.0.0.1\", @(def.policy_servers) };"`{{execute}}
`CURRENT_VER="      admit => { @(def.policy_servers) };"`{{execute}}
`AFTER="default_data_select_policy_hub"`{{execute}}
`FILE1=/var/cfengine/share/NovaBase/masterfiles/controls/reports.cf`{{execute}}
`FILE2=$FILE1`{{execute}}

# https://stackoverflow.com/a/32391110/2854727
`sed -e '/default_data_select_policy_hub/!b' -e ':a' -e "s/$CURRENT_VER/$NEW_VER/;t trail" -e 'n;ba' -e ':trail' -e 'n;btrail' $FILE1 > $FILE2`{{execute}}

 alternatively define def.policy_servers to include 127.0.0.1
 
 `echo '{ "vars": { "policy_servers": [ "127.0.0.1" ] } }' > /var/cfengine/NovaBase/share/masterfiles/def.json`{{execute}}
 
## Bootstrap and run the policy

`sudo /var/cfengine/bin/cf-agent --bootstrap [[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}
`sudo /var/cfengine/bin/cf-agent --no-lock --inform`{{execute}}

Then log into [Mission Portal](https://[[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com)
Inital login creds admin/admin.

NOTE: you will get a Bad Gateway error during initial login, re-visit the main url and complete the password change in order to log in.

## Collect reports from the hub
`cf-hub -q delta -H $(hostname -f) -v)`{{execute}}
