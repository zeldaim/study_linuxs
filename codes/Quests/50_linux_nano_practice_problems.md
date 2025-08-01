# Linux 실습 문제지 \- nano, 쉘 스크립트, 다중 명령어, chmod

## 기본 개념 정리

### nano 편집기

* **nano** : 터미널 기반 텍스트 편집기  
* **Ctrl+X** : 편집기 종료  
* **Ctrl+O** : 파일 저장  
* **Ctrl+K** : 현재 줄 잘라내기  
* **Ctrl+U** : 잘라낸 텍스트 붙여넣기

권한 부여

* **Chmod 777 대상\_파일명**

  # **Linux 명령어 실습 문제**

  ## **nano 편집기, 실행 쉘 작성, && 연산자 활용**

  ### **실습 환경 설정**

먼저 다음 명령어를 실행하여 실습 환경을 만들어보세요:

- mkdir shell\_practice  
- cd shell\_practice  
- touch data.txt config.conf notes.md  
- mkdir scripts logs backup  
  ---

  ## **문제 1: nano 편집기 활용**

  ### **1-1. 간단한 설정 파일 생성**

nano 편집기를 사용하여 `server.conf` 파일을 생성하고 다음 내용을 입력하세요:

- PORT=8080  
- HOST=localhost  
- DEBUG=true
```
## 실습환경 설정##
[yhc@localhost Downloads]$ mkdir shell_practice && cd shell_practice && touch data.txt config.conf notes.md && mkdir scripts logs backup                                                                   ## 실습시작 ## 
[yhc@localhost shell_practice]$ nano server.conf 
[yhc@localhost shell_practice]$ ls 
backup  config.conf  data.txt  logs  notes.md  scripts  server.conf
[yhc@localhost shell_practice]$ tree
.
├── backup
├── config.conf
├── data.txt
├── logs
├── notes.md
├── scripts
└── server.conf

3 directories, 4 files

[yhc@localhost shell_practice]$ cat ./server.conf 
PORT=8080
HOST=localhost
DEBUG=true
[yhc@localhost shell_practice]$ 

```

  # **명령어를 작성하세요**

  ### **1-2. 기존 파일 수정**

nano 편집기로 `data.txt` 파일을 열어서 "Hello Linux World\!" 텍스트를 추가하세요.

# **명령어를 작성하세요**
```
yhc@localhost shell_practice]$ nano data.txt
[yhc@localhost shell_practice]$ cat data.txt 
"Hello Linux World!"
[yhc@localhost shell_practice]$ 

```
---

## **문제 2: 실행 가능한 쉘 스크립트 작성**

### **2-1. 백업 스크립트 생성**

`backup.sh` 파일을 생성하여 다음 기능을 수행하는 스크립트를 작성하세요:

* 현재 날짜와 시간 출력  
* `data.txt` 파일을 `backup` 디렉토리에 복사  
* 복사 완료 메시지 출력
```
[yhc@localhost shell_practice]$ nano ./backup.sh  
[yhc@localhost shell_practice]$ chmod +x ./backup.sh
[yhc@localhost shell_practice]$ ./backup.sh 
Sun Jul 20 11:14:55 PM KST 2025
복사 완료
[yhc@localhost shell_practice]$ tree 
.
├── backup
│   └── data.txt
├── backup.sh
├── config.conf
├── data.txt
├── logs
├── notes.md
└── scripts
```
```
## backup.sh  스크림트 내용##
 [yhc@localhost shell_practice]$ cat backup.sh 
date 
cp data.txt  ./backup/ 
echo "복사 완료"
```
  # **스크립트 파일 생성 및 실행 권한 부여 명령어를 작성하세요**
  ```
[yhc@localhost shell_practice]$ nano data.txt 
[yhc@localhost shell_practice]$ ./data.txt 
bash: ./data.txt: Permission denied
[yhc@localhost shell_practice]$ chmod 777 data.txt  ./data.txt 
[yhc@localhost shell_practice]$ ./data.txt 
cat: ' copy completed ': No such file or directory
```

  ### **2-2. 시스템 정보 출력 스크립트**

`sysinfo.sh` 스크립트를 생성하여 현재 사용자명, 현재 디렉토리, 디스크 사용량을 출력하는 스크립트를 작성하고 실행하세요.
```
# **명령어를 작성하세요**
```
[yhc@localhost shell_practice]$ nano sysinfo.sh 
[yhc@localhost shell_practice]$ ./sysinfo.sh 
bash: ./sysinfo.sh: Permission denied
[yhc@localhost shell_practice]$ chmod +x ./sysinfo.sh 
[yhc@localhost shell_practice]$ ./sysinfo.sh 
사용자명 :
 현재디렉토리:/home/yhc/shell_practice/new_project/shell_practice
 디스크사용량:
Filesystem           Size  Used Avail Use% Mounted on
devtmpfs             4.0M     0  4.0M   0% /dev
tmpfs                870M     0  870M   0% /dev/shm
tmpfs                348M  7.2M  341M   3% /run
/dev/mapper/rl-root   17G  5.7G   12G  34% /
/dev/nvme0n1p1       960M  366M  595M  39% /boot
tmpfs                174M  108K  174M   1% /run/user/1000
/dev/sr0              12G   12G     0 100% /run/media/yhc/Rocky-9-6-x86_64-dvd

[yhc@localhost shell_practice]$ 
```
## sysinfo.sh 스크립트 내용 출력## 
[yhc@localhost shell_practice]$ cat ./sysinfo.sh 
echo "사용자명 :$user" 
echo " 현재디렉토리:$(pwd)"
echo " 디스크사용량:" 
df -h 
```
---

## **문제 3: && 연산자를 이용한 다중 명령어 실행**

### **3-1. 디렉토리 생성과 파일 생성**

`projects` 디렉토리를 생성하고, 성공하면 그 안에 `readme.txt` 파일을 생성하는 한 줄 명령어를 작성하세요.
```
# **명령어를 작성하세요**
[yhc@localhost shell_practice]$ mkdir ./projects/ && touch ./projects/ readme.txt 
[yhc@localhost shell_practice]$ tree 
.
├── backup
│   └── data.txt
├── backup.sh
├── config.conf
├── data.txt
├── logs
├── notes.md
├── projects
├── readme.txt
├── scripts
├── server.conf
└── sysinfo.sh
```

### **3-2. 파일 존재 확인과 내용 출력**

`server.conf` 파일이 존재하는지 확인하고, 존재하면 파일 내용을 출력하는 한 줄 명령어를 작성하세요.
```
# **명령어를 작성하세요**
[yhc@localhost shell_practice]$ ls ./server.conf && cat server.conf 
./server.conf
PORT=8080
HOST=localhost
DEBUG=true
```
```
##존재확인 추가##
[yhc@localhost shell_practice]$ if [ -e server.conf ]; then  cat server.conf ; else echo "it is not exist"; fi 
PORT=8080
HOST=localhost 
DEBUG=true 
```
### **3-3. 복합 작업 실행**

다음 작업을 && 연산자로 연결하여 한 줄로 실행하세요:

1. `logs` 디렉토리로 이동  
2. `access.log` 파일 생성  
3. 현재 디렉토리 내용 출력  
4. 상위 디렉토리로 복귀

# 
```
cd ./../logs/ && touch access.log && ls ./*/ && cd ./..

./..:
backup     config.conf  logs      projects    scripts      sysinfo.sh
backup.sh  data.txt     notes.md  readme.txt  server.conf
```
