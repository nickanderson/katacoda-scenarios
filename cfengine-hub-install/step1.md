Download the appropriate package for your platform. We will use the  or use the quick install script.

## Configure hostname, download and Install Package

`sudo bash -c "echo 127.0.0.1 [[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com >> /etc/hosts"`{{execute}}
`sudo hostnamectl set-hostname [[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}
`wget http://s3.amazonaws.com/cfengine.packages/quick-install-cfengine-enterprise.sh`{{execute}}
`sudo bash ./quick-install-cfengine-enterprise.sh hub`{{execute}}
