# 🐧 Linux Command Cheat Sheet

## APACHE

```bash
# Apache Commands

apachectl -t : Test configuration
apachectl restart : Restart service
apachectl graceful : Graceful restart
apachectl stop : Stop service
systemctl start apache2 : Start (systemd)
systemctl status apache2 : Check status

# Common Directories
/etc/apache2 : Configuration (Debian)
/etc/httpd : Configuration (RHEL)
/var/www/html : Default web root
/var/log/apache2 : Log files (Debian)
/var/log/httpd : Log files (RHEL)

# Log Monitoring
tail -f /var/log/apache2/access.log
tail -f /var/log/apache2/error.log

# Configuration Tips
# Virtual hosts in /etc/apache2/sites-available/
# Enable site: a2ensite example.com
# Disable site: a2dissite example.com
# Modules: a2enmod, a2dismod
```

## BASE

```bash
# Basic Linux Commands

pwd : Print working directory
ls : List directory contents
  ls -l : Long listing format
  ls -a : Show hidden files
cd : Change directory
  cd ~ : Go to home directory
  cd - : Go to previous directory
cp : Copy files or directories
  cp -r : Recursive copy (for directories)
mv : Move/rename files
rm : Remove files
  rm -rf : Force recursive removal (dangerous)
mkdir : Create directory
rmdir : Remove empty directory
cat : Display file contents
less : View file page by page
head : Show first lines of file
tail : Show last lines of file
  tail -f : Follow log file
grep : Search text patterns
  grep -r : Recursive search
find : Search for files
  find . -name "*.txt" : Find all txt files
chmod : Change file permissions
chown : Change file owner
tar : Archive files
  tar -czvf : Create gzipped tar archive
  tar -xzvf : Extract gzipped tar archive
df : Disk space usage
du : Directory space usage
  du -sh : Human-readable summary
top : Display processes
htop : Interactive process viewer
ps : Process status
  ps aux : Show all processes
kill : Terminate process
  kill -9 : Force kill
```

## DOCKER

```bash
# Docker Commands

docker ps : List running containers
  docker ps -a : List all containers
docker images : List images
docker run : Run a container
  docker run -it : Interactive terminal
  docker run -d : Detached mode
  docker run -p 8080:80 : Port mapping
docker stop : Stop container
docker start : Start stopped container
docker rm : Remove container
  docker rm -f : Force remove running container
docker rmi : Remove image
docker build : Build image from Dockerfile
docker pull : Pull image from registry
docker push : Push image to registry
docker logs : View container logs
  docker logs -f : Follow log output
docker exec : Execute command in running container
  docker exec -it /bin/bash : Get shell in container
docker volume : Manage volumes
docker network : Manage networks
docker-compose up : Start services
docker-compose down : Stop services
docker system prune : Clean up unused objects
docker info : Display system information
```

## FILESYSTEM

```bash
# Filesystem Commands

mount : Mount filesystem
  mount -a : Mount all in fstab
umount : Unmount filesystem
df : Disk space usage
  df -h : Human-readable
du : Directory space usage
  du -sh * : Summary per directory
lsblk : List block devices
blkid : Show block device attributes
fdisk : Partition table manipulator
parted : Advanced partition tool
mkfs : Create filesystem
  mkfs.ext4 : Create ext4 fs
fsck : Filesystem check
  fsck -y : Auto-repair
tune2fs : Tune ext filesystem
dd : Low-level copy
  dd if=/dev/zero of=file bs=1M count=100
ln : Create links
  ln -s : Symbolic link
findmnt : Show mounted filesystems
```

## GIT

```bash
# Git Commands

git init : Initialize new repository
git clone : Clone a repository
git status : Show working tree status
git add : Add files to staging
  git add . : Add all files
git commit : Commit changes
  git commit -m "message" : Commit with message
git push : Push to remote repository
git pull : Fetch and merge from remote
git branch : List/create branches
  git branch -d : Delete branch
git checkout : Switch branches
  git checkout -b : Create and switch to new branch
git merge : Merge branches
git rebase : Reapply commits on top of another branch
git log : Show commit logs
  git log --oneline : Compact log view
git diff : Show changes
git stash : Stash changes temporarily
git remote : Manage remote repositories
git reset : Reset current HEAD
  git reset --hard : Discard all changes
git tag : Create/list tags
git config : Configure settings
```

## JOURNALCTL

