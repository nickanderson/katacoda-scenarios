[Download](https://cfengine.com/product/cfengine-enterprise-free-25/) and install the Ubuntu Hub Package. We will use the use the quick install script. It installs the most recent LTS version of CFEngine Enterprise by default.

Download the script:

`wget http://s3.amazonaws.com/cfengine.packages/quick-install-cfengine-enterprise.sh`{{execute}}

Run it:

`sudo bash ./quick-install-cfengine-enterprise.sh hub`{{execute}}

Or specify the specific version you want to install:

`sudo CFEngine_Enterprise_Package_Version="3.11.0" bash ./quick-install-cfengine-enterprise.sh hub`{{execute}}
