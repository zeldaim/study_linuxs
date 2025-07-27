# **Network Shell Script 실습 문제**

## **문제 환경 설정**

실습을 위해 다음 파일들을 생성하세요:

\# 1\. 네트워크 로그 파일 생성

cat \> network.log \<\< 'EOF'

2024-01-15 10:30:25 192.168.1.100 CONNECT success

2024-01-15 10:30:30 192.168.1.101 CONNECT failed

2024-01-15 10:31:15 192.168.1.102 CONNECT success

2024-01-15 10:31:20 192.168.1.100 DISCONNECT success

2024-01-15 10:32:10 192.168.1.103 CONNECT success

2024-01-15 10:32:15 192.168.1.101 CONNECT success

2024-01-15 10:33:25 192.168.1.104 CONNECT failed

2024-01-15 10:33:30 192.168.1.102 DISCONNECT success

EOF

\# 3\. 접속 통계 파일 생성

cat \> connections.txt \<\< 'EOF'

192.168.1.100 5

192.168.1.101 12

192.168.1.102 8

192.168.1.103 3

192.168.1.104 15

192.168.1.105 7

EOF

---

## **문제 1: 네트워크 연결 상태 분석기**

**요구사항:**

* `network.log` 파일을 분석하여 연결 성공/실패 통계를 출력하는 스크립트 작성  
* 전체 연결 시도 수, 성공 수, 실패 수를 계산  
* 성공률을 백분율로 표시 (소수점 제거)

**출력 형태:**

\=== 네트워크 연결 분석 결과 \===

전체 연결 시도: X건

성공: Y건

실패: Z건

성공률: W%

**제한사항:**

* if문과 변수만 사용  
* grep, wc, cut 명령어 활용  
* 파일명은 스크립트 실행 시 첫 번째 인자로 받기

---
```step 1 
[yhc@localhost ~]$ wc -l network.log 
17 network.log
[yhc@localhost ~]$ grep success network.log >>newnetwork.log | grep failed network.log >>newnetwork.log 
[yhc@localhost ~]$ wc -l newnetwork.log 
8 newnetwork.log
## wc -l을 이용해 전체 시도수 카운터, 공백 카운터 오류 grep으로 해결
```
```
[yhc@localhost ~]$ grep -c success newnetwork.log 
6
```
`shell script`

```
read -p "logfile=" a
grep success $a >> newlog.log | grep failed $a >> newlog.log
y=$(grep -c success newlog.log)
z=$(grep -c failed newlog.log)
x=$(wc -c newlog.log)
ratio =$(echo scale=0;$y/$x|bc)
echo result | echo try = "$x" | echo failed = "$z" | echo success = "$y"|echo suc_ratio="$ratio" 

```
`결과`
```
[yhc@localhost ~]$ vim log.sh 
[yhc@localhost ~]$ source log.sh
logfile=network.log 
bash: 26/1808: No such file or directory
bash: ratio: command not found...
suc_ratio=
```

## **문제 2: IP 주소별 접속 빈도 상위 리스트**

**요구사항:**

* `network.log`에서 IP 주소별 접속 횟수를 계산  
* 접속 횟수 기준으로 내림차순 정렬하여 상위 3개만 출력  
* 각 IP의 첫 접속 시간도 함께 표시

**출력 형태:**

\=== 접속 빈도 TOP 3 \===

1위: 192.168.1.XXX (X회) \- 첫 접속: 10:XX:XX

2위: 192.168.1.XXX (X회) \- 첫 접속: 10:XX:XX  

3위: 192.168.1.XXX (X회) \- 첫 접속: 10:XX:XX

**제한사항:**

* if문과 변수만 사용  
* cut, sort, uniq, grep 명령어 활용  
* head나 tail로 결과 제한

---

```
[yhc@localhost ~]$ grep success network.log >>newnetwork.log | grep failed network.log >>newnetwork.log 
```

