[yhc@localhost ~]$ read -p "read input:" argument_first 
read input:yi 
[yhc@localhost ~]$ source read_first.sh kim 
read_first= kim
[yhc@localhost ~]$ echo "$argument_first" 
yi

[yhc@localhost ~]$ cat read_first.sh 
read_first="$1"

echo read_first= "$read_first" 

