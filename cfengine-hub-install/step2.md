Bootstrap the hub to itself

## Bootstrap and run the policy

`sudo /var/cfengine/bin/cf-agent --bootstrap [[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}
`sudo /var/cfengine/bin/cf-agent --no-lock --inform`{{execute}}

Then log into [Mission Portal](https://[[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com)
Inital login creds admin/admin.

NOTE: you will get a Bad Gateway error during initial login, re-visit the main url and complete the password change in order to log in.

## Collect reports from the hub
`sudo cf-hub -q delta -H $(hostname -f) -v`{{execute}}
