First lets ensure that the hostname we request when accessing Mission Portal resolves correctly.

`sudo bash -c "echo 127.0.0.1 [[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com >> /etc/hosts"`{{execute}}

Next we ensure this is the hosts fqdn so that ssl certificates generated during install will match.

`sudo hostnamectl set-hostname [[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}