```bash
# Journalctl Commands (Systemd Logs)

journalctl : Show all logs
journalctl -u : Show logs for service
  journalctl -u nginx
journalctl -f : Follow logs (tail -f)
journalctl -b : Current boot logs
journalctl -k : Kernel messages
journalctl --since : Filter by time
  journalctl --since "2023-01-01"
  journalctl --since "1 hour ago"
journalctl --until : Filter end time
journalctl -p : Priority filter
  journalctl -p err : Only errors
journalctl -n : Show n entries
  journalctl -n 50
journalctl --disk-usage : Show log size
journalctl --vacuum-size= : Clean logs
  journalctl --vacuum-size=500M
journalctl --no-pager : Disable pager
journalctl -o : Output format
  journalctl -o json : JSON format

```

## NETWORKING

```bash
# Networking Commands

ip addr : Show IP addresses (modern)
ifconfig : Show network interfaces (deprecated)
ping : Test network connectivity
  ping -c 4 : Send 4 packets
traceroute : Trace network path
mtr : Network diagnostic tool
netstat : Network statistics
  netstat -tulnp : Show listening ports
ss : Socket statistics (modern netstat)
  ss -tulnp : Show listening ports
dig : DNS lookup
nslookup : DNS query tool
whois : Domain information
host : DNS lookup utility
route : Show routing table
  route -n : Numerical addresses
iwconfig : Wireless interface config
nmcli : NetworkManager command line
curl : Transfer data from URLs
  curl -I : Show headers only
wget : Download files
  wget -c : Continue interrupted download
scp : Secure copy between hosts
rsync : Remote file sync
  rsync -avz : Archive, verbose, compress
nc/netcat : Network swiss army knife
tcpdump : Network packet analyzer
  tcpdump -i eth0 : Capture on interface
```

## NGINX

```bash
# Nginx Commands

nginx -t : Test configuration
nginx -s : Send signal
  nginx -s reload : Reload config
  nginx -s stop : Fast shutdown
systemctl start nginx : Start service
systemctl stop nginx : Stop service
systemctl restart nginx : Restart service
systemctl status nginx : Check status

# Common Directories
/etc/nginx : Configuration
/var/log/nginx : Log files
/usr/share/nginx/html : Default web root

# Log Monitoring
tail -f /var/log/nginx/access.log
tail -f /var/log/nginx/error.log

# Configuration Tips
# server blocks in /etc/nginx/sites-available/
# Enable site: ln -s /etc/nginx/sites-available/example /etc/nginx/sites-enabled/
```

## PACKAGE-MANAGERS

```bash
# Package Management Commands

# APT (Debian/Ubuntu)
apt update : Update package list
apt upgrade : Upgrade packages
apt install : Install package
apt remove : Remove package
apt purge : Remove with configs
apt search : Search packages
apt show : Show package info
apt list --installed : List installed
apt autoremove : Remove unused packages

# YUM/DNF (RHEL/CentOS/Fedora)
dnf install : Install package
dnf remove : Remove package
dnf update : Update packages
dnf search : Search packages
dnf info : Show package info
dnf list installed : List installed

# Pacman (Arch)
pacman -S : Install package
pacman -R : Remove package
pacman -Syu : Full system upgrade
pacman -Qs : Search installed
pacman -Si : Show package info

# Snap
snap install : Install snap
snap remove : Remove snap
snap list : List installed
snap refresh : Update snaps

# Flatpak
flatpak install : Install package
flatpak uninstall : Remove package
flatpak list : List installed
flatpak update : Update packages
```

## PERMISSIONS

```bash
# File Permissions Commands

chmod : Change file permissions
  chmod 755 : rwxr-xr-x
  chmod +x : Add execute permission
  chmod -R : Recursive change
chown : Change file owner
  chown user:group : Change both
  chown -R : Recursive change
chgrp : Change group ownership
umask : Set default permissions
stat : Display file status
  stat -c %a : Show octal permissions
getfacl : View ACLs
setfacl : Set ACLs
  setfacl -m u:user:rwx : Add user ACL
  setfacl -x u:user : Remove user ACL
id : Show user/group IDs
groups : Show user's groups
newgrp : Temporarily change primary group
sudo : Execute as superuser
su : Switch user
  su - : With environment
```

## SSH

