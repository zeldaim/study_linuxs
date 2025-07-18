# Linux 와일드카드 실습 문제

## 기본 와일드카드 문자
- `*` : 0개 이상의 모든 문자
- `?` : 정확히 1개의 문자
- `[]` : 대괄호 안의 문자 중 하나
- `{}` : 중괄호 안의 패턴 중 하나 (brace expansion)

## 실습 환경 설정
먼저 다음 명령어를 실행하여 실습 환경을 만들어보세요:

```bash
mkdir wildcard_practice
cd wildcard_practice
touch file1.txt file2.txt file3.doc report.txt data.csv
touch test1.log test2.log error.log debug.log
touch image1.jpg image2.png photo.gif
touch backup_2024.tar backup_2023.tar config.conf
mkdir logs temp docs
```

---

## 문제 1: 기본 와일드카드 (*) 사용

### 1-1. 모든 `.txt` 파일 목록 출력
```bash
ls -l *.txt
```

### 1-2. `file`로 시작하는 모든 파일 목록 출력
```bash
ls file*
```

### 1-3. `.log`로 끝나는 모든 파일 목록 출력
```bash
ls *.log
```

### 1-4. `backup`으로 시작하는 모든 파일을 `temp` 디렉터리로 복사
```bash
cp backup* ./temp
```

---

## 문제 2: 단일 문자 와일드카드 (?) 사용

### 2-1. `file`로 시작하고 한 글자 숫자가 오는 `.txt` 파일 출력
```bash
ls -l  file?.txt 
```

### 2-2. `test`로 시작하고 한 글자 숫자가 오는 `.log` 파일 출력
```bash
ls -l test?.log
```

### 2-3. `image`로 시작하고 한 글자 숫자가 오는 모든 파일 출력
```bash
ls image?*
```

---

## 문제 3: 문자 범위 ([]) 사용

### 3-1. `file1.txt`, `file2.txt`, `file3.doc` 중에서 `file1.txt`와 `file2.txt`만 출력
```bash
ls file[12]*
```

### 3-2. `test1.log`와 `test2.log`만 출력 (error.log, debug.log 제외)
```bash
ls {test1,test2}.log
```

### 3-3. 파일명이 `a`부터 `f`로 시작하는 모든 파일 출력
```bash
# 명령어를 작성하세요
```
[yhc@localhost wildcard_file_practice]$ ls -l [a-f]*.*
-rw-r--r--. 1 yhc yhc 0 Jul 17 17:32 changelog.md
-rw-r--r--. 1 yhc yhc 0 Jul 17 17:31 config.conf
-rw-r--r--. 1 yhc yhc 0 Jul 17 17:30 data1.csv
-rw-r--r--. 1 yhc yhc 0 Jul 17 17:30 data2.csv
-rw-r--r--. 1 yhc yhc 0 Jul 17 17:30 data3.csv
-rw-r--r--. 1 yhc yhc 0 Jul 17 17:30 data_old.csv
-rw-r--r--. 1 yhc yhc 0 Jul 17 17:32 document.pdf
-rw-r--r--. 1 yhc yhc 0 Jul 17 17:32 final_report.txt

```

## 문제 4: 복합 와일드카드 활용

### 4-1. 확장자가 3글자인 모든 파일 출력 (예: .txt, .doc, .log, .jpg, .png, .gif, .tar)
```bash
#[yhc@localhost wildcard_file_practice]$ ls *.???
data1.csv  data_old.csv      image1.jpg  license.txt     log_system.txt    report1.txt  spreadsheet.xls
data2.csv  document.pdf      image2.jpg  log_access.txt  photo.gif         report2.txt
data3.csv  final_report.txt  image3.png  log_error.txt   presentation.ppt  report3.txt
[yhc@localhost wildcard_file_practice]$ 

 ```

### 4-2. 숫자가 포함된 모든 파일 출력
```bash
yhc@localhost wildcard_file_practice]$ ls *[0-9]*
data1.csv  data2.csv  data3.csv  image1.jpg  image2.jpg  image3.png  report1.txt  report2.txt  report3.txt
[yhc@localhost wildcard_file_practice]$ 를 작성하세요
```

### 4-3. `.txt` 또는 `.log` 파일만 출력
```bash
# 명령어를 작성하세요
`[yhc@localhost wildcard_file_practice]$ ls *.txt && ls *.log
final_report.txt  log_access.txt  log_system.txt  report2.txt
license.txt       log_error.txt   report1.txt     report3.txt
ls: cannot access '*.log': No such file or directory
[yhc@localhost wildcard_file_practice]$ 
``

---

## 문제 5: 고급 와일드카드 활용

### 5-1. 파일명이 `test`로 시작하지 않는 모든 `.log` 파일 출력(log로 시작하지 않는 txt 파일로 문제 변경함)
```bash
[yhc@localhost wildcard_file_practice]$ ls [!log]*.txt
final_report.txt  report1.txt  report2.txt  report3.txt

