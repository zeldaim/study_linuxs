[yhc@localhost ~]$ mkdir -p ~/practice/project/{src,docs,tests,config}
[yhc@localhost ~]$ mkdir -p ~/practice/project/src/{main,utils}
[yhc@localhost ~]$ mkdir -p ~/practice/project/docs/{user,dev}
[yhc@localhost ~]$ mkdir -p ~/practice/project/tests/unit
[yhc@localhost ~]$ touch ~/practice/project/README.md
[yhc@localhost ~]$ touch ~/practice/project/src/main/app.py
[yhc@localhost ~]$ touch ~/practice/project/src/utils/helper.py
[yhc@localhost ~]$ touch ~/practice/project/docs/user/manual.txt
[yhc@localhost ~]$ touch ~/practice/project/docs/dev/api.md
[yhc@localhost ~]$ touch ~/practice/project/tests/test_main.py
[yhc@localhost ~]$ touch ~/practice/project/config/settings.conf
[yhc@localhost ~]$ tree
.
├── Desktop
├── Documents
├── Downloads
│   ├── project
│   │   ├── docs~
│   │   ├── src~
│   │   └── tests~
│   └── sibling-project
│       ├── app
│       ├── config
│       └── lib
├── Music
├── Pictures
├── practice
│   ├── backup
│   │   ├── documents
│   │   │   ├── hello linux
│   │   │   ├── hello linux!
│   │   │   ├── hellos linux
│   │   │   ├── notes
│   │   │   │   └── memo.txt
│   │   │   ├── readme.txt
│   │   │   └── reports
│   │   └── readme.txt
│   ├── documents
│   │   ├── hello linux
│   │   ├── hello linux!
│   │   ├── hellos linux
│   │   ├── notes
│   │   │   └── memo.txt
│   │   ├── reports
│   │   └── study_notes.txt
│   ├── media
│   └── project
│       ├── config
│       │   └── settings.conf
│       ├── docs
│       │   ├── dev
│       │   │   └── api.md
│       │   └── user
│       │       └── manual.txt
│       ├── README.md
│       ├── src
│       │   ├── main
│       │   │   └── app.py
│       │   └── utils
│       │       └── helper.py
│       └── tests
│           ├── test_main.py
│           └── unit
├── Public
├── temp
├── Templates
└── Videos

36 directories, 18 files
[yhc@localhost ~]$ cd ~
[yhc@localhost ~]$ rm ./Downloads/project/
rm: cannot remove './Downloads/project/': Is a directory
[yhc@localhost ~]$ rm -r ./Downloads/project/
[yhc@localhost ~]$ tree
.
├── Desktop
├── Documents
├── Downloads
│   └── sibling-project
│       ├── app
│       ├── config
│       └── lib
├── Music
├── Pictures
├── practice
│   ├── backup
│   │   ├── documents
│   │   │   ├── hello linux
│   │   │   ├── hello linux!
│   │   │   ├── hellos linux
│   │   │   ├── notes
│   │   │   │   └── memo.txt
│   │   │   ├── readme.txt
│   │   │   └── reports
│   │   └── readme.txt
│   ├── documents
│   │   ├── hello linux
│   │   ├── hello linux!
│   │   ├── hellos linux
│   │   ├── notes
│   │   │   └── memo.txt
│   │   ├── reports
│   │   └── study_notes.txt
│   ├── media
│   └── project
│       ├── config
│       │   └── settings.conf
│       ├── docs
│       │   ├── dev
│       │   │   └── api.md
│       │   └── user
│       │       └── manual.txt
│       ├── README.md
│       ├── src
│       │   ├── main
│       │   │   └── app.py
│       │   └── utils
│       │       └── helper.py
│       └── tests
│           ├── test_main.py
│           └── unit
├── Public
├── temp
├── Templates
└── Videos

32 directories, 18 files
[yhc@localhost ~]$ cd ./practice/project/src/main/
[yhc@localhost main]$ pwd 
/home/yhc/practice/project/src/main
[yhc@localhost main]$ cd ./../utils/
[yhc@localhost utils]$ tree
.
└── helper.py