```
[yhc@localhost ~]$ cut -d " " -f3 newnetwork.log 
192.168.1.100
192.168.1.102
192.168.1.100
192.168.1.103
192.168.1.101
192.168.1.102
192.168.1.101
192.168.1.104

```
```
[yhc@localhost ~]$ cut -d " " -f3 newnetwork.log | sort | uniq -c 
      2 192.168.1.100
      2 192.168.1.101
      2 192.168.1.102
      1 192.168.1.103
      1 192.168.1.104
```
```
# 최상위 세개 접속 ip찾아냄 #
[yhc@localhost ~]$ cut -d " " -f3 newnetwork.log | sort | uniq -c | head -n 3 
      2 192.168.1.100
      2 192.168.1.101
      2 192.168.1.102
```

``` 
#검색할 대상 변수로 지정
[yhc@localhost ~]$  ip =$( cut -d " " -f3 newnetwork.log | sort | uniq -c | head -n 3 | cut -d " " -f2) 
[yhc@localhost ~]$  num=$( cut -d " " -f3 newnetwork.log | sort | uniq -c | head -n 3 | cut -d " " -f1) 
```
```
#상위 ip 정보 추출 및 시간 정렬#
[yhc@localhost ~]$ grep "$ip" newnetwork.log | sort 
2024-01-15 10:30:25 192.168.1.100 CONNECT success
2024-01-15 10:30:30 192.168.1.101 CONNECT failed
2024-01-15 10:31:15 192.168.1.102 CONNECT success
2024-01-15 10:31:20 192.168.1.100 DISCONNECT success
2024-01-15 10:32:10 192.168.1.103 CONNECT success
2024-01-15 10:32:15 192.168.1.101 CONNECT success
2024-01-15 10:33:25 192.168.1.104 CONNECT failed
2024-01-15 10:33:30 192.168.1.102 DISCONNECT success
```
`오류발생`
`ip변수는 집합이 아니다.`

```
#상위 세가지 아이피 찾음
[yhc@localhost ~]$ cut -d " " -f3 newnetwork.log | sort |uniq -c |head -n 3 | cat -n 
     1	      2 192.168.1.100
     2	      2 192.168.1.101
     3	      2 192.168.1.102
```
필드가 명확하게 구분되지 않아 절대로 ip만 추출못함
```
[yhc@localhost ~]$ cut -d " " -f3 newnetwork.log | sort |uniq -c |head -n 3|sed s/' '/'v'/g  
vvvvvv2v192.168.1.100
vvvvvv2v192.168.1.101
vvvvvv2v192.168.1.102
```
```
[yhc@localhost ~]$ cut -d " " -f3 newnetwork.log | sort |uniq -c |head -n 3|sed s/' '/'v'/g | cut -d "v" -f8  
192.168.1.100
192.168.1.101
192.168.1.102
```
`상위 세개이므로 변수도 세개`
```
[yhc@localhost ~]$ a"$n"=$(cut -d " " -f3 newnetwork.log | sort |uniq -c |head -n 3|sed s/' '/'v'/g | cut -d "v" -f8 | head -n -"$n")
head: invalid number of lines: ‘’
bash: a=: command not found...
```
` a1,a2,a3 변수를 차례로 지정할 때마다 head 1 ,2 ,3 값 추출 시도- 실패`

```
[yhc@localhost ~]$ a=$(cut -d " " -f3 newnetwork.log | sort |uniq -c |head -n 3|sed s/' '/'v'/g | cut -d "v" -f8 | head -n 1)
[yhc@localhost ~]$ b=$(cut -d " " -f3 newnetwork.log | sort |uniq -c |head -n 3|sed s/' '/'v'/g | cut -d "v" -f8 | head -n 2)
[yhc@localhost ~]$ c=$(cut -d " " -f3 newnetwork.log | sort |uniq -c |head -n 3|sed s/' '/'v'/g | cut -d "v" -f8 | head -n 3)
```
```
[yhc@localhost ~]$ grep "$a" newnetwork.log|sort
2024-01-15 10:30:25 192.168.1.100 CONNECT success
2024-01-15 10:31:20 192.168.1.100 DISCONNECT success
[yhc@localhost ~]$ echo tiem $(grep "$a" newnetwork.log|sort|cut -d ' ' -f2|head -n 1) 
tiem 10:30:25
```
`a,b,c, 변수로 따로 지정하고 시간순으로 정렬한 다음 상위 값 추출`
`#192.168.1.100 의 처음 접속시간`


