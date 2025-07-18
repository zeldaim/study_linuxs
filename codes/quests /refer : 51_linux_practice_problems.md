문제 4: chmod를 이용한 권한 조정
4-1. 기본 권한 설정
test_script.sh 파일을 생성하고 소유자에게만 모든 권한을 부여하세요.

명령어를 작성하세요:
```
[yhc@localhost Downloads]$ touch test_script.sh && chmod 700 test_script.sh
[yhc@localhost Downloads]$ ls -l test_script.sh 
-rwx------. 1 yhc yhc 0 Jul 18 17:20 test_script.sh
[yhc@localhost Downloads]$ 
```

# test_script.sh 파일 생성

# 소유자에게만 읽기, 쓰기, 실행 권한 부여 (700)
4-2. 그룹 권한 추가
test_script.sh 파일에 그룹 사용자에게 읽기 및 실행 권한을 추가하세요.

명령어를 작성하세요:
``` 
[yhc@localhost Downloads]$ chmod 750 test_script.sh 
[yhc@localhost Downloads]$ ls -l test_script.sh 
-rwxr-x---. 1 yhc yhc 0 Jul 18 17:20 test_script.sh
[yhc@localhost Downloads]$ 
```
# 그룹에 읽기, 실행 권한 추가 (750)
4-3. 권한 확인
파일의 현재 권한을 확인하는 명령어를 작성하세요.

명령어를 작성하세요:
```
[yhc@localhost Downloads]$ ls -l test_script.sh 
-rwxr-x---. 1 yhc yhc 0 Jul 18 17:20 test_script.sh

```

# 파일 권한 확인
4-4. 실행 권한 제거
```
test_script.sh 파일에서 모든 사용자의 실행 권한을 제거하세요.
yhc@localhost Downloads]$ ls -l test_script.sh 
-rwxr-x---. 1 yhc yhc 0 Jul 18 17:20 test_script.sh
[yhc@localhost Downloads]$ chmod 650 test_script.sh 
[yhc@localhost Downloads]$ ls -l test_script.sh 
-rw-r-x---. 1 yhc yhc 0 Jul 18 17:20 test_script.sh
```
명령어를 작성하세요:

# 모든 사용자의 실행 권한 제거
문제 5: 종합 실습
5-1. 자동화 스크립트 작성
다음 기능을 수행하는 setup.sh 스크립트를 작성하세요:

logs 디렉터리가 없으면 생성
현재 날짜와 시간을 logs/setup.log 파일에 기록
"설정 완료" 메시지 출력

작성할 스크립트 내용:
```
[yhc@localhost Downloads]$ ./setup.sh 
completed
[yhc@localhost Downloads]$ cat logs/setup.log 
Fri Jul 18 05:58:39 PM KST 2025
```

#!/bin/bash

# setup.sh 스크립트 내용을 작성하세요
5-2. 스크립트 실행 및 검증
setup.sh 스크립트를 실행하고, 로그 파일이 제대로 생성되었는지 확인하는 명령어를 작성하세요.

명령어를 작성하세요:
```
yhc@localhost Downloads]$ ./setup.sh && ls -l ./logs/ 
completed
total 4
-rw-r--r--. 1 yhc yhc 32 Jul 18 18:03 setup.log
```

# setup.sh 실행 권한 부여 후 실행하고, 로그 파일 내용 확인

```
[yhc@localhost Downloads]$ chmod 777  setup.sh && ls  ./logs/
setup.log
```
🔧 문제 7: 디렉토리 및 권한 실습
7-1. 디렉토리 생성 및 권한 변경
project_logs 디렉토리를 생성하고, 사용자(User)에게만 쓰기 권한을 제거한 후 권한을 확인하는 명령어를 작성하세요.
명령어를 작성하세요:
# project_logs 디렉토리 생성 후 User의 쓰기 권한 제거, 권한 확인
```
[yhc@localhost Downloads]$ mkdir  ./projects_logs/ && chmod 577 ./projects_logs/ && ls -l
total 4
d-w-------. 3 yhc yhc 94 Jul 18 16:55 chmod_lab
drwxr-xr-x. 2 yhc yhc 23 Jul 18 17:40 logs
dr-xrwxrwx. 2 yhc yhc  6 Jul 18 18:12 projects_logs
-rwxrwxrwx. 1 yhc yhc 47 Jul 18 17:58 setup.sh
-rw-r-x---. 1 yhc yhc  0 Jul 18 17:20 test_script.sh
```
7-2. nano를 사용한 쉘 스크립트 작성
nano 편집기로 check_dir.sh 스크립트를 작성하세요. 이 스크립트는 다음을 수행합니다:
backup 디렉토리가 존재하는지 확인


존재하면 backup 내부에 checked.txt 파일 생성


존재하지 않으면 "backup 디렉토리가 없습니다" 메시지 출력


nano에서 작성할 내용 예시:
#!/bin/bash

# backup 디렉토리 존재 확인
# 존재하면 checked.txt 생성, 없으면 메시지 출력


7-3. 다중 명령어 조건 실행
project_logs 디렉토리로 이동한 후, 이동에 성공한 경우 log.txt 파일을 만들고 "로그 생성 완료" 메시지를 출력하는 명령어를 작성하세요.
명령어를 작성하세요:
# 디렉토리 이동 && 파일 생성 && 메시지 출력


7-4. 쉘 스크립트 실행 권한 설정 (User만)
앞서 작성한 check_dir.sh 파일에 대해 사용자(User) 에게만 실행 권한을 부여하고 현재 권한을 확인하는 명령어를 작성하세요.
명령어를 작성하세요:
# 사용자에게만 실행 권한 부여 및 권한 확인



주의사항:

모든 명령어는 실제 터미널에서 테스트해보세요
스크립트 작성 시 shebang(#!/bin/bash)을 반드시 포함하세요
권한 변경 후에는 ls -l 명령어로 확인하는 습관을 가지세요
실습 후 생성된 파일들은 정리해주세요