0 directories, 1 file
[yhc@localhost utils]$ ./helper.py
bash: ./helper.py: Permission denied
[yhc@localhost utils]$ cd ./helper.py 
bash: cd: ./helper.py: Not a directory
[yhc@localhost utils]$ cd ./../../
[yhc@localhost project]$ pwd 
/home/yhc/practice/project
[yhc@localhost project]$ cd ./README.MD 
bash: cd: ./README.MD: No such file or directory
[yhc@localhost project]$ cd ./README.md 
bash: cd: ./README.md: Not a directory
[yhc@localhost project]$ ./../../
bash: ./../../: Is a directory
[yhc@localhost project]$ pwd 
/home/yhc/practice/project
[yhc@localhost project]$ cd ./docs/user/
[yhc@localhost user]$ ls 
manual.txt
[yhc@localhost user]$ cd ./../../config/
[yhc@localhost config]$ ls 
settings.conf
[yhc@localhost config]$ cd ~/practice/project/src/main/
[yhc@localhost main]$ ls ./../../src/main/
app.py
[yhc@localhost main]$ cd ~/practice/project/docs/user/
[yhc@localhost user]$ cd ./../../src/main/
[yhc@localhost main]$ ls
app.py
[yhc@localhost main]$ cd ./../../tests/
[yhc@localhost tests]$ ls
test_main.py  unit
[yhc@localhost tests]$ cd ./../src/utils/
[yhc@localhost utils]$ cd ~/practice/project/tests/unit/
[yhc@localhost unit]$ cd ./../../..
[yhc@localhost practice]$ cd ~/practice/project/tests/unit/
[yhc@localhost unit]$ cd ./../../../project/
[yhc@localhost project]$ cd ~/practice/project/tests/unit/
[yhc@localhost unit]$ ./../../src/main/
bash: ./../../src/main/: Is a directory
[yhc@localhost unit]$ ls 
[yhc@localhost unit]$ cd ~/practice/project/tests/unit/
[yhc@localhost unit]$ cd ./../../src/main/
[yhc@localhost main]$ ls
app.py
[yhc@localhost main]$ cd ~/practice/project/tests/unit/
[yhc@localhost unit]$ cd ./../../src/utils/
[yhc@localhost utils]$ ls
helper.py
[yhc@localhost utils]$ cd  ~/practice/project/src/utils/
[yhc@localhost utils]$ man pt
No manual entry for pt
[yhc@localhost utils]$ man cat
[yhc@localhost utils]$ cat ~/practice/project/README.md 
[yhc@localhost utils]$ ls -l ~/practice/project/docs/user/manual.txt 
-rw-r--r--. 1 yhc yhc 0 Jul 16 16:22 /home/yhc/practice/project/docs/user/manual.txt
[yhc@localhost utils]$ ls -l ~/practice/project/config/settings.conf 
-rw-r--r--. 1 yhc yhc 0 Jul 16 16:23 /home/yhc/practice/project/config/settings.conf
[yhc@localhost utils]$ cd  ~/practice/project/src/main/
[yhc@localhost main]$ man mkdir
[yhc@localhost main]$ man touch 
[yhc@localhost main]$ cd ~/practice/project/docs/dev/
[yhc@localhost dev]$ cp api.md  ./../../docs/user/api_copy.md
[yhc@localhost dev]$ cp ~/practice/project/src/utils/helper.py  ./
[yhc@localhost dev]$ ls 
api.md  helper.py
[yhc@localhost dev]$ cp ~/practice/project/config/settings.conf  ./../../tests/unit/
[yhc@localhost dev]$ mv ~/practice/project/src/main/app.py  ./../../config/
[yhc@localhost dev]$ ls ./../../config/
app.py  settings.conf
[yhc@localhost dev]$ cd ~/practice/project/~
bash: cd: /home/yhc/practice/project/~: No such file or directory
[yhc@localhost dev]$ pwd
/home/yhc/practice/project/docs/dev
[yhc@localhost dev]$ cd ./../..
[yhc@localhost project]$ tree
.
├── config
│   ├── app.py
│   └── settings.conf
├── docs
│   ├── dev
│   │   ├── api.md
│   │   └── helper.py
│   └── user
│       ├── api_copy.md
│       └── manual.txt
├── README.md
├── src
│   ├── main
│   └── utils
│       └── helper.py
└── tests
    ├── test_main.py
    └── unit
        └── settings.conf

9 directories, 10 files
[yhc@localhost project]$ cp ./src/main/  ./docs/dev/
cp: -r not specified; omitting directory './src/main/'
[yhc@localhost project]$ cp -r ./src/main/  ./docs/dev/
[yhc@localhost project]$ ls ./docs/dev/
api.md  helper.py  main
[yhc@localhost project]$ mv ./docs/user/ ./tests/unit/
[yhc@localhost project]$ ls ./tests/unit/
settings.conf  user
[yhc@localhost project]$ cd -r ./config/ ./backup_config 
bash: cd: -r: invalid option
cd: usage: cd [-L|[-P [-e]] [-@]] [dir]
[yhc@localhost project]$ cp -r ./config/ ./backup_config 
[yhc@localhost project]$ tree
.
├── backup_config
│   ├── app.py
│   └── settings.conf
├── config
│   ├── app.py
│   └── settings.conf
├── docs
│   └── dev
│       ├── api.md
│       ├── helper.py
│       └── main
├── README.md
├── src
│   ├── main
│   └── utils
│       └── helper.py
└── tests
    ├── test_main.py
    └── unit
        ├── settings.conf
        └── user
            ├── api_copy.md
            └── manual.txt

