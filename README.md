# development

> A repository to help setup my development environment in an LXD container

First create an LXD profile.

```
lxc profile create dev
```

Edit the profile with the dev.profile contents

```
cat lxd/dev.profile | lxc profile edit dev
```

Launch a container using the profile

```
lxc launch ubuntu: -p default -p dev dev
```

Monitor the cloud-init progress via the log file

```
lxc exec dev -- tail -f /var/log/cloud-init-output.log
```

Add the following lines to .ssh/config on the host machine

```
Host dev
  HostName <CONTAINER_IP_ADDRESS>
  User ubuntu
  ForwardAgent yes
  ForwardX11 yes
```

Now login to the container

```
ssh dev
```

When cloud-init has finished running there should be a script called init.sh in
the home directory. Run is as follows:

```
bash bootstrap.sh
```

This will clone this repository and then install all the repositories and other
python packages.