## **문제 3: 서버 상태 점검 스크립트**

**요구사항:**

* `servers.sh` 실행해 각 서버에 대해 ping 테스트 실행  
* 응답 있는 서버와 없는 서버를 구분하여 출력  
* 응답 시간이 100ms 이상인 서버는 "느림" 표시

**입력 형태:**

	**\~$ [servers.sh](http://servers.sh) 123.92.0.12**

**출력 형태:**

\=== 서버 상태 점검 결과 \===

\[정상\] web01 (**123.92.0.12**) \- 응답시간: XXms

OR

\=== 서버 상태 점검 결과 \===

\[오프라인\] db01 (**123.92.0.11**) \- 응답없음

...

**제한사항:**

* if문과 변수만 사용  
* cut, ping 명령어 활용  
* ping은 1회만 실행 (`ping -c 1`)

---
```
#ping 결과값 분석#

[yhc@localhost ~]$ ping -c 1 192.168.72.129
PING 192.168.72.129 (192.168.72.129) 56(84) bytes of data.
64 bytes from 192.168.72.129: icmp_seq=1 ttl=64 time=0.053 ms

--- 192.168.72.129 ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 0.053/0.053/0.053/0.000 ms
[yhc@localhost ~]$ 
```
```
[yhc@localhost ~]$  bash servers.sh | cut -d "/" -f5 | tail -n 1
id=192.168.72.129
0.068
```
```
Shell script 내용
read -p "id=" ip

ping -c 1 "$ip"

```
```
#최종
[yhc@localhost ~]$ vim servers.sh 
[yhc@localhost ~]$ bash servers.sh
id=192.168.72.129
(standard_in) 1: syntax error
good! 
```
```
shell script
read -p "id=" ip
if (( $(echo "$time > 0.01" | bc -l) )); then
    echo "slow off-line $ip" "$time" 
else
    echo "good!" "$time"
fi
```
`오류 발생`
## **문제 4: 네트워크 트래픽 임계값 모니터링**

**요구사항:**

* `connections.txt`에서 접속 수가 10 이상인 IP를 "높음", 5-9는 "보통", 4 이하는 "낮음"으로 분류  
* 각 분류별로 개수 계산하여 출력  
* "높음" 분류의 IP들만 별도로 나열

**출력 형태:**

\=== 트래픽 분석 결과 \===

높음(10회 이상): X개

보통(5-9회): Y개  

낮음(4회 이하): Z개

\[주의 필요 IP 목록\]

192.168.1.XXX (XX회)

192.168.1.XXX (XX회)

**제한사항:**

* if문과 변수만 사용  
* cut, sort 명령어 활용  
* 숫자 비교를 위한 조건문 사용

---

## **문제 5: 현재 시스템 네트워크 정보 수집기**

**요구사항:**

* 현재 시스템의 IP 주소, 기본 게이트웨이, 활성 인터페이스 개수를 출력  
* 인터넷 연결 상태 확인 (8.8.8.8로 ping 테스트)  
* 모든 정보를 보기 좋게 정리하여 출력

**출력 형태:**

\=== 시스템 네트워크 정보 \===

내부 IP: 192.168.1.XXX

기본 게이트웨이: 192.168.1.X

활성 인터페이스: X개

인터넷 연결: 정상/차단

**제한사항:**

* if문과 변수만 사용  
* ip, hostname, ping, grep, wc 명령어 활용  
* 각 정보를 변수에 저장 후 출력

---

## **주의사항**

* 모든 스크립트는 `#!/bin/bash`로 시작  
* 변수 선언 시 공백 없이 작성: `var=value`  
* if문 조건 확인 시 `[ ]` 사용  
* 명령어 결과를 변수에 저장할 때 `$(command)` 사용  
* 파일 존재 여부 확인: `[ -f filename ]`

