Bootstrap the hub to itself

## Task
`sudo echo 127.0.0.1 [[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com >> /etc/hosts`{{execute}}
`sudo hostnamectl set-hostname [[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}
`sudo /var/cfengine/bin/cf-agent --bootstrap [[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}
`sudo /var/cfengine/bin/cf-agent --no-locks --inform{{execute}}
