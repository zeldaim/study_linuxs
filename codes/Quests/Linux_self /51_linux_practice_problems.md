# Linux 실습 문제지 \- nano, 쉘 스크립트, 다중 명령어, chmod

## 기본 개념 정리 

### nano 편집기

* **nano** : 터미널 기반 텍스트 편집기  
* **Ctrl+X** : 편집기 종료  
* **Ctrl+O** : 파일 저장  
* **Ctrl+K** : 현재 줄 잘라내기  
* **Ctrl+U** : 잘라낸 텍스트 붙여넣기

### 쉘 스크립트 기본

* **~~\#\!/bin/bash~~** ~~: 쉘 스크립트 시작 라인 (shebang)~~  
* **실행 권한** : chmod \+x 파일명  
* **실행 방법** : ./파일명 또는 bash 파일명

### 다중 명령어 연산자

* **&&** : 앞 명령어가 성공하면 뒤 명령어 실행  
* **~~||~~** ~~: 앞 명령어가 실패하면 뒤 명령어 실행~~  
* **~~;~~** ~~: 앞 명령어 결과와 관계없이 순차 실행~~

### chmod 권한 설정

* **r(읽기)** : 4, **w(쓰기)** : 2, **x(실행)** : 1  
* **755** : 소유자(rwx), 그룹(rx), 기타(rx)  
* **644** : 소유자(rw), 그룹(r), 기타(r)

## 실습 환경 설정

먼저 다음 명령어를 실행하여 실습 환경을 만들어보세요:

mkdir shell\_practice

cd shell\_practice

touch hello.sh backup.sh system\_info.txt

touch data1.txt data2.txt notes.md

mkdir scripts logs temp

## 문제 1: nano 편집기 사용

### 1-1. 기본 파일 생성 및 편집

hello.sh 파일을 nano로 열어 다음 내용을 작성하세요:

\#\!/bin/bash

echo "안녕하세요\! 리눅스 세계에 오신 것을 환영합니다."

**명령어를 작성하세요:**
```
[yhc@localhost shell_practice]$ nano hello.sh 
[yhc@localhost shell_practice]$ ./hello.sh 
bash: ./hello.sh: Permission denied
[yhc@localhost shell_practice]$ ls -l hello.sh 
-rw-r--r--. 1 yhc yhc 30 Jul 20 09:38 hello.sh
[yhc@localhost shell_practice]$ chmod 777 hello.sh 
[yhc@localhost shell_practice]$ ./hello.sh 
Welcome to Linux-World
```
\# nano 편집기로 hello.sh 파일 열기

### 1-2. 파일 내용 수정

system\_info.txt 파일을 nano로 열어 현재 시스템 정보를 기록하는 내용을 작성하세요.

**명령어를 작성하세요:**
```
[yhc@localhost shell_practice]$ date 
Sun Jul 20 09:45:54 AM KST 2025
[yhc@localhost shell_practice]$ nano system_info.txt 
[yhc@localhost shell_practice]$ cat system_info.txt 
Sun Jul 20 09:45:54 AM KST 2025 
[yhc@localhost shell_practice]$ 
```

\# nano 편집기로 system\_info.txt 파일 열기

## 문제 2: 쉘 스크립트 작성 및 실행

### 2-1. 기본 쉘 스크립트 작성

backup.sh 파일을 만들어 다음 기능을 수행하는 스크립트를 작성하세요:

- 현재 날짜 출력  
- "백업을 시작합니다" 메시지 출력  
- 현재 디렉터리의 파일 목록 출력 </br></br>
**명령어를 작성하세요:**
```

[yhc@localhost new_project]$ nano backup_sh 
[yhc@localhost new_project]$ chmod +x backup_sh 
[yhc@localhost new_project]$ ./backup_sh 
Sun Jul 20 02:26:11 PM KST 2025
백업을 시작합니다.
backup_sh     date.sh  project_logs   setup.sh	      test.txt
check_dir.sh  logs     quick_test.sh  test_script.sh
```
***shell script 내용***
```
[yhc@localhost new_project]$ cat backup_sh 
#!/bin/bash
 
date 
 echo "백업을 시작합니다." 
ls  
```


\# nano로 backup.sh 파일 생성 및 편집

### 2-2. 스크립트 실행 권한 부여

backup.sh 파일에 실행 권한을 부여하세요.

**명령어를 작성하세요:**

\# backup.sh 파일에 실행 권한 부여
```
[yhc@localhost shell_practice]$ ls -l backup.sh 
-rw-r--r--. 1 yhc yhc 0 Jul 20 09:26 backup.sh
[yhc@localhost shell_practice]$ chmod 777 backup.sh 
[yhc@localhost shell_practice]$ ls -l backup.sh 
-rwxrwxrwx. 1 yhc yhc 0 Jul 20 09:26 backup.sh
```
### 2-3. 스크립트 실행

작성한 backup.sh 스크립트를 실행하세요.

