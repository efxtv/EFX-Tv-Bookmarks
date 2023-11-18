# SUID GUID Sticky bit Chattat
Let us talk about one by one 
- SUID (Set-user Identification)  
`[user -binary ]` = to add special permission to binaries, so that normal users can run root commands

- GUID (Set-group Identification) 
`[group -group]` = Add suid to the group so that any user creates any file gets created by the same group directory assigned to

-  Sticky Bit (Files can not be deleted by other users in shared directory)			  
`[others - folders]`  = The owner and sudo user can delete the file rest can not

## List of commands can be executed via root user only. What we want is, I want other users to run these commands.
```
$ useradd
$ usermod
$ fdisk
```

## The first way to allow a normal user to use such a command is, you do the changes in the sudoers files. We already know about it.
## sudoers is a file where we can define whether a normal user can run all the commands or specific commands or not. User2 can not access

## Create a user from the root and change the password 
```
sudo su
adduser test
passwd test
```

## Switch to the test user and trying to add a user will not work but the password command will work because passwd command has SUID set in it by default
 locate useradd and passed
```
which useradd;  which passwd
	/usr/bin/passwd
	/usr/sbin/useradd
```

# Check permissions of the files 
```
ls -l /usr/bin/passwd; ls -l /usr/sbin/useradd
	-rwsr-xr-x 1 root root 59976 ноя 24  2022 /usr/bin/passwd   (stands for sudi, means anyone can run this command)
	-rwxr-xr-x 1 root root 126424 ноя 24  2022 /usr/sbin/useradd
```

## Add suid on useradd command and check permissions 
```
chmod u+s /usr/sbin/useradd
ls -l /usr/sbin/usermod
	-rwsr-xr-x 1 root root 59976 ноя 24  2022 /usr/sbin/useradd (suid is added)
```
	
# Restrict user so that he can not change his password by removing suid from the password binary
```
chmod u-s /usr/bin/passwd (now user may not be able to use this without root)
```

--- 

## Create 3 users
```
$ sudo useradd user1
$ sudo useradd user2
$ sudo useradd user3
```

# create  a directory in the root (with root user and add 777 permissions to it
```
$ mkdir /test;chmod 777 /test
```

# Open 3 terminal and switch to user1 2 and 3 in each and try to create files in each 
```
$ touch file1
$ touch file2
$ touch file3
```

# All three 3 users can create and delete files (user and group will belong to the dedicated user)
# I want to create files but the group should remain the same for all the users. This means 3 user in a single group and that group has 777 permissions
### Create a group demo
```
	$ sudo groupadd demo
```
	
### Change group for /test directory
```
 $ chgrp demo /test
```
	
### set suid on /test folder
```
	$ chmod g+s /test
```
	
### Check guid
```
	$ ls -l /|grep test
		drwxrwsrwx   3 root files       4096 ноя 13 12:44 shared (s added at the place of group)
```

### Command to remove the guid form directory
```
	$ chmod g-s /test
```

### add suid using numbers with chmod and to remove
```
$ chmod 4755 /usr/bin/passwd (added)
$ chmod 0755 /usr/bin/passwd (removed)
```

### Add guid using numbers with chmod
```
$ chmod 2755 /usr/bin/passwd (added)
$ chmod 0755 /usr/bin/passwd;$ chmod 00755 /usr/bin/passwd (removed)
```

---

###  So far we have created the files and any of the user 123 can delete the files. After applying the sticky bit no body can delete the files apart from the owner and root user

### create a directory /xyz and provide it 777 permissions
```
$ mkdir /xyz;chmod 777 /xyz
```

### Add sticky bit permission to /xyz
```
$ chown o+t /xyz (add permissions to other)
```

### Check the directory permissions 
```
$ ls -l /xyz
```

### Now the user created one dedicated user can delete the files

### Add a sticky bit using numbers with chmod
```
$ chmod +1777 /xyz (added)
```

### Add sticky bit using numbers with chmod
```
$ chmod 0777 /xyz
```

### `[Locked directory +i ]add chattr using +i` (can not delete modify but copy to other location)
```
$ chattr +i /xyz
```

### `[Appedn only +a]`Can not delete but add directory or files in /xyz
```
$ chattr +a /xyz
```

---


## What is chatter
The Linux command known as 'chattr' is designed for manipulating file attributes within a file system. Its core function involves modifying the properties of files within a specified directory. The primary objective of employing 'chattr' is to restrict the ability of users, other than the superuser, to modify multiple files. Given that Linux operates as a multi-user system, the risk arises wherein a user might unintentionally or maliciously delete a file critical to another user, particularly an administrator. To mitigate such potential scenarios, Linux incorporates the 'chattr' command. In essence, 'chattr' empowers users to render files immutable, undeletable, exclusively appendable, and more!


### Basic use of chattr
- The 'chattr' command is employed to restrict users from performing specific actions such as deletion or modification. 
- System administrators utilize it to create an environment where users cannot tamper with Linux security, 
- Thereby preventing accidental deletions.
- The chattr’ can be used to preserve some system files that are very important and needs to remain in the host PC no matter what. 
- Also to make a directory undeletable or unmodifiable for users other than superuser
- -i to remove immutable (can be deleted) 
- +i atime to add immutable ( can not be deleted)

### sudo chattr [OPTIONS] [OPERATOR][ATTRIBUTES] FILE
```
$ sudo chattr [option] [ATTRIBUTES] files
```

### These are some OPTIONS available in lsattr Command
-R : Change attributes of directories and their contents recursively
-V : Display the verbose output and program version
-f : Suppress the error message
```
$ lsattr file
```

### {+|-|=} some OPERATOR
 ‘+‘ : Adding selected attributes to the existing attributes of the files.
 ‘–‘ : Causes selected attributes to be removed.
 ‘=‘ : Causes selected attributes to be the only attributes that the files have.


### Following is the list of common ATTRIBUTES and associated flags that can be set/unset using the chattr command:
- A set : The time record is not updated.
- S set : The changes are updated synchronously on the disk.
- a set : File can only be opened in append mode for writing.
- i set : File cannot be modified (immutable), the only superuser can unset the attribute.
- j set : All of files information is updated to the ext3 journal before being updated to the file itself.
- t set : No tail-merging is allowed.
- d set : No more candidate for backup when the dump process is run.
- u set : When such a file is deleted, its data is saved enabling the user to ask for its undeletion.

### (+i) chattr command to make any file immutable | can not (modify, delete, from sudo or root)
```
$ thouch hello.txt
$ lsattr
$ sudo chattr +i hello.txt
$ lsattr
```

### (-i)Change attributes to make it deletable again
```
$ sudo chattr +i hello.txt
$ sudo chattr -i hello.txt
```

### (+a) chattr command to allow the file to be opened in append mode only
```
$ sudo chattr -i hello.txt
$ sudo chattr +a hello.txt
$ echo 'first line' > hello.txt (Operation not permitted)
$ echo 'first line' >> hello.txt (will work)
```

### (+i, -R) Making directory secured (+i immutable directory, -R all the recursive files)
```
$ mkdir newdir
$ sudo chattr +a -R newdire/
```

### chattr command to set only selected attributes
```
$ sudo chattr =attr file
$ sudo chattr =e hello.txt
$ sudo chattr =ie *
```

- Watch full [video tutorial here](https://t.me/c/1480784123/2223/2472) [Part 2](https://t.me/c/1480784123/2223/2476)
- Join our private classes on telegram [EFXTV](https://t.me/errorfix_tv)
- Our telegram goup [EFX TV](https://t.me/efxtv)
