# What is a Sudoers File? sudoers
 A Sudoers file is like any other file on a Linux Operating System. But it plays a precious role in managing what a “User” or “Users in a Group” can do on the Linux O system
- Sudo means Super User Do”. 
- As it suggests — it is just like telling the Kernel/OS, You have no choice,  you have to do it!”.
- Users with Sudo permission are called Sudo Users. 
- Management of all these sudo users is done through a file called Sudoers File
- This file also lives in the /etc/ directory like any other configuration file.
- A normal user of Linux will have many restrictions in the system.
- from a security perspective users won’t be able to start a service, change a config file, or execute a script on the system by default.
- In the /etc/sudoers file, all the user starts with % actually represents the user group

## Sudoers syntax
% means group
```
Syntax : User OnHost = (User:Group) Commands
         root ALL    =  (ALL:ALL)   ALL
        %user ALL    =  (ALL:ALL)   ALL
```

## Login to sudo user

'-' (hyphen) loads the profile with the user and all the .profile aliases 
```
sudo su username (no login shell, with bashrc file)
sudo su - username (login with shell, with bashrc and bash profile)
```

##  RC file location in Linux
All the RC files live in $HOME (hidden files end with rc) and in the /etc directory bash.bashrc
```
cd;ls -la | grep bash
```
- Bashrc - Alias and automation at the time of user logged in (no shell)
- Bash profile.rc - At the time of user logged in (with shell)
- Bash logout.rc - Before the user logs out (before logged out)
- Bash history.rc - Stores all the history-related entry

## Alias and environment variables by user
 Temp alias in terminal or script
```
alias u='adduser'
```
 Permanent alias in $HOME/.profilerc or $HOME/.profile
```
alias u='adduser'
source .bashrc
source .profile

```
Environment variables in $HOME/.profile
```
export E='/etc/'
cd $E
```

## Check the sudo permissions we store in sudoers 
```
sudo -l
sudo -l user
```

## Add user to sudo user group
```
usermod -aG sudo username
```

## Remove a user from the sudo group
```
sudo gpasswd --delete username sudo
```
## Allow users to run a list of commands only,
```
username  ALL(ALL:ALL) /usr/sbin/userbmod,/user/sbin/adduser
```
![image](https://github.com/efxtv/EFX-Tv-Bookmarks/assets/59799893/3064b786-9cf5-4e64-90b5-60830acad02b)


## No password update and upgrade 
```
nano /etc/sudoers
username  ALL(ALL:ALL) NOPASSWD:  ALL
```
## Create user alias and command alias
![image](https://github.com/efxtv/EFX-Tv-Bookmarks/assets/59799893/e8496868-e781-4cbc-90f5-cdfd55e874bc)

- Full video on sudoers and sudoers [Full_Video](https://t.me/c/1480784123/2223/2350)
- Join our EFX_Tv Private group to learn more [EFXTV](https://t.me/errorfix_tv)




