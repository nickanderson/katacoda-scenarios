Bootstrap the hub to itself:

`sudo /var/cfengine/bin/cf-agent --bootstrap [[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}

Run the policy to complete the installation:

`sudo /var/cfengine/bin/cf-agent --no-lock --inform`{{execute}}