**명령어를 작성하세요:**
```
\# backup.sh 스크립트 실행
yhc@localhost shell_practice]$ ./backup.sh 
[yhc@localhost shell_practice]$
``` 
## 문제 3: && 연산자를 이용한 다중 명령어

### 3-1. 조건부 실행

디렉터리 생성이 성공하면 해당 디렉터리로 이동하는 명령어를 작성하세요.

**명령어를 작성하세요:**
```
\# new\_project 디렉터리 생성 후 성공하면 이동
[yhc@localhost shell_practice]$ mkdir new_project && cd ./new_project/ 
[yhc@localhost new_project]
```
### 3-2. 파일 생성 및 편집

test.txt 파일을 생성하고 성공하면 nano로 편집하는 명령어를 작성하세요.

**명령어를 작성하세요:**
```
[yhc@localhost new_project]$ touch test.txt && nano test.txt 
\# test.txt 파일 생성 후 성공하면 nano로 편집
```
### 3-3. 복합 조건부 실행

스크립트 파일을 생성하고, 실행 권한을 부여한 후, 실행하는 일련의 명령어를 작성하세요.

**명령어를 작성하세요:**
```
\# quick\_test.sh 파일에 "echo 'Hello World'" 내용 저장 후 실행 권한 부여 후 실행
[yhc@localhost new_project]$ nano quick_test.sh && echo "echo "hello world""  >quick_test.sh && chmod 700 quick_test.sh && ./quick_test.sh  
hello world
```
## 문제 4: chmod를 이용한 권한 조정

### 4-1. 기본 권한 설정
```
test\_script.sh 파일을 생성하고 소유자에게만 모든 권한을 부여하세요.
```
**명령어를 작성하세요:**

\# test\_script.sh 파일 생성

\# 소유자에게만 읽기, 쓰기, 실행 권한 부여 (700)
```
[yhc@localhost new_project]$ touch test_script.sh && chmod 700 test_script.sh 
[yhc@localhost new_project]$ ls -l test_script.sh 
-rwx------. 1 yhc yhc 0 Jul
``` 
### 4-2. 그룹 권한 추가
```
test\_script.sh 파일에 그룹 사용자에게 읽기 및 실행 권한을 추가하세요.     
[yhc@localhost new_project]$ ls -l test_script.sh 
-rwxr-x---. 1 yhc yhc 0 Jul 20 10:40 test_script.sh
[yhc@localhost new_project]$ ls -l test_script.sh 
-rwxr-x---. 1 yhc yhc 0 Jul 20 10:40 test_script.sh
```

**명령어를 작성하세요:**

\# 그룹에 읽기, 실행 권한 추가 (750)

### 4-3. 권한 확인

파일의 현재 권한을 확인하는 명령어를 작성하세요.

**명령어를 작성하세요:**

\# 파일 권한 확인
```
[yhc@localhost new_project]$ ls -l *.*
-rwx------. 1 yhc yhc 17 Jul 20 10:35 quick_test.sh
-rwxr-x---. 1 yhc yhc  0 Jul 20 10:40 test_script.sh
-rw-r--r--. 1 yhc yhc  0 Jul 20 10:00 test.txt
[yhc@localhost new_project]$ 
```
### 4-4. 실행 권한 제거

test\_script.sh 파일에서 모든 사용자의 실행 권한을 제거하세요.

**명령어를 작성하세요:**

\# 모든 사용자의 실행 권한 제거
```
[yhc@localhost new_project]$ chmod 640 test_script.sh 
[yhc@localhost new_project]$ ls -l test_script.sh 
-rw-r-----. 1 yhc yhc 0 Jul 20 10:40 test_script.sh
[yhc@localhost new_project]$
``` 
## 문제 5: 종합 실습

### 5-1. 자동화 스크립트 작성

다음 기능을 수행하는 setup.sh 스크립트를 작성하세요:

1. logs 디렉터리가 없으면 생성  
2. 현재 날짜와 시간을 logs/setup.log 파일에 기록  
3. "설정 완료" 메시지 출력

**작성할 스크립트 내용:**

\#\!/bin/bash

\# setup.sh 스크립트 내용을 작성하세요
```
[yhc@localhost new_project]$ mkdir -p logs && nano date.sh && date >date.sh && nano logs/setup.log && cat ./date.sh >logs/setup.log && echo "설정완료"  
설정완료
```
## date.sh라는 임의의 파일을 만들어 자동화시켰습니다. 
### 5-2. 스크립트 실행 및 검증