```

### 5-2. 모든 이미지 파일 (jpg, png, gif)을 `docs` 디렉터리로 이동
```bash

yhc@localhost wildcard_file_practice]$ mv *.{jpg,png,gif} ./../../quests/wildcard_practice/docs/
[yhc@localhost wildcard_file_practice]$ ls ./../../quests/wildcard_practice/docs/
image1.jpg  image2.jpg  image2.png  image3.png  photo.gif  readme.txt
[yhc@localhost wildcard_file_practice]$ 
```
### 5-3. 2023년 또는 2024년 백업 파일만 출력
```bash
# 명령어를 작성하세요
```

---

## 문제 6: 실전 응용

### 6-1. 확장자가 있는 모든 파일을 `temp` 디렉터리로 복사
```bash
[yhc@localhost wildcard_file_practice]$ cp *.* ./../../Downloads/wildcard_file_practice/temp/
[yhc@localhost wildcard_file_practice]$ ls ./../../Downloads//wildcard_file_practice//temp/
changelog.md  data2.csv     document.pdf      log_access.txt  presentation.ppt  report2.txt
config.conf   data3.csv     final_report.txt  log_error.txt   readme.md         report3.txt
data1.csv     data_old.csv  license.txt       log_system.txt  report1.txt       spreadsheet.xls
[yhc@localhost wildcard_file_practice]$ 

```ㅣ

### 6-2. 파일명이 4글자 이하인 파일들의 상세 정보 출력-파일명이 5글자 이하인으로 변경해서 풀음
```bash
# [yhc@localhost wildcard_file_practice]$ ls ?????.*
data1.csv  data2.csv  data3.csv

```

### 6-3. `file`로 시작하는 모든 파일의 내용을 `combined.txt`로 합치기-모든 텍스트 파일을 combined.txt로 합침
```bash
# 명령어를 작성하세요

