# **Shell Script 실무 연습문제 \- 네트워크 프로세스 관리**

## **사용 가능한 문법 제한사항**

* **허용**: if문, 변수, for문, 배열, 기본 shell 명령어  
* **금지**: awk, sed  
* **핵심 명령어**: ss, lsof, curl, telnet, kill, ps

---

## **연습문제 1: 포트 사용 여부 확인 스크립트**

**문제**: 여러 포트 번호를 인수로 받아서 각 포트가 사용 중인지 확인하는 스크립트를 작성하세요.

**요구사항**:

* 스크립트 실행: `./check_ports.sh 80 443 22 3000 8080`  
* `ss` 명령  
* 어 사용하여 포트 상태 확인  
* 사용 중인 포트는 ✓, 사용하지 않는 포트는 ✗ 표시

**실행 예제**:

$ ./check\_ports.sh 80 443 22 3000 8080

포트 사용 상태 확인 중...

포트 80: ✓ 사용 중

포트 443: ✗ 사용 안함

포트 22: ✓ 사용 중

포트 3000: ✗ 사용 안함

포트 8080: ✓ 사용 중

‘

총 5개 포트 중 3개가 사용 중입니다.
```
[yhc@localhost practice]$ nohup python3 -m http.server 8800&
[1] 3141
nohup: ignoring input and appending output to 'nohup.out'
[yhc@localhost practice]$ nohup python3 -m http.server 8880&
[2] 3159
nohup: ignoring input and appending output to 'nohup.out'
[yhc@localhost practice]$ nohup python3 -m http.server 8888&
[3] 3176
nohup: ignoring input and appending output to 'nohup.out'
[yhc@localhost practice]$ nohup python3 -m http.server 9999&
[4] 3181
nohup: ignoring input and appending output to 'nohup.out'
[yhc@localhost practice]$ nohup python3 -m http.server 9990&
[5] 3187
nohup: ignoring input and appending output to 'nohup.out'

---
```
```
yhc@localhost practice]$ ss -tulnp 
Netid State  Recv-Q Send-Q  Local Address:Port    Peer Address:Port Process                            
udp   UNCONN 0      0             0.0.0.0:5353         0.0.0.0:*                                       
udp   UNCONN 0      0           127.0.0.1:323          0.0.0.0:*                                       
udp   UNCONN 0      0             0.0.0.0:50634        0.0.0.0:*                                       
udp   UNCONN 0      0                [::]:40695           [::]:*                                       
udp   UNCONN 0      0                [::]:5353            [::]:*                                       
udp   UNCONN 0      0               [::1]:323             [::]:*                                       
tcp   LISTEN 0      128           0.0.0.0:22           0.0.0.0:*                                       
tcp   LISTEN 0      4096        127.0.0.1:631          0.0.0.0:*                                       
tcp   LISTEN 0      5             0.0.0.0:8800         0.0.0.0:*     users:(("python3",pid=3141,fd=3)) 
tcp   LISTEN 0      5             0.0.0.0:8880         0.0.0.0:*     users:(("python3",pid=3159,fd=3)) 
tcp   LISTEN 0      5             0.0.0.0:8888         0.0.0.0:*     users:(("python3",pid=3176,fd=3)) 
tcp   LISTEN 0      5             0.0.0.0:9990         0.0.0.0:*     users:(("python3",pid=3187,fd=3)) 
tcp   LISTEN 0      5             0.0.0.0:9999         0.0.0.0:*     users:(("python3",pid=3181,fd=3)) 
tcp   LISTEN 0      128              [::]:22              [::]:*                                       
tcp   LISTEN 0      4096            [::1]:631             [::]:*                                       
[yhc@localhost practice]$ 
```
```
[yhc@localhost practice]$ read -p "ports" a b c d e  
ports8800 8880 8888 9990 9999 
[yhc@localhost practice]$ ss -tulnp | grep "$a" 
tcp   LISTEN 0      5            0.0.0.0:8800       0.0.0.0:*    users:(("python3",pid=3141,fd=3))
```
```
shell try1 
read -p "./check_ports.sh" $a $b $c $d $e
if[ss -tulnp|grep"$a"]
then;
 echo port"$a":using
else
        echo port"$a":unused 
fi
```
```
read -p "./check_ports.sh" a b c d e 
 touch result.txt

 cat result.txt > result_1.txt 
 ss -tulnp | grep "0.0.0.0:$a" > result.txt 
if  diff result.txt result_1.txt 
then
 echo port"$a":unused

else
       	echo port"$a":using 
fi 
  
cat result.txt > result_1.txt
 ss -tulnp | grep "0.0.0.0:$b" > result.txt
if  diff result.txt result_1.txt 
then
 echo port"$b":unused

else
        echo port"$b":using 
fi 

cat result.txt > result_1.txt
 ss -tulnp | grep "0.0.0.0:$c" > result.txt
if  diff result.txt result_1.txt 
then
 echo port"$c":unused

else
        echo port"$c":using 
fi 

cat result.txt > result_1.txt
 ss -tulnp | grep "0.0.0.0:$d" > result.txt
if  diff result.txt result_1.txt 
then
 echo port"$d":unused

else
        echo port"$d":using
fi

cat result.txt > result_1.txt
 ss -tulnp | grep "0.0.0.0:$e" > result.txt
if  diff result.txt result_1.txt 
then
 echo port"$e":unused

else
        echo port"$e":using 
fi 


```
```
문제점 : 포트 숫자가 아닌 것 까지 검색이 된다
```
## **연습문제 2: 특정 포트 프로세스 종료 스크립트**

