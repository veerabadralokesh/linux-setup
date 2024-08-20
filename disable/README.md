# Disable services
Disable services that slow down boot / are not used but run in the background

The below command gives the list of systemd services and how much time they took to boot up.
```bash
systemd-analyze blame
```


## Links
- [How to disable unnecessary services starting at boot in Ubuntu 18.04?](https://askubuntu.com/questions/1218013/how-to-disable-unnecessary-services-starting-at-boot-in-ubuntu-18-04)
- [Slow boot because of plymouth-quit-wait.service](https://unix.stackexchange.com/questions/632026/slow-boot-because-of-plymouth-quit-wait-service)
- [Is it safe to disable apt-daily.service?](https://unix.stackexchange.com/questions/492221/is-it-safe-to-disable-apt-daily-service)
- [How to disable CUPS service on reboot with systemd?](https://unix.stackexchange.com/questions/480082/how-to-disable-cups-service-on-reboot-with-systemd)
- [How to Stop and Disable Unwanted Services from Linux System](https://www.tecmint.com/remove-unwanted-services-from-linux/)