[yhc@localhost wildcard_file_practice]$  cat *.txt >combined.txt 
[yhc@localhost wildcard_file_practice]$ ls
archives      data          document.pdf      log_access.txt    project_A    report2.txt
backup        data1.csv     documents         log_error.txt     project_B    report3.txt
changelog.md  data2.csv     final_report.txt  logs              project_C    scripts
combined.txt  data3.csv     images            log_system.txt    readme.md    spreadsheet.xls
config.conf   data_old.csv  license.txt       presentation.ppt  report1.txt  temp
[yhc@localhost wildcard_file_practice]$
``` 
---

## 문제 7: 디렉터리 와일드카드

### 7-1. 현재 디렉터리의 모든 하위 디렉터리 목록 출력
```bash
[yhc@localhost wildcard_file_practice]$ ls ./*
./changelog.md  ./data2.csv     ./final_report.txt  ./log_system.txt    ./report2.txt
./combined.txt  ./data3.csv     ./license.txt       ./presentation.ppt  ./report3.txt
./config.conf   ./data_old.csv  ./log_access.txt    ./readme.md         ./spreadsheet.xls
./data1.csv     ./document.pdf  ./log_error.txt     ./report1.txt

./archives:
backup_2024.tar  new_report.txt  old_report.txt

./backup:
data1.csv  data3.csv         license.txt     log_error.txt   new_report.txt  report1.txt  report3.txt
data2.csv  final_report.txt  log_access.txt  log_system.txt  old_report.txt  report2.txt

./data:
2024  file_001.dat  file_002.dat  file_010.dat

./documents:
report1.txt  report2.txt  report3.txt

./images:
image1.jpg  image2.jpg  image3.png

./logs:
log_01  log_03  log_05  log_07  log_09  log_11  log_access.txt  log_system.txt
log_02  log_04  log_06  log_08  log_10  log_12  log_error.txt

./project_A:

./project_B:

./project_C:

./scripts:
script1.sh  script2.sh  test_script.sh

./temp:
changelog.md  data2.csv     document.pdf      log_access.txt  presentation.ppt  report2.txt
config.conf   data3.csv     final_report.txt  log_error.txt   readme.md         report3.txt
data1.csv     data_old.csv  license.txt       log_system.txt  report1.txt       spreadsheet.xls
[yhc@localhost wildcard_file_practice]$ 


```

### 7-2. `d`로 시작하는 디렉터리만 출력
```bash
# [yhc@localhost wildcard_file_practice]$ ls ./d*[!.]*
./data1.csv  ./data2.csv  ./data3.csv  ./data_old.csv  ./document.pdf

./data:
2024  file_001.dat  file_002.dat  file_010.dat

./documents:
report1.txt  report2.txt  report3.txt

```

### 7-3. 모든 하위 디렉터리에 `readme.txt` 파일 생성
```bash
# 명령어를 작성하세요
```
[yhc@localhost wildcard_file_practice]$ touch readme.txt ./*
[yhc@localhost wildcard_file_practice]$ ls 
archives      data          document.pdf      log_access.txt    project_A   report1.txt      temp
backup        data1.csv     documents         log_error.txt     project_B   report2.txt
changelog.md  data2.csv     final_report.txt  logs              project_C   report3.txt
combined.txt  data3.csv     images            log_system.txt    readme.md   scripts
config.conf   data_old.csv  license.txt       presentation.ppt  readme.txt  spreadsheet.xls
[yhc@localhost wildcard_file_practice]$ touch readme.txt ./*
[yhc@localhost wildcard_file_practice]$ ls ./*
./changelog.md  ./data2.csv     ./final_report.txt  ./log_system.txt    ./report1.txt
./combined.txt  ./data3.csv     ./license.txt       ./presentation.ppt  ./report2.txt
./config.conf   ./data_old.csv  ./log_access.txt    ./readme.md         ./report3.txt
./data1.csv     ./document.pdf  ./log_error.txt     ./readme.txt        ./spreadsheet.xls

./archives:
backup_2024.tar  new_report.txt  old_report.txt

./backup:
data1.csv  data3.csv         license.txt     log_error.txt   new_report.txt  report1.txt  report3.txt
data2.csv  final_report.txt  log_access.txt  log_system.txt  old_report.txt  report2.txt

./data:
2024  file_001.dat  file_002.dat  file_010.dat

./documents:
report1.txt  report2.txt  report3.txt

./images:
image1.jpg  image2.jpg  image3.png

./logs:
log_01  log_03  log_05  log_07  log_09  log_11  log_access.txt  log_system.txt
log_02  log_04  log_06  log_08  log_10  log_12  log_error.txt

./project_A:

./project_B:

./project_C:

./scripts:
script1.sh  script2.sh  test_script.sh

./temp:
changelog.md  data2.csv     document.pdf      log_access.txt  presentation.ppt  report2.txt
config.conf   data3.csv     final_report.txt  log_error.txt   readme.md         report3.txt
data1.csv     data_old.csv  license.txt       log_system.txt  report1.txt       spreadsheet.xls

---

## 문제 8: 복잡한 패턴 매칭

### 8-1. 파일명에 숫자가 정확히 1개 들어간 파일 출력
```bash
$ ls -l *[!0-9][0-9][!0-9]*

```

### 8-2. 확장자가 `.txt`, `.doc`, `.log` 중 하나인 파일들의 크기 확인
```bash
ls -l *.txt
```

### 8-3. 파일명이 `test` 또는 `file`로 시작하는 모든 파일 삭제 (주의: 실제로는 실행하지 말고 명령어만 작성)
```bash
# 명령어를 작성하세요
```
rm *.test
---
ls 
## 보너스 문제

### 보너스 1: 모든 로그 파일을 날짜별로 분류하여 `logs` 디렉터리의 하위 폴더로 이동
```bash
# 명령어를 작성하세요
```

### 보너스 2: 파일 크기가 0바이트인 모든 파일 찾기
```bash
# 명령어를 작성하세요
```

### 보너스 3: 확장자별로 파일 개수 세기
```bash
# 명령어를 작성하세요
```

---

## 힌트
- `ls -la`로 파일 목록과 상세 정보 확인
- `echo` 명령어로 와일드카드 패턴 테스트 가능
- `find` 명령어와 와일드카드 조합 활용
- 복잡한 패턴은 단계별로 나누어 생각하기