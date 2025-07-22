각 실습 후 `su - 사용자명`, `ls -R ~/Downloads`, `cat` 등을 통해 적용 여부를 확인하십시오.

---

## **🧪 환경 변수 및 초기화 스크립트 실습 문제**

### **🔹 문제 1\. 로그인 시마다 `"Welcome, USERNAME"` 메시지를 출력하시오.**

**조건:**

* 현재 로그인한 사용자명을 포함할 것 (`$USER`)

* **로그인할 때마다 자동으로 출력**되도록 설정할 것

  ---
  ```
  [yhc@localhost ~]$ exit
logout
[yhc@localhost Downloads]$ cd ~
[yhc@localhost ~]$ su - yhc
Password: 
[yhc@localhost ~]$ exit
logout
[yhc@localhost ~]$ su - yhc
Password: 
Welcome, yhc
[yhc@localhost ~]$ exit
logout
[yhc@localhost ~]$ cat .bash_profile 
# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
echo "Welcome, $USER" 
[yhc@localhost ~]$ 
```


  ### **🔹 문제 2\. 로그인 시 사용자의 `Downloads/` 폴더 내 일반 파일을 삭제하시오.**

**조건:**

* 경로: `~/Downloads/`

* **일반 파일만 삭제** (서브디렉토리, 숨김파일은 삭제하지 않음)

* **로그인 시 자동 실행**

  ---
  ```
  [yhc@localhost ~]$ exit 
logout
[yhc@localhost ~]$ su - yhc 
Password: 
[yhc@localhost ~]$ ls -la Downloads 
total 4
drwxr-xr-x.  6 yhc yhc   72 Jul 22 12:18 .
drwx------. 16 yhc yhc 4096 Jul 22 12:21 ..
drwxrwxrwx.  3 yhc yhc   24 Jul 21 14:29 chmod_lab
drwxr-xr-x.  2 yhc yhc   23 Jul 18 17:40 logs
drwxr-xr-x.  3 yhc yhc   25 Jul 21 14:30 practice
dr-xrwxrwx.  2 yhc yhc    6 Jul 18 18:12 projects_logs
[yhc@localhost ~]$ cat .bash_profile 
# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
```

  ### **🔹 문제 3\. 로그인할 때마다 `~/Downloads/` 경로에 다음 구조로 디렉토리 및 파일을 자동 생성하도록 설정하시오.**

**생성 구조:**

* \~/Downloads/  
*  └── auto\_created/  
*       ├── info.txt  
*       └── logs/  
*            └── log.txt


**조건:**

* 파일에는 임의의 간단한 문자열이 들어갈 것

* **매 로그인마다 자동 생성**

  ---
```
[root@localhost ~]# exit
logout
[yhc@localhost ~]$ su - yhc
Password: 
[yhc@localhost ~]$ ls
Desktop    Downloads  Pictures  quests     Videos
Documents  Music      Public    Templates  wildcard_file_practice
[yhc@localhost ~]$ ls -l Downloads/
total 0
drwxr-xr-x. 3 yhc yhc 34 Jul 22 13:33 auto_created
drwxrwxrwx. 3 yhc yhc 24 Jul 21 14:29 chmod_lab
drwxr-xr-x. 2 yhc yhc 23 Jul 18 17:40 logs
drwxr-xr-x. 3 yhc yhc 25 Jul 21 14:30 practice
dr-xrwxrwx. 2 yhc yhc  6 Jul 18 18:12 projects_logs
[yhc@localhost ~]$ cat nano .bash_profile 
cat: nano: No such file or directory
# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
```
  ### **🔹 문제 4\. `/etc/profile`을 수정하여, 로그인 시 모든 사용자에게 공지 메시지 `/etc/login_notice.txt`를 출력하도록 설정하시오.**

**조건:**

* 출력 방식은 `cat`, `echo` 등 자유

* 시스템 전체 사용자에게 적용

* `/etc/login_notice.txt`는 임의의 내용을 사전에 작성해 둘 것

* `sudo` 권한 필요

  ---

* 

