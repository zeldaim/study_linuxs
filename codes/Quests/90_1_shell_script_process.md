## **✅ 문제 : 간단한 서버 관리 스크립트 작성**

### **🔧 요구사항**

* `start`: 포트 8000에서 `http.server`를 백그라운드로 실행 (`nohup`, 로그는 `server.log`)

* `stop`: 실행 중인 프로세스를 찾아 종료

* `status`: 프로세스가 실행 중인지 확인하여 출력

* `restart`: 중지 후 다시 실행

  ### **🎯 실행 예시**

  $ ./webserver.sh start  
  서버가 백그라운드에서 시작되었습니다.  
    
  $ ./webserver.sh status  
  서버 실행 중입니다. PID: 13579  
    
  $ ./webserver.sh stop  
  서버가 종료되었습니다.  
    
  $ ./[webserver.sh](http://webserver.sh) tail\_log  
  … log message 확인


문제 모두 조건에 따라:

* `if [ "$1" == "start" ]` 식으로 흐름 제어

* 변수 `PORT`, `PID`, `LOGFILE` 등을 정의해 구성 가능


```
script 
read -p "./webserver.sh=" input


if [ "$input" = "start" ]; then
    nohup python3 -m http.server 8000 --bind 0.0.0.0 > server.log 2&>1 &
    echo "Server started"
fi

if [ "$input" = "status" ]; then
     a=$(ps aux | grep 'python3 -m http.server' | tr -s ' ' |cut -d ' ' -f2)
echo "acting PDI : $a"  
fi

if [ "$input" = "stop" ]; then
    kill -9 "python3 -m http.server"
    echo "Server stopped"
fi
```