echo -e "
network:\n\
  version: 2\n\
  renderer: networkd\n\
  ethernets:\n\
    default:\n\
      match:\n\
        name: e*\n\
      dhcp4: yes\n\
      dhcp-identifier: mac\n\
      dhcp6: no\n\
      optional: yes"