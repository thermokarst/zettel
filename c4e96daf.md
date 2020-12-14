---
date: 2020-12-13T16:43
tags:
  - server
  - admin
  - tech
---

# adding a new user account on a linux system

```bash
adduser $USER
usermod -aG sudo $USER
# if account requires password-less elevation:
sudo visudo  # add an entry like: $USER ALL=(ALL) NOPASSWD:ALL
# confirm that the account works as expected
su - $USER
```