```bash
# SSH Commands

ssh : Connect to remote host
  ssh user@host
  ssh -p 2222 : Custom port
ssh-keygen : Create key pair
  ssh-keygen -t rsa -b 4096
ssh-copy-id : Copy key to remote host
scp : Secure copy
  scp file user@host:path
sftp : Secure FTP
ssh-agent : Manage keys
ssh-add : Add keys to agent
ssh -v : Verbose mode
ssh -D : SOCKS proxy
ssh -L : Local port forwarding
ssh -R : Remote port forwarding
ssh -X : X11 forwarding
ssh_config : Client config file (~/.ssh/config)
sshd_config : Server config file (/etc/ssh/sshd_config)
```

## SYSTEMD

```bash
# Systemd Commands

systemctl start : Start service
systemctl stop : Stop service
systemctl restart : Restart service
systemctl reload : Reload configuration
systemctl status : Check service status
systemctl enable : Enable service at boot
systemctl disable : Disable service at boot
systemctl is-active : Check if service is running
systemctl is-enabled : Check if service is enabled
systemctl list-units : List all units
  systemctl list-units --type=service : List services
systemctl list-timers : List timers
systemctl mask : Completely disable service
systemctl unmask : Remove service mask
systemctl daemon-reload : Reload systemd config
journalctl : View system logs
  journalctl -u : View logs for specific service
  journalctl -f : Follow logs
  journalctl --since "2023-01-01" : Filter by date
  journalctl -p err : Show only errors
```

## TMUX

```bash
# Tmux Commands

# Sessions
tmux new -s name : New named session
tmux ls : List sessions
tmux attach -t name : Attach to session
tmux kill-session -t name : Kill session

# Windows (tabs)
Ctrl+b c : Create window
Ctrl+b n : Next window
Ctrl+b p : Previous window
Ctrl+b & : Kill window
Ctrl+b , : Rename window

# Panes
Ctrl+b % : Vertical split
Ctrl+b " : Horizontal split
Ctrl+b arrow : Switch panes
Ctrl+b x : Kill pane
Ctrl+b z : Zoom pane
Ctrl+b space : Toggle layouts

# Misc
Ctrl+b d : Detach session
Ctrl+b [ : Enter copy mode
Ctrl+b ] : Paste
Ctrl+b $ : Rename session
Ctrl+b : : Command prompt
```

## UFW

```bash
# UFW (Uncomplicated Firewall) Commands

ufw enable : Enable firewall
ufw disable : Disable firewall
ufw status : Show status
  ufw status verbose : Detailed status
ufw default : Set default policy
  ufw default deny : Deny all incoming by default
  ufw default allow : Allow all incoming by default
ufw allow : Allow traffic
  ufw allow 22 : Allow SSH
  ufw allow 80/tcp : Allow HTTP
  ufw allow from 192.168.1.100 : Allow from specific IP
ufw deny : Deny traffic
  ufw deny 23 : Deny Telnet
ufw delete : Delete rule
  ufw delete allow 22 : Delete SSH allow rule
ufw reset : Reset all rules
ufw logging : Configure logging
  ufw logging on : Enable logging
  ufw logging off : Disable logging
ufw show added : Show added rules
ufw app list : List application profiles
ufw app info : Show info for application profile
```

## USERS

```bash
# User Management Commands

whoami : Show current user
id : Show user and group info
who : Show logged in users
w : Show logged in users and activities
last : Show last logged in users
useradd : Add new user
  useradd -m : Create with home directory
  useradd -G : Add to secondary groups
usermod : Modify user
  usermod -aG : Append to groups
userdel : Delete user
  userdel -r : Remove home directory too
passwd : Change password
  passwd -l : Lock account
  passwd -u : Unlock account
groupadd : Add new group
groupmod : Modify group
groupdel : Delete group
groups : Show user groups
newgrp : Change primary group temporarily
sudo : Execute as superuser
visudo : Edit sudoers file safely
su : Switch user
  su - : Login as user with environment
chage : Change password expiry info
```

## VIM

```bash
# Vim Commands

# Basic Movement
h : Left
j : Down
k : Up
l : Right
0 : Start of line
$ : End of line
gg : First line
G : Last line
Ctrl+f : Page down
Ctrl+b : Page up

# Editing
i : Insert mode
a : Append after cursor
o : New line below
O : New line above
x : Delete character
dd : Delete line
yy : Yank (copy) line
p : Paste after
P : Paste before
u : Undo
Ctrl+r : Redo

# Search/Replace
/pattern : Search forward
?pattern : Search backward
n : Next match
N : Previous match
:%s/old/new/g : Replace all

# Saving/Exiting
:w : Save
:q : Quit
:wq : Save and quit
:q! : Quit without saving
```

