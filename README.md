# development

First create an LXD profile.

```
lxc profile create dev
```

Edit the profile with the dev.profile contents

```
cat dev.profile | lxc profile edit dev
```

Launch a container using the profile

```
lxc launch ubuntu: -p default -p dev dev
```

Monitor the cloud-init progress via the log file

```
lxc exec dev -- tail -f /var/log/cloud-init-output.log
```
