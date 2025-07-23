# Linux 파일 관리 명령어 와일드카드 실습 문제

## 실습 환경 설정

**먼저 다음 명령어들을 실행하여 실습 환경을 구성하세요:**

\# 실습 디렉터리 생성

mkdir wildcard\_file\_practice

cd wildcard\_file\_practice

\# 테스트 파일들 생성

touch report1.txt report2.txt report3.txt

touch data1.csv data2.csv data3.csv data\_old.csv

touch image1.jpg image2.jpg image3.png photo.gif

touch backup\_2023.tar backup\_2024.tar config.conf

touch log\_error.txt log\_access.txt log\_system.txt

touch temp1.tmp temp2.tmp temp3.tmp

touch file\_001.dat file\_002.dat file\_010.dat

touch script1.sh script2.sh test\_script.sh

touch document.pdf presentation.ppt spreadsheet.xls

touch readme.md changelog.md license.txt

touch old\_report.txt new\_report.txt final\_report.txt

\# 기본 디렉터리들 생성

mkdir archives backup logs images documents scripts

---

## 1\. mkdir 명령어 와일드카드 실습

### 1-1. 연도별 백업 디렉터리 생성

\# 2020년부터 2024년까지 백업 디렉터리를 한 번에 생성하세요

\# 예: backup\_2020, backup\_2021, backup\_2022, backup\_2023, backup\_2024

```
\# 명령어를 작성하세요:

[yhc@localhost wildcard_file_practice]$ mkdir -p ./backup/202{0..4} 
[yhc@localhost wildcard_file_practice]$ ls ./backup/
2020  2021  2022  2023  2024
[yhc@localhost wildcard_file_practice]$ 
```
### 1-2. 월별 로그 디렉터리 생성

\# logs 디렉터리 안에 01월부터 12월까지 디렉터리 생성

\# 예: logs/log\_01, logs/log\_02, ..., logs/log\_12
```
\# 명령어를 작성하세요:
[yhc@localhost wildcard_file_practice]$ mkdir -p logs/log/{01..12} 
[yhc@localhost wildcard_file_practice]$ ls ./logs/log 
01  02  03  04  05  06  07  08  09  10  11  12
[yhc@localhost wildcard_file_practice]$ 
```
### 1-3. 프로젝트별 디렉터리 생성

\# project\_A, project\_B, project\_C 디렉터리를 한 번에 생성하세요
```
\# 명령어를 작성하세요:
[yhc@localhost wildcard_file_practice]$ mkdir -p ./project/{A..C}  
[yhc@localhost wildcard_file_practice]$ ls ./project/
A  B  C
[yhc@localhost wildcard_file_practice]$ 

```
### 1-4. 계층적 디렉터리 생성

\# data/2024/{01,02,03} 구조로 디렉터리를 생성하세요

\# (data 디렉터리 안에 2024 디렉터리, 그 안에 01, 02, 03 디렉터리)
```
\# 명령어를 작성하세요:
[yhc@localhost wildcard_file_practice]$ mkdir -p ./date/2024/{01..03}/ 
[yhc@localhost wildcard_file_practice]$ ls ./date/2024/
01  02  03
[yhc@localhost wildcard_file_practice]$ 
```
---

## 2\. cp 명령어 와일드카드 실습

### 2-1. 확장자별 파일 복사

\# 모든 .txt 파일을 backup 디렉터리로 복사하세요

```
\# 명령어를 작성하세요:
[yhc@localhost wildcard_file_practice]$ cp *.txt ./backup/ 
[yhc@localhost wildcard_file_practice]$ ls ./backup/ 
2020  2022  2024              license.txt     log_error.txt   new_report.txt  report1.txt  report3.txt
2021  2023  final_report.txt  log_access.txt  log_system.txt  old_report.txt  report2.txt
[yhc@localhost wildcard_file_practice]$ 
```
### 2-2. 특정 패턴 파일 복사
```
\# "report"로 시작하는 모든 파일을 documents 디렉터리로 복사하세요
[yhc@localhost wildcard_file_practice]$ cp report* ./documents/
[yhc@localhost wildcard_file_practice]$ ls ./documents/ 
report1.txt  report2.txt  report3.txt
[yhc@localhost wildcard_file_practice]$ 
```
### 2-3. 숫자가 포함된 파일 복사

\# 파일명에 숫자가 포함된 모든 이미지 파일(.jpg, .png)을 images 디렉터리로 복사하세요

\# 명령어를 작성하세요:

### 2-4. 특정 범위의 파일 복사

\# data1.csv, data2.csv, data3.csv 파일만 backup 디렉터리로 복사하세요

\# 명령어를 작성하세요:

### 2-5. 복합 조건 파일 복사

\# "log\_"로 시작하는 .txt 파일들을 logs 디렉터리로 복사하세요

\# 명령어를 작성하세요:

---

## 3\. mv 명령어 와일드카드 실습

### 3-1. 임시 파일 이동

\# 모든 .tmp 파일을 temp 디렉터리로 이동하세요 (mkdir temp 먼저 실행)

\# 명령어를 작성하세요:

### 3-2. 백업 파일 정리

\# "backup\_"로 시작하는 모든 파일을 archives 디렉터리로 이동하세요

\# 명령어를 작성하세요:

### 3-3. 스크립트 파일 정리

\# 모든 .sh 파일을 scripts 디렉터리로 이동하세요

\# 명령어를 작성하세요:

### 3-4. 특정 패턴 파일 이동