11 directories, 12 files
[yhc@localhost project]$ cd  ~/practice/project/docs/user/
bash: cd: /home/yhc/practice/project/docs/user/: No such file or directory
[yhc@localhost project]$ # A                              
[yhc@localhost project]$ pwd 
/home/yhc/practice/project
[yhc@localhost project]$ # A
[yhc@localhost project]$ ^[[200~ls ../../../project/src/main/
bash: ls: command not found...
ls ../../../project/src/main/[yhc@localhost project]$ ~ls ../../../project/src/ma[[[yhc@lo[yhc@lo[y[[[yhc@lo[yhc@loca[yhc[[[yh[yhc@[y[[[[[yhc@localhost project]$  
ls ../../../project/src/m                             ls ../../../project/src/main/
ls ../../../project/src/main/[yhc@localhost project]$ ls ./src/main/
[yhc@localhost project]$ cat ./src/utils/helper.py 
[yhc@localhost project]$ cd ./docs/dev/../../config/
[yhc@localhost config]$ cp ./../tests/test_main.py  ./../tests/unit/backup.txt
[yhc@localhost config]$ ls ./../tests/unit/
backup.txt  settings.conf  user
[yhc@localhost config]$ mv ./../tests/unit/user/api_copy.md  ./../src/main/
[yhc@localhost config]$ ls ./../src/main/
api_copy.md
[yhc@localhost config]$ cd /practice/project/tests/unit/
bash: cd: /practice/project/tests/unit/: No such file or directory
[yhc@localhost config]$ cd ./practice/project/tests/unit/
bash: cd: ./practice/project/tests/unit/: No such file or directory
[yhc@localhost config]$ cd ~/practice/project/tests/unit/
[yhc@localhost unit]$ cd ./../../src/utils
[yhc@localhost utils]$ cd ./../../README.md 
bash: cd: ./../../README.md: Not a directory
[yhc@localhost utils]$ cd  ~/practice/project/
[yhc@localhost project]$ mkdir ./src/main/models 
[yhc@localhost project]$ touch ./docs/dev/READEM.txt 
[yhc@localhost project]$ ls ./docs/dev/
api.md  helper.py  main  READEM.txt
[yhc@localhost project]$ touch ./docs/README.md && echo "# Project Documentation" > ./docs/README.md 
[yhc@localhost project]$ mv ./tests/unit/  ./tests/
mv: './tests/unit/' and './tests/unit' are the same file
[yhc@localhost project]$ cp ./config/ ./src/
cp: -r not specified; omitting directory './config/'
[yhc@localhost project]$ cp -r ./config/ ./src/
[yhc@localhost project]$ ls ./src ./config/
./config/:
app.py  settings.conf

./src:
config  main  utils
[yhc@localhost project]$ cd ~/practice/project/src/main/
[yhc@localhost main]$ cp ./  ./../../project_backup 
cp: -r not specified; omitting directory './'
[yhc@localhost main]$ cp -r ./ ./../../project_backup 
[yhc@localhost main]$ cat ./docs/README.md 
cat: ./docs/README.md: No such file or directory
[yhc@localhost main]$ cat ./../../docs/README.md 
# Project Documentation
[yhc@localhost main]$ ls ./../../project_backup/
api_copy.md  models
[yhc@localhost main]$ pwd 
/home/yhc/practice/project/src/main
[yhc@localhost main]$ touch ./../../README.md ./PROJECT_INFO.md
[yhc@localhost main]$ ls ./
api_copy.md  models  PROJECT_INFO.md
[yhc@localhost main]$ ^C
[yhc@localhost main]$ 
연습문제 6: 에러 찾기 및 수정

6-1. 잘못된 상대 주소 찾기
현재 위치가 ~/practice/project/docs/user/일 때, 다음 명령어들 중 에러가 있는 것을 찾고 올바른 명령어로 수정하시오:
# A
ls ../../../project/src/main/  -> ls ./src/main/



# B
cat ../../src/utils/helper.py  ->cat ./src/utils/helper.pyu	


# C
cd ../dev/../../config/ -> cd ./docs/dev/../../config


# D
cp manual.txt ../../tests/unit/backup.txt -> cp ./../tests/unit/user/manual.txt  ./../tests/unit/backup.txt


# E
mv api_copy.md ../../../src/main/ -> mv ./../tests/user/api_copy.md  ./../src/main

6-2. 경로 최적화
다음 상대 주소를 더 간단하게 최적화하시오:
현재 위치: ~/practice/project/tests/unit/
../../src/main/../utils/helper.py -> ./../../src/utils/helper.py
../../docs/user/../dev/api.md
../../config/../README.md ->./../../README.MD#
