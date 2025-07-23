```
yhc@localhost ~]$ nano first_read.sh
[yhc@localhost ~]$ read -p "input value:" first_input 
input value:agument_first read_first
[yhc@localhost ~]$ source first_read.sh
bash: first_read: command not found...
first_read: first_read
first_input: first_input
[yhc@localhost ~]$ cat first_read.sh

first_read = "$1"

echo "first_read:" first_read 
echo "first_input:" first_input 
[yhc@localhost ~]$ 

```
