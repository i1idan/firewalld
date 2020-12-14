user@ubuntu20:~/Desktop/iqbmi/Viewers$ 
user@ubuntu20:~/Desktop/iqbmi/Viewers$ sudo apt-get install firewalld
[sudo] password for user: 
Reading package lists... Done
Building dependency tree       
Reading state information... Done
firewalld is already the newest version (0.8.2-1).
0 upgraded, 0 newly installed, 0 to remove and 12 not upgraded.
user@ubuntu20:~/Desktop/iqbmi/Viewers$ systemctl firewall-cmd 
Unknown operation firewall-cmd.
user@ubuntu20:~/Desktop/iqbmi/Viewers$ systemctl firewalld 
Unknown operation firewalld.
user@ubuntu20:~/Desktop/iqbmi/Viewers$ systemctl firewalld 
Unknown operation firewalld.
user@ubuntu20:~/Desktop/iqbmi/Viewers$ systemctl status firewalld 
● firewalld.service - firewalld - dynamic firewall daemon
     Loaded: loaded (/lib/systemd/system/firewalld.service; enabled; vendor pre>
     Active: active (running) since Sun 2020-11-29 20:01:30 +0330; 2 weeks 0 da>
       Docs: man:firewalld(1)
   Main PID: 574 (firewalld)
      Tasks: 2 (limit: 4648)
     Memory: 7.9M
     CGroup: /system.slice/firewalld.service
             └─574 /usr/bin/python3 /usr/sbin/firewalld --nofork --nopid

Warning: journal has been rotated since unit was started, output may be incompl>

user@ubuntu20:~/Desktop/iqbmi/Viewers$ firewall-cmd --permanent --add-port=3000/tcp
Authorization failed.
    Make sure polkit agent is running or run the application as superuser.
user@ubuntu20:~/Desktop/iqbmi/Viewers$ firewall-cmd --list-ports
Authorization failed.
    Make sure polkit agent is running or run the application as superuser.
user@ubuntu20:~/Desktop/iqbmi/Viewers$ sudo firewall-cmd --list-ports
8000/udp 8000/tcp
user@ubuntu20:~/Desktop/iqbmi/Viewers$ sudo firewall-cmd --permanent --add-port=3000/tcp
success
user@ubuntu20:~/Desktop/iqbmi/Viewers$ sudo firewall-cmd --permanent --add-port=3000/udp
success