\# "file\_"로 시작하고 3자리 숫자가 포함된 .dat 파일들을 data 디렉터리로 이동하세요

\# (data 디렉터리가 없다면 먼저 생성)

\# 명령어를 작성하세요:

### 3-5. 조건부 파일 이동

\# "old\_" 또는 "new\_"로 시작하는 모든 파일을 archives 디렉터리로 이동하세요

\# 명령어를 작성하세요:

---

## 4\. rm 명령어 와일드카드 실습

### 4-1. 임시 파일 삭제

\# 모든 .tmp 파일을 삭제하세요 (주의: 실제로는 신중히 실행)

\# 명령어를 작성하세요:

### 4-2. 특정 패턴 파일 삭제

\# "temp"로 시작하는 모든 파일을 삭제하세요

\# 명령어를 작성하세요:

### 4-3. 백업 파일 정리

\# 2023년 백업 파일만 삭제하세요 (backup\_2023.tar)

\# 명령어를 작성하세요:

### 4-4. 조건부 파일 삭제

\# 확장자가 3글자가 아닌 파일들을 삭제하세요

\# 힌트: 확장자가 .jpg, .png, .gif, .txt, .csv, .tar, .dat, .pdf, .ppt, .xls가 아닌 파일

\# 명령어를 작성하세요:

---

## 5\. 복합 명령어 실습

### 5-1. 파일 정리 시스템

\# 1단계: 모든 이미지 파일(.jpg, .png, .gif)을 images 디렉터리로 이동

\# 2단계: 모든 문서 파일(.pdf, .ppt, .xls, .md)을 documents 디렉터리로 이동

\# 3단계: 모든 데이터 파일(.csv, .dat)을 data 디렉터리로 이동 (없으면 생성)

\# 명령어들을 작성하세요:

### 5-2. 백업 및 정리 작업

\# 1단계: 모든 .txt 파일을 backup/txt\_files 디렉터리로 복사 (디렉터리 생성 필요)

\# 2단계: 모든 설정 파일(.conf)을 backup/config 디렉터리로 복사

\# 3단계: 원본 설정 파일들을 삭제

\# 명령어들을 작성하세요:

### 5-3. 날짜별 로그 정리

\# 1단계: logs 디렉터리에 error, access, system 하위 디렉터리 생성

\# 2단계: log\_error.txt를 logs/error/로 이동

\# 3단계: log\_access.txt를 logs/access/로 이동

\# 4단계: log\_system.txt를 logs/system/로 이동

\# 명령어들을 작성하세요:

---

## 6\. 고급 와일드카드 실습

### 6-1. 복잡한 패턴 매칭

\# "report" 또는 "data"로 시작하고 숫자가 포함된 모든 파일을 찾아서 processed 디렉터리로 복사하세요

\# 명령어를 작성하세요:

### 6-2. 제외 패턴 활용

\# 모든 파일 중에서 "final\_"로 시작하지 않는 .txt 파일들을 draft 디렉터리로 이동하세요

\# 명령어를 작성하세요:

### 6-3. 범위 지정 패턴

\# 파일명에 001부터 009까지의 숫자가 포함된 파일들을 single\_digit 디렉터리로 복사하세요

\# 명령어를 작성하세요:

---

## 7\. 실전 시나리오 문제

### 7-1. 프로젝트 정리 시나리오

\# 시나리오: 프로젝트 종료 후 파일 정리

\# 1\. 완료된 리포트 파일들(report\*.txt)을 completed 디렉터리로 이동

\# 2\. 작업 중인 파일들(temp\*, \*\_draft)을 ongoing 디렉터리로 이동

\# 3\. 백업 파일들(backup\_\*)을 archive 디렉터리로 이동

\# 4\. 불필요한 임시 파일들(\*.tmp)을 삭제

\# 명령어들을 작성하세요:

### 7-2. 로그 관리 시나리오

\# 시나리오: 서버 로그 정리

\# 1\. 2024년 로그 파일들을 logs/2024 디렉터리로 이동

\# 2\. 에러 로그들을 logs/errors 디렉터리로 복사

\# 3\. 2023년 로그 파일들을 삭제

\# 4\. 시스템 로그들을 logs/system 디렉터리로 이동

\# 명령어들을 작성하세요:

### 7-3. 개발 환경 정리 시나리오

\# 시나리오: 개발 프로젝트 구조 정리

\# 1\. 모든 스크립트 파일(\*.sh)을 scripts 디렉터리로 이동

\# 2\. 설정 파일들(\*.conf, \*.config)을 config 디렉터리로 복사

\# 3\. 문서 파일들(\*.md, \*.txt)을 docs 디렉터리로 이동

\# 4\. 데이터 파일들(\*.csv, \*.dat)을 data 디렉터리로 이동

\# 명령어들을 작성하세요:

---

\# 존재하지 않으면 디렉터리를 생성한 후 이동하는 명령어를 작성하세요

\# 명령어를 작성하세요:

---

## 힌트

- `{}` 중괄호 확장 활용: `mkdir {dir1,dir2,dir3}`  
- `[]` 문자 범위 활용: `[1-3]`, `[a-z]`  
- `*` 와일드카드 활용: `file*`, `*.txt`  
- `?` 단일 문자 활용: `file?.txt`  
- 복합 패턴 활용: `*[0-9]*`, `file[1-3].txt`  
- 디렉터리 생성 시 `-p` 옵션 활용: `mkdir -p path/to/directory`


>>>>>>> 51109fe26808ea1caad95e6470a110f682c2fb5e