setup.sh 스크립트를 실행하고, 로그 파일이 제대로 생성되었는지 확인하는 
명령어를 작성하세요.
```
[yhc@localhost new_project]$ nano setup.sh 
[yhc@localhost new_project]$ chmod 777 ./setup.sh 
[yhc@localhost new_project]$ ./setup.sh 
ls: cannot access './kogs/setup.log': No such file or directory
Sun Jul 20 12:13:44 PM KST 2025
[yhc@localhost new_project]$ nano setup.sh 
[yhc@localhost new_project]$ nano setup.sh 
[yhc@localhost new_project]$ ./setup.sh 
-rw-r--r--. 1 yhc yhc 32 Jul 20 12:13 ./logs/setup.log
Sun Jul 20 12:13:44 PM KST 2025
[yhc@localhost new_project]$ 
```
```

**명령어를 작성하세요:**

\# setup.sh 실행 권한 부여 후 실행하고, 로그 파일 내용 확인
```
[yhc@localhost new_project]$ nano setup.sh 
[yhc@localhost new_project]$ ./setup.sh 
bash: ./setup.sh: Permission denied
[yhc@localhost new_project]$ chmod 777 ./setup.sh 
[yhc@localhost new_project]$ ./setup.sh 
Sun Jul 20 12:13:44 PM KST 2025
```
---

### **🔧 문제 7: 디렉토리 및 권한 실습**

#### **7-1. 디렉토리 생성 및 권한 변경**

`project_logs` 디렉토리를 생성하고, 사용자(User)에게만 **쓰기 권한을 제거**한 후 권한을 확인하는 명령어를 작성하세요.

명령어를 작성하세요:
```
[yhc@localhost new_project]$ mkdir -p project_logs && chmod 577 ./project_logs && ls -l   
total 12
-rwxrwxrwx. 1 yhc yhc 32 Jul 20 12:13 date.sh
drwxr-xr-x. 2 yhc yhc 23 Jul 20 12:10 logs
dr-xrwxrwx. 2 yhc yhc  6 Jul 20 12:41 project_logs
-rwx------. 1 yhc yhc 17 Jul 20 10:35 quick_test.sh
-rwxrwxrwx. 1 yhc yhc 45 Jul 20 12:29 setup.sh
-rw-r-----. 1 yhc yhc  0 Jul 20 10:40 test_script.sh
-rw-r--r--. 1 yhc yhc  0 Jul 20 10:00 test.txt
```

\# project\_logs 디렉토리 생성 후 User의 쓰기 권한 제거, 권한 확인

---

#### **7-2. nano를 사용한 쉘 스크립트 작성**

`nano` 편집기로 `check_dir.sh` 스크립트를 작성하세요. 이 스크립트는 다음을 수행합니다:

* `backup` 디렉토리가 존재하는지 확인

* 존재하면 `backup` 내부에 `checked.txt` 파일 생성

* 존재하지 않으면 `"backup 디렉토리가 없습니다"` 메시지 출력

nano에서 작성할 내용 예시:

\# backup 디렉토리 존재 출력

---
```
[yhc@localhost new_project]$ ./check_dir.sh 
total 16
-rwxrwxrwx. 1 yhc yhc 112 Jul 20 13:17 check_dir.sh
-rwxrwxrwx. 1 yhc yhc  32 Jul 20 12:13 date.sh
drwxr-xr-x. 2 yhc yhc  23 Jul 20 12:10 logs
dr-xrwxrwx. 2 yhc yhc   6 Jul 20 12:41 project_logs
-rwx------. 1 yhc yhc  17 Jul 20 10:35 quick_test.sh
-rwxrwxrwx. 1 yhc yhc  45 Jul 20 12:29 setup.sh
-rw-r-----. 1 yhc yhc   0 Jul 20 10:40 test_script.sh
-rw-r--r--. 1 yhc yhc   0 Jul 20 10:00 test.txt
There is not backup_directory
[yhc@localhost new_project]$  cat check_dir.sh 
ls -l 
if [ -d ./backup ]; 
then touch ./backup/checked.txt 

else 
 echo "There is not backup_directory" 
fi  

#### **7-3. 다중 명령어 조건 실행**

`project_logs` 디렉토리로 이동한 후, 이동에 성공한 경우 `log.txt` 파일을 만들고 `"로그 생성 완료"` 메시지를 출력하는 명령어를 작성하세요.

명령어를 작성하세요:
[yhc@localhost project_logs]$ cd ./..
[yhc@localhost new_project]$ chmod 777 ./project_logs && cd ./project_logs &&  touch logs.txt && echo "로그 생성 완료" > ./log.txt && cat log.txt 
로그 생성 완료
```
\# 디렉토리 이동 && 파일 생성 && 메시지 출력

---

#### **7-4. 쉘 스크립트 실행 권한 설정 (User만)**

앞서 작성한 `check_dir.sh` 파일에 대해 **사용자(User)** 에게만 실행 권한을 부여하고 현재 권한을 확인하는 명령어를 작성하세요.

명령어를 작성하세요:
```
[yhc@localhost new_project]$ chmod 766 check_dir.sh && ls -l check_dir.sh 
-rwxrw-rw-. 1 yhc yhc 112 Jul 20 13:17 check_dir.sh
[yhc@localhost new_project]$ 
```

\# 사용자에게만 실행 권한 부여 및 권한 확인

---

**주의사항:**

- 모든 명령어는 실제 터미널에서 테스트해보세요  
- 스크립트 작성 시 shebang(\#\!/bin/bash)을 반드시 포함하세요  
- 권한 변경 후에는 ls \-l 명령어로 확인하는 습관을 가지세요  
- 실습 후 생성된 파일들은 정리해주세요

