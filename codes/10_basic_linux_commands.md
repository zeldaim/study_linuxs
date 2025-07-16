Level 1: 기본 탐색 및 폴더 조작
```
[yhc@localhost ~]$ pwd 
/home/yhc
[yhc@localhost ~]$ cd ..
[yhc@localhost home]$ cd /
[yhc@localhost /]$ cd ..
[yhc@localhost /]$ ls
afs  boot  etc   lib    media  opt   root  sbin  sys  usr
bin  dev   home  lib64  mnt    proc  run   srv   tmp  var
[yhc@localhost /]$ ls ~
Desktop  Documents  Downloads  Music  Pictures  Public  Templates  Videos
[yhc@localhost /]$ ls -
ls: cannot access '-': No such file or directory
[yhc@localhost /]$ ls -
ls: cannot access '-': No such file or directory
[yhc@localhost /]$ ls -a
.   afs  boot  etc   lib    media  opt   root  sbin  sys  usr
..  bin  dev   home  lib64  mnt    proc  run   srv   tmp  var
[yhc@localhost /]$ cd etc
[yhc@localhost etc]$ ls
accountsservice          firewalld       makedumpfile.conf.sample  samba
adjtime                  flatpak         man_db.conf               sane.d
aliases                  fonts           mcelog                    sasl2
alsa                     foomatic        microcode_ctl             security
alternatives             fprintd.conf    mime.types                selinux
anacrontab               fstab           mke2fs.conf               services
appstream.conf           fuse.conf       modprobe.d                sestatus.conf
asound.conf              fwupd           modules-load.d            setroubleshoot
at.deny                  gcrypt          motd                      sgml
audit                    gdm             motd.d                    shadow
authselect               geoclue         mtab                      shadow-
avahi                    glvnd           multipath                 shells
bash_completion.d        gnupg           nanorc                    skel
bashrc                   GREP_COLORS     netconfig                 smartmontools
bindresvport.blacklist   groff           NetworkManager            sos
binfmt.d                 group           networks                  speech-dispatcher
bluetooth                group-          nftables                  ssh
brlapi.key               grub2.cfg       nsswitch.conf             ssl
brltty                   grub.d          nsswitch.conf.bak         sssd
brltty.conf              gshadow         nvme                      statetab.d
chromium                 gshadow-        openldap                  subgid
chrony.conf              gss             opt                       subgid-
chrony.keys              host.conf       os-release                subuid
cifs-utils               hostname        ostree                    subuid-
cockpit                  hosts           PackageKit                sudo.conf
containers               hp              pam.d                     sudoers
cron.d                   inittab         papersize                 sudoers.d
cron.daily               inputrc         passwd                    sudo-ldap.conf
cron.deny                iscsi           passwd-                   sysconfig
cron.hourly              issue           pbm2ppa.conf              sysctl.conf
cron.monthly             issue.d         pinforc                   sysctl.d
crontab                  issue.net       pkcs11                    systemd
cron.weekly              kdump           pkgconfig                 system-release
crypto-policies          kdump.conf      pki                       system-release-cpe
crypttab                 kernel          plymouth                  terminfo
csh.cshrc                keys            pm                        tmpfiles.d
csh.login                keyutils        pnm2ppa.conf              tpm2-tss
cups                     krb5.conf       polkit-1                  trusted-key.key
cupshelpers              krb5.conf.d     popt.d                    tuned
dbus-1                   ld.so.cache     printcap                  udev
dconf                    ld.so.conf      profile                   udisks2
debuginfod               ld.so.conf.d    profile.d                 updatedb.conf
default                  libaudit.conf   protocols                 UPower
depmod.d                 libblockdev     pulse                     usb_modeswitch.conf
dhcp                     libibverbs.d    qemu-ga                   vconsole.conf
DIR_COLORS               libnl           ras                       vimrc
DIR_COLORS.lightbgcolor  libpaper.d      rc.d                      virc
dnf                      libreport       rc.local                  vmware-tools
dnsmasq.conf             libssh          redhat-release            vulkan
dnsmasq.d                libuser.conf    request-key.conf          wgetrc
dracut.conf              locale.conf     request-key.d             wireplumber
dracut.conf.d            localtime       resolv.conf               wpa_supplicant
egl                      login.defs      rocky-release             X11
enscript.cfg             logrotate.conf  rocky-release-upstream    xattr.conf
environment              logrotate.d     rpc                       xdg
ethertypes               lsm             rpm                       xml
exports                  lvm             rsyncd.conf               yum
favicon.png              machine-id      rsyslog.conf              yum.conf
filesystems              magic           rsyslog.d                 yum.repos.d
firefox                  mailcap         rwtab.d
```
[yhc@localhost etc]$ mkdir practice 
mkdir: cannot create directory ‘practice’: Permission denied
[yhc@localhost etc]$ ..
[yhc@localhost etc]$ pwd
/etc
[yhc@localhost etc]$ cd ..
[yhc@localhost /]$ mkdir practice 
mkdir: cannot create directory ‘practice’: Permission denied
[yhc@localhost /]$ sudo mkdri /practice