**문제**: 특정 포트를 사용하는 프로세스를 찾아서 종료하는 스크립트를 작성하세요.

**요구사항**:

* 스크립트 실행: `./kill_port.sh 8080`  
* `lsof -i :포트번호` 사용하여 프로세스 찾기  
* 프로세스가 있으면 PID 출력 후 종료  
* 프로세스가 없으면 해당 메시지 출력

**실행 예제**:

$ ./kill\_port.sh 8080

포트 8080 사용 프로세스 검색 중...

  PID: 12345, 프로세스명: node

  PID: 12346, 프로세스명: nginx

프로세스 종료 중...

  PID 12345 종료 완료

  PID 12346 종료 완료

포트 8080이 해제되었습니다.

**프로세스가 없는 경우**:

$ ./kill\_port.sh 9999

포트 9999 사용 프로세스 검색 중...

포트 9999를 사용하는 프로세스가 없습니다.

---

## **연습문제 3: 웹 서비스 상태 모니터링 스크립트**

**문제**: 여러 웹 서비스의 상태를 확인하는 모니터링 스크립트를 작성하세요.

**요구사항**:

* 설정 파일 형태로 서버 정보 관리: `IP:포트` 형식  
* `curl` 명령어로 HTTP 응답 확인 (타임아웃 5초)  
* 연결 가능하면 ✓, 불가능하면 ✗ 표시

**실행 예제**:

$ ./monitor\_services.sh

웹 서비스 상태 모니터링

\========================

서비스 상태 확인 중...

192.168.1.100:80   ✓ 정상 (응답시간: 0.234초)

192.168.1.100:443  ✗ 연결 실패

localhost:3000     ✓ 정상 (응답시간: 0.012초)

192.168.1.200:8080 ✗ 타임아웃

localhost:22       ✗ HTTP 서비스 아님

\========================

총 5개 서비스 중 2개 정상

모니터링 완료: 2024-07-28 14:30:15

---

## **연습문제 4: 네트워크 연결 테스트 스크립트**

**문제**: telnet을 이용하여 원격 서버의 포트 연결 상태를 확인하는 스크립트를 작성하세요.

**요구사항**:

* 스크립트 실행: `./test_connection.sh google.com:80 localhost:22 192.168.1.1:443`  
* `telnet` 명령어 사용 (타임아웃 3초)  
* 연결 성공/실패 상태 표시

**실행 예제**:

$ ./test\_connection.sh google.com:80 localhost:22 192.168.1.1:443

네트워크 연결 테스트 시작

\==========================

google.com:80 연결 테스트 중...

  ✓ 연결 성공

localhost:22 연결 테스트 중...

  ✓ 연결 성공

192.168.1.1:443 연결 테스트 중...

  ✗ 연결 실패 (타임아웃)

\==========================

테스트 완료: 3개 중 2개 성공

---

## **연습문제 5: 프로세스별 네트워크 포트 사용 현황 스크립트**

**문제**: 현재 네트워크 포트를 사용하는 프로세스들의 정보를 정리하여 출력하는 스크립트를 작성하세요.

**요구사항**:

* `ss` 명령어로 LISTEN 상태 포트 확인  
* `lsof` 명령어로 프로세스 정보 확인  
* 포트 번호별로 정렬하여 출력

**실행 예제**:

$ ./port\_usage.sh

네트워크 포트 사용 현황

\======================

LISTEN 상태 포트 분석 중...

포트 22 (SSH)

  프로세스: sshd (PID: 1234\)

  주소: 0.0.0.0:22

포트 80 (HTTP)

  프로세스: nginx (PID: 5678\)

  주소: 0.0.0.0:80

포트 3306 (MySQL)

  프로세스: mysqld (PID: 9012\)

  주소: 127.0.0.1:3306

포트 8080 (사용자 정의)

  프로세스: java (PID: 3456\)

  주소: 0.0.0.0:8080

\======================

총 4개 포트가 LISTEN 상태입니다.

---

## **연습문제 6: 대량 포트 킬러 스크립트**

**문제**: 포트 범위를 지정하여 해당 범위의 모든 사용 중인 포트를 찾아 프로세스를 종료하는 스크립트를 작성하세요.

**요구사항**:

* 스크립트 실행: `./kill_port_range.sh 3000 3010`  
* 지정된 범위의 포트 중 사용 중인 것만 확인  
* 사용자에게 확인 후 프로세스 종료

**실행 예제**:

$ ./kill\_port\_range.sh 3000 3010

포트 범위 3000-3010 검색 중...

사용 중인 포트 발견:

  포트 3000: node (PID: 12345\)

  포트 3001: node (PID: 12346\)

  포트 3005: python (PID: 12347\)

위 3개 프로세스를 종료하시겠습니까? (y/N): y

프로세스 종료 중...

  포트 3000 (PID: 12345\) 종료 완료

  포트 3001 (PID: 12346\) 종료 완료

  포트 3005 (PID: 12347\) 종료 완료

모든 프로세스가 종료되었습니다.

---

## **연습문제 7: 서비스 자동 재시작 스크립트**

**문제**: 특정 포트의 서비스가 다운되었을 때 자동으로 재시작하는 스크립트를 작성하세요.

**요구사항**:

* 설정: 포트 번호, 재시작 명령어  
* `curl` 또는 `telnet`으로 서비스 상태 확인  
* 다운 시 기존 프로세스 정리 후 재시작

**실행 예제**:

$ ./auto\_restart.sh

서비스 자동 재시작 모니터

\========================

설정된 서비스들:

  \- 포트 3000: npm start

  \- 포트 8080: java \-jar app.jar

  \- 포트 5000: python app.py

모니터링 시작...

\[14:30:15\] 포트 3000 상태 확인... ✓ 정상

\[14:30:16\] 포트 8080 상태 확인... ✗ 다운됨

\[14:30:16\] 포트 8080 서비스 재시작 중...

\[14:30:16\] 기존 프로세스 정리 완료

\[14:30:17\] 새 프로세스 시작: java \-jar app.jar

\[14:30:20\] 포트 8080 재시작 완료 ✓

\[14:30:21\] 포트 5000 상태 확인... ✓ 정상

다음 확인까지 30초 대기 중...

---

## **연습문제 8: 포트 스캐너 스크립트**

**문제**: 특정 IP 주소의 포트 범위를 스캔하여 열린 포트를 찾는 스크립트를 작성하세요.

**요구사항**:

* 스크립트 실행: `./port_scan.sh 192.168.1.100 20 30`  
* `telnet` 명령어 사용하여 포트 연결 테스트  
* 타임아웃 2초로 설정  
* 열린 포트만 출력

**실행 예제**:

$ ./port\_scan.sh 192.168.1.100 20 30

192.168.1.100 포트 스캔 (범위: 20-30)

\=====================================

스캔 진행 중... \[\#\#\#\#\#\#\#\#\#\#\#\] 100%

열린 포트 발견:

  포트 22: SSH (OpenSSH)

  포트 80: HTTP

  포트 443: HTTPS

\=====================================

총 11개 포트 중 3개가 열려있습니다.

스캔 완료 시간: 22초

---

## **추가 도전 과제**

### **도전과제 1: 네트워크 트래픽 모니터링**

* `ss` 명령어로 연결 상태별 통계 출력  
* TCP/UDP 연결 수 집계

### **도전과제 2: 포트 사용 히스토리**

* 주기적으로 포트 사용 현황을 로그 파일에 기록  
* 시간대별 포트 사용 패턴 분석

### **도전과제 3: 멀티 서버 상태 확인**

* 여러 서버의 동일 포트 상태를 동시에 확인  
* 병렬 처리로 성능 향상

---

## **참고사항**

**유용한 명령어 조합**:

\# 포트 사용 확인

ss \-tlnp | grep :포트번호

\# 프로세스 정보 확인

lsof \-i :포트번호

\# 연결 테스트

curl \-I \--connect-timeout 5 http://IP:포트

timeout 3 telnet IP 포트

\# 프로세스 강제 종료

kill \-9 PID