We trust you have received the usual lecture from the local System
Administrator. It usually boils down to these three things:

    #1) Respect the privacy of others.
    #2) Think before you type.
    #3) With great power comes great responsibility.

[sudo] password for yhc: 
Sorry, try again.
[sudo] password for yhc: 
Sorry, try again.
[sudo] password for yhc: 
sudo: mkdri: command not found
[yhc@localhost /]$ mkdir practice 
mkdir: cannot create directory ‘practice’: Permission denied
[yhc@localhost /]$ mkdir /practice
mkdir: cannot create directory ‘/practice’: Permission denied
[yhc@localhost /]$ pwd
/
[yhc@localhost /]$ cd ../
[yhc@localhost /]$ cd ../home 
[yhc@localhost home]$ mkdir practice
mkdir: cannot create directory ‘practice’: Permission denied
[yhc@localhost home]$ mkdir /practice
mkdir: cannot create directory ‘/practice’: Permission denied
[yhc@localhost home]$ mkdir /home/yhc/practice
[yhc@localhost home]$ pwd
/home
[yhc@localhost home]$ mkdir /home/yhc/practice/documents
[yhc@localhost home]$ cd
[yhc@localhost ~]$ cd /home/yhc
[yhc@localhost ~]$ ls
Desktop  Documents  Downloads  Music  Pictures  practice  Public  Templates  Videos
[yhc@localhost ~]$ mkdir /home/yhc/practice/documents/reports
[yhc@localhost ~]$ mkdir /home/yhc/practice/documents/notes
[yhc@localhost ~]$ mkdir /home/yhc/practice/images 
[yhc@localhost ~]$ mkdir /home/yhc/practice/backup
[yhc@localhost ~]$ cd /home/yhc
[yhc@localhost ~]$ cd /home/yhc 
[yhc@localhost ~]$ pwd
/home/yhc
[yhc@localhost ~]$ ls
Desktop  Documents  Downloads  Music  Pictures  practice  Public  Templates  Videos
[yhc@localhost ~]$ ls -l
total 0
drwxr-xr-x. 2 yhc yhc  6 Jul 16 10:56 Desktop
drwxr-xr-x. 2 yhc yhc  6 Jul 16 10:56 Documents
drwxr-xr-x. 2 yhc yhc  6 Jul 16 10:56 Downloads
drwxr-xr-x. 2 yhc yhc  6 Jul 16 10:56 Music
drwxr-xr-x. 2 yhc yhc  6 Jul 16 10:56 Pictures
drwxr-xr-x. 5 yhc yhc 51 Jul 16 11:12 practice
drwxr-xr-x. 2 yhc yhc  6 Jul 16 10:56 Public
drwxr-xr-x. 2 yhc yhc  6 Jul 16 10:56 Templates
drwxr-xr-x. 2 yhc yhc  6 Jul 16 10:56 Videos
[yhc@localhost ~]$ pwd
/home/yhc
[yhc@localhost ~]$ cd /home/yhc/practice/documents  
[yhc@localhost documents]$ pwd
/home/yhc/practice/documents
[yhc@localhost documents]$ touch readme.txt
[yhc@localhost documents]$ mk readme.txt
bash: mk: command not found...
[yhc@localhost documents]$ mkfile raadme.txt
bash: mkfile: command not found...
Similar command is: 'touch'
[yhc@localhost documents]$ touch "hello linux!" /readme.txt
touch: cannot touch '/readme.txt': Permission denied
[yhc@localhost documents]$ touch "hello linux" readme.txt
[yhc@localhost documents]$ cat readme.txt
[yhc@localhost documents]$ toych "hellos linux"> readme.txt
bash: toych: command not found...
[yhc@localhost documents]$ touch "hellos linux"> readme.txt
[yhc@localhost documents]$ cat readme.txt
[yhc@localhost documents]$ pwd
/home/yhc/practice/documents
[yhc@localhost documents]$ cd /home/yhc/practice/notes 
bash: cd: /home/yhc/practice/notes: No such file or directory
[yhc@localhost documents]$ cd/home/yhc/practice
bash: cd/home/yhc/practice: No such file or directory
[yhc@localhost documents]$ cd home/yhc/practice 
bash: cd: home/yhc/practice: No such file or directory
[yhc@localhost documents]$ pwd
/home/yhc/practice/documents
[yhc@localhost documents]$ ^C
[yhc@localhost documents]$ /home/yhc/practice/documents
bash: /home/yhc/practice/documents: Is a directory
[yhc@localhost documents]$ pwd
/home/yhc/practice/documents
[yhc@localhost documents]$ cd ^C
[yhc@localhost documents]$ cd /home/yhc/practice/documents/notes
[yhc@localhost notes]$ touch memo.txt 
[yhc@localhost notes]$ ls 
memo.txt
[yhc@localhost notes]$ cat memo.txt
[yhc@localhost notes]$ pwd 
/home/yhc/practice/documents/notes
[yhc@localhost notes]$ cd /home/yhc/practice/documents
[yhc@localhost documents]$ cp readme.txt > /home/yhc/practice/backup
bash: /home/yhc/practice/backup: Is a directory
[yhc@localhost documents]$ cp readme.txt  /home/yhc/practice/backup
[yhc@localhost documents]$ pwd
/home/yhc/practice/documents
[yhc@localhost documents]$ ls -l
total 0
-rw-r--r--. 1 yhc yhc  0 Jul 16 11:18 'hello linux'
-rw-r--r--. 1 yhc yhc  0 Jul 16 11:17 'hello linux!'
-rw-r--r--. 1 yhc yhc  0 Jul 16 11:19 'hellos linux'
drwxr-xr-x. 2 yhc yhc 22 Jul 16 11:26  notes
-rw-r--r--. 1 yhc yhc  0 Jul 16 11:19  readme.txt
drwxr-xr-x. 2 yhc yhc  6 Jul 16 11:10  reports
[yhc@localhost documents]$ cp /home/yhc/practice/documents  /home/yhc/practice/backup
cp: -r not specified; omitting directory '/home/yhc/practice/documents'
[yhc@localhost documents]$ cp -r /home/yhc/practice/documents  /home/yhc/practice/backup
[yhc@localhost documents]$ sudo -i
[sudo] password for yhc: 
[root@localhost ~]# pwd
/root
[root@localhost ~]# cd ^C
[root@localhost ~]# cd /home/yhc/practice/documents
[root@localhost documents]# mv home/yhc/practice/backup/readme.txt home/yhc/practice/documents  
mv: cannot stat 'home/yhc/practice/backup/readme.txt': No such file or directory
[root@localhost documents]# mv readme.txt home/yhc/practice/documents
mv: cannot move 'readme.txt' to 'home/yhc/practice/documents': No such file or directory
[root@localhost documents]# cd home/yhc/practice/backup
-bash: cd: home/yhc/practice/backup: No such file or directory
[root@localhost documents]# cd home/yhc/practice/backup
-bash: cd: home/yhc/practice/backup: No such file or directory
[root@localhost documents]# cd /home/practice 
-bash: cd: /home/practice: No such file or directory
[root@localhost documents]# pwd
/home/yhc/practice/documents
[root@localhost documents]# cd /home/yhc/practice/backup 
[root@localhost backup]# mv readme.txt home/yhc/practice/documents 
mv: cannot move 'readme.txt' to 'home/yhc/practice/documents': No such file or directory
[root@localhost backup]# sl -l
bash: sl: command not found...
Similar command is: 'ls'
[root@localhost backup]# ls -l
total 0
drwxr-xr-x. 4 yhc yhc 111 Jul 16 11:34 documents
-rw-r--r--. 1 yhc yhc   0 Jul 16 11:31 readme.txt
[root@localhost backup]# mk images/  practice/media 
bash: mk: command not found...
[root@localhost backup]# mv images/ practoce/media
mv: cannot stat 'images/': No such file or directory
[root@localhost backup]# mv home/yhc/practice/images home/yhc/practice/media/
mv: cannot stat 'home/yhc/practice/images': No such file or directory
[root@localhost backup]# cd home/yhc/practice/images
-bash: cd: home/yhc/practice/images: No such file or directory
[root@localhost backup]# cd home/yhc/practice/images
-bash: cd: home/yhc/practice/images: No such file or directory
[root@localhost backup]# ls-l
bash: ls-l: command not found...
[root@localhost backup]# ls -l
total 0
drwxr-xr-x. 4 yhc yhc 111 Jul 16 11:34 documents
-rw-r--r--. 1 yhc yhc   0 Jul 16 11:31 readme.txt
[root@localhost backup]# cd yhc/home/yhc
-bash: cd: yhc/home/yhc: No such file or directory
[root@localhost backup]# pwd
/home/yhc/practice/backup
[root@localhost backup]# cd /home/yhc/practice
[root@localhost practice]# ls -l
total 0
drwxr-xr-x. 3 yhc yhc  41 Jul 16 11:34 backup
drwxr-xr-x. 4 yhc yhc 111 Jul 16 11:19 documents
drwxr-xr-x. 2 yhc yhc   6 Jul 16 11:12 images
[root@localhost practice]# cd home/yhc/practice/images 
-bash: cd: home/yhc/practice/images: No such file or directory
[root@localhost practice]# cd home/yhc/practice/images 
-bash: cd: home/yhc/practice/images: No such file or directory
[root@localhost practice]# pwd
/home/yhc/practice
[root@localhost practice]# cd home/yhc/images 
-bash: cd: home/yhc/images: No such file or directory
[root@localhost practice]# mv home/yhc/practice/images home/yhc/practice/media 
mv: cannot stat 'home/yhc/practice/images': No such file or directory
[root@localhost practice]# cd /home/yhc/practice/images
[root@localhost images]# mv /home/yhc/practice/images home/yhc/practice/backup
mv: cannot move '/home/yhc/practice/images' to 'home/yhc/practice/backup': No such file or directory
[root@localhost images]# mv /home/yhc/practice/images home/yhc/practice/backup/
mv: cannot move '/home/yhc/practice/images' to 'home/yhc/practice/backup/': No such file or directory
[root@localhost images]# mv /home/yhc/practice/images  home/yhc/practice/backup/
mv: cannot move '/home/yhc/practice/images' to 'home/yhc/practice/backup/': No such file or directory
[root@localhost images]# mv home/yhc/practice/images home/yhc/practice/backup
mv: cannot stat 'home/yhc/practice/images': No such file or directory
[root@localhost images]# ls -l
total 0
[root@localhost images]# cd home/yhc/practice 
-bash: cd: home/yhc/practice: No such file or directory
[root@localhost images]# cd home/yhc/
-bash: cd: home/yhc/: No such file or directory
[root@localhost images]# pwd
/home/yhc/practice/images
[root@localhost images]# cd home/yhc/pracitce
-bash: cd: home/yhc/pracitce: No such file or directory
[root@localhost images]# cd home/yhc/practice
-bash: cd: home/yhc/practice: No such file or directory
[root@localhost images]# cd home/yhc
-bash: cd: home/yhc: No such file or directory
[root@localhost images]# cd /home/yhc
[root@localhost yhc]# cd /home/yhc/practice
[root@localhost practice]# mv home/yhc/practice/images home/yhc/practice/media 
mv: cannot stat 'home/yhc/practice/images': No such file or directory
[root@localhost practice]# mv /home/yhc/practice/images /home/yhc/practice/media
[root@localhost practice]# ls -l
total 0
drwxr-xr-x. 3 yhc yhc  41 Jul 16 11:34 backup
drwxr-xr-x. 4 yhc yhc 111 Jul 16 11:19 documents
drwxr-xr-x. 2 yhc yhc   6 Jul 16 11:12 media
[root@localhost practice]# cd /home/yhc/practice/documents
[root@localhost documents]# ls -l
total 0
-rw-r--r--. 1 yhc yhc  0 Jul 16 11:18 'hello linux'
-rw-r--r--. 1 yhc yhc  0 Jul 16 11:17 'hello linux!'
-rw-r--r--. 1 yhc yhc  0 Jul 16 11:19 'hellos linux'
drwxr-xr-x. 2 yhc yhc 22 Jul 16 11:26  notes
-rw-r--r--. 1 yhc yhc  0 Jul 16 11:19  readme.txt
drwxr-xr-x. 2 yhc yhc  6 Jul 16 11:10  reports
[root@localhost documents]# mv  /home/yhc/practice/documents/readem.txt /home/yhc/practice/documents/study_notes.txt  
mv: cannot stat '/home/yhc/practice/documents/readem.txt': No such file or directory
[root@localhost documents]# mv readme.txt /home/yhc/practice/documents/study_notes.txt 
[root@localhost documents]# ls -l
total 0
-rw-r--r--. 1 yhc yhc  0 Jul 16 11:18 'hello linux'
-rw-r--r--. 1 yhc yhc  0 Jul 16 11:17 'hello linux!'
-rw-r--r--. 1 yhc yhc  0 Jul 16 11:19 'hellos linux'
drwxr-xr-x. 2 yhc yhc 22 Jul 16 11:26  notes
drwxr-xr-x. 2 yhc yhc  6 Jul 16 11:10  reports
-rw-r--r--. 1 yhc yhc  0 Jul 16 11:19  study_notes.txt
[root@localhost documents]# cd .. 
[root@localhost practice]# cd ..
[root@localhost yhc]# cd ..
[root@localhost home]# mkdir my_project 
[root@localhost home]# ls -l
total 4
drwxr-xr-x.  2 root root    6 Jul 16 12:07 my_project
drwx------. 15 yhc  yhc  4096 Jul 16 11:08 yhc
[root@localhost home]# pwd
/home
[root@localhost home]# mkdkir /home/my_project/src
bash: mkdkir: command not found...
[root@localhost home]# mkkdir /home/my_project/src
bash: mkkdir: command not found...
Similar command is: 'mkdir'
[root@localhost home]# mkdir /home/my_project/src
[root@localhost home]# mkdir /home/my_project/docs 
[root@localhost home]# mkdir /home/my_project/tests
[root@localhost home]# mkdir /home/my_project/config
[root@localhost home]# cd /home/my_project/src 
[root@localhost src]# mk "MAIN"  main.py
bash: mk: command not found...
[root@localhost src]# tuoch "main" maain.py 
bash: tuoch: command not found...
Similar command is: 'touch'
[root@localhost src]# touch "main main.py
> pwe
> pwd
> "
[root@localhost src]# tuch "min" main/py
bash: tuch: command not found...
[root@localhost src]# touch "min" main.py
[root@localhost src]# ls -l
total 0
-rw-r--r--. 1 root root 0 Jul 16 12:11 'main main.py'$'\n''pwe'$'\n''pwd'$'\n'
-rw-r--r--. 1 root root 0 Jul 16 12:12  main.py
-rw-r--r--. 1 root root 0 Jul 16 12:12  min
[root@localhost src]# cd ..
[root@localhost my_project]# cd /home/my_project/docs
[root@localhost docs]# touch " my" README.md 
[root@localhost docs]# cd ..
[root@localhost my_project]# cd ..
[root@localhost home]# cp /home/my_project /home/my_project_backup
cp: -r not specified; omitting directory '/home/my_project'
[root@localhost home]# cp r /home/my_project /home/my_project_backup
cp: target '/home/my_project_backup' is not a directory
[root@localhost home]# cp r  /home/my_project_backup/
cp: cannot stat 'r': No such file or directory
[root@localhost home]# cp r /home/my_project/ /home/my_project_backup/
cp: target '/home/my_project_backup/' is not a directory
[root@localhost home]# /home/my_project   /home/my_project_backup
-bash: /home/my_project: Is a directory
[root@localhost home]# cp r /home/my_project   /home/my_project_backup
cp: target '/home/my_project_backup' is not a directory
[root@localhost home]# cp r /home/my_project   /home/my_project_backup
cp: target '/home/my_project_backup' is not a directory
[root@localhost home]# mkdir ^C
[root@localhost home]# mkdir /home/my_project_backup
[root@localhost home]# ^C
[root@localhost home]# cp r /home/my_project   /home/my_project_backup
cp: cannot stat 'r': No such file or directory
cp: -r not specified; omitting directory '/home/my_project'
[root@localhost home]# ls -l
total 4
drwxr-xr-x.  6 root root   56 Jul 16 12:09 my_project
drwxr-xr-x.  2 root root    6 Jul 16 12:51 my_project_backup
drwx------. 15 yhc  yhc  4096 Jul 16 11:08 yhc
[root@localhost home]# pwd
/home
[root@localhost home]# cp r /home/my_project /home/my_project_backup 
cp: cannot stat 'r': No such file or directory
cp: -r not specified; omitting directory '/home/my_project'
[root@localhost home]# cp /home/my_project /home/my_project_backup
cp: -r not specified; omitting directory '/home/my_project'
[root@localhost home]# cp /home/my_project  /home/my_project_backup
cp: -r not specified; omitting directory '/home/my_project'
[root@localhost home]# cp -r ^C
[root@localhost home]# cp -r /home/my_project  /home/my_project_backup
[root@localhost home]# ls -r 
yhc  my_project_backup  my_project
[root@localhost home]# cd /home/my_project/src 
[root@localhost src]# ls -l
total 0
-rw-r--r--. 1 root root 0 Jul 16 12:11 'main main.py'$'\n''pwe'$'\n''pwd'$'\n'
-rw-r--r--. 1 root root 0 Jul 16 12:12  main.py
-rw-r--r--. 1 root root 0 Jul 16 12:12  min
[root@localhost src]# mv main.py app.py
[root@localhost src]# ls -l
total 0
-rw-r--r--. 1 root root 0 Jul 16 12:12  app.py
-rw-r--r--. 1 root root 0 Jul 16 12:11 'main main.py'$'\n''pwe'$'\n''pwd'$'\n'
-rw-r--r--. 1 root root 0 Jul 16 12:12  min
[root@localhost src]# cd /home/documents 
-bash: cd: /home/documents: No such file or directory
[root@localhost src]# ..
[root@localhost src]# ..
[root@localhost src]# pwd
/home/my_project/src
[root@localhost src]# ..
[root@localhost src]# cd ..
[root@localhost my_project]# ls 
config  docs  src  tests
[root@localhost my_project]# ls -l
total 0
drwxr-xr-x. 2 root root  6 Jul 16 12:09 config
drwxr-xr-x. 2 root root 34 Jul 16 12:14 docs
drwxr-xr-x. 2 root root 60 Jul 16 12:57 src
drwxr-xr-x. 2 root root  6 Jul 16 12:09 tests
[root@localhost my_project]# cd /home/docs 
-bash: cd: /home/docs: No such file or directory
[root@localhost my_project]# cd /home/my_project/docs 
[root@localhost docs]# ls -l
total 0
-rw-r--r--. 1 root root 0 Jul 16 12:14 ' my'
-rw-r--r--. 1 root root 0 Jul 16 12:14  README.md
[root@localhost docs]# mv README.md /home/my_project
[root@localhost docs]# ls 
' my'
[root@localhost docs]# cd ..
[root@localhost my_project]# ls -l
total 0
drwxr-xr-x. 2 root root  6 Jul 16 12:09 config
drwxr-xr-x. 2 root root 17 Jul 16 13:01 docs
-rw-r--r--. 1 root root  0 Jul 16 12:14 README.md
drwxr-xr-x. 2 root root 60 Jul 16 12:57 src
drwxr-xr-x. 2 root root  6 Jul 16 12:09 tests
[root@localhost my_project]# ^C